package global.sesoc.library.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import global.sesoc.library.dao.GroupDAO;
import global.sesoc.library.vo.CommunityVO;
import global.sesoc.library.vo.GroupBoardVO;
import global.sesoc.library.vo.GroupReplyVO;
import global.sesoc.library.util.PageNavigator;

@Controller
public class GroupController {

	private static final Logger logger = LoggerFactory.getLogger(GroupController.class);

	@Autowired
	GroupDAO dao;

	// 게시판 관련 상수값들
	final int pagePerGroup = 5; // 페이지 이동 그룹 당 표시할 페이지 수
	
	final int GroupPerPage = 5; // 페이지 당 글 수

	@RequestMapping(value = "groupList", method = RequestMethod.GET)
	public String groupList(HttpSession session, Model model
			, @RequestParam(value="page", defaultValue="1") int page) {
		
		int total = dao.getTotalList();
		PageNavigator pageNavigator 
		= new PageNavigator(GroupPerPage, pagePerGroup, page, total);
		
		ArrayList<CommunityVO> list = null;
		list = dao.groupList(pageNavigator.getStartRecord(), pageNavigator.getCountPerPage()); //그룹 리스트
		session.setAttribute("navi3", pageNavigator);
		model.addAttribute("list_group", list);

		return "groupList";
	}

	@ResponseBody
	@RequestMapping(value="checkJoin", method=RequestMethod.GET, produces="application/json;charset=UTF-8")
	public String checkJoin(HttpSession session, int groupnum){
		int result = 0;
		String id = (String)session.getAttribute("loginId");
		if(id == null || id.isEmpty()){
			return result+"";
		}
		HashMap<String, Object> map = new HashMap<>();
		map.put("id", id);
		map.put("groupnum", groupnum);
		result = dao.checkJoin(map);
		logger.debug("???"+result);
		return ""+result; 
	}

	@RequestMapping(value = "makeGroup", method = RequestMethod.GET, produces="application/json;charset=UTF-8")
	public String makeGroupForm(HttpSession session, Model model) {
		return "makeGroupForm";
	}
	
	@RequestMapping(value = "makeGroup", method = RequestMethod.POST)
	public String makeGroup(CommunityVO community, HttpSession session, Model model) {
		logger.debug("{}",community);
		String id = (String) session.getAttribute("loginId");
		String nickname = (String) session.getAttribute("loginNickname");
		int result2 = dao.checkMaster(id);
		if(result2 != 0){
			return "redirect : /";
		}
		community.setId(id);
		community.setNickname(nickname);
		
		dao.inputGu(community);
		int group_num = dao.getGroupnum(community);
		community.setGroupnum(group_num);
		dao.makeGroup(community);
		
		return "redirect:groupList";
	}
	
	@ResponseBody
	@RequestMapping(value="checkMaster", method=RequestMethod.GET, produces="application/json;charset=UTF-8")
	public String checkMaster(HttpSession session){
		int result = 0;
		String id = (String)session.getAttribute("loginId");
		result = dao.checkMaster(id);
		return ""+result;
	}
	
	@ResponseBody
	@RequestMapping(value = "joinGroup", method = RequestMethod.GET, produces="application/json;charset=UTF-8")
	public String joinGroupForm(int groupnum, HttpSession session, Model model) {
		CommunityVO community = new CommunityVO();
		String id = (String) session.getAttribute("loginId");
		String nickname = (String) session.getAttribute("loginNickname");
		String groupname = dao.groupName(groupnum);
		String intro = dao.getGroupintro(groupnum);
		
		community.setGroupintroduce(intro);
		community.setId(id);
		community.setNickname(nickname);
		community.setGroupnum(groupnum);
		community.setGroupname(groupname);
		logger.debug("???{}", community);
		int result = 0;
		result = dao.joinGroup(community);
		
		return ""+result;
	}
	
	
	@RequestMapping(value = "groupBoard", method = RequestMethod.GET)
	public String groupBoard(int groupnum, HttpSession session, Model model) {
		ArrayList<GroupBoardVO> boardList = null;
		boardList = dao.groupBoard(groupnum);
		ArrayList<CommunityVO> member = dao.getMember_group(groupnum);
		model.addAttribute("member", member);
		model.addAttribute("boardList", boardList);
		session.setAttribute("groupnum", groupnum);
		///수정
		ArrayList<GroupReplyVO> replylist = dao.groupReplyList(groupnum);
		model.addAttribute("replylist", replylist);
		return "groupBoard";
	}
	
	
	@RequestMapping(value = "write", method = RequestMethod.POST)
	public String write(GroupBoardVO board, HttpSession session, Model model) {
		String id = (String) session.getAttribute("loginId");
		
		int groupnum = (int) session.getAttribute("groupnum");
		
		String nickname = (String) session.getAttribute("loginNickname");
		
		String groupname = dao.groupName(groupnum);
		board.setId(id);
		board.setGroupnum(groupnum);
		board.setGroupname(groupname);
		board.setNickname(nickname);
		
		int result = 0;
		result = dao.write(board);
		return "redirect:groupBoard?groupnum="+groupnum;
	}
	
	@RequestMapping(value = "groupDelete", method = RequestMethod.GET)
	public String groupDelete(int bnum_group, HttpSession session) {
		String id = (String) session.getAttribute("loginId");
		int groupnum = (int) session.getAttribute("groupnum");
		GroupBoardVO board = new GroupBoardVO();
		board.setId(id);
		board.setBnum_group(bnum_group);
		int result = dao.groupDelete(board);
		return "redirect:groupBoard?groupnum=" + groupnum;
	}
	@ResponseBody
	@RequestMapping(value = "groupUpdate", method = RequestMethod.GET, produces="application/json;charset=UTF-8")
	public GroupBoardVO groupUpdateForm(int bnum_group, Model model) {
		GroupBoardVO result = null;
		result = dao.groupBoardRead(bnum_group);
		return result;
	}
	@ResponseBody
	@RequestMapping(value = "groupUpdate", method = RequestMethod.POST, produces="application/json;charset=UTF-8")
	public void groupUpdate(GroupBoardVO board, HttpSession session) {
		String id = (String) session.getAttribute("loginId");
		board.setId(id);
		int result = dao.groupUpdate(board);
	}
	@RequestMapping(value = "replyWrite", method = RequestMethod.POST)
	public String replyWrite(GroupReplyVO reply, int bnum_group, Model model, HttpSession session) {
		int groupnum = dao.searchGn(bnum_group);
		String id = (String) session.getAttribute("loginId");
		String nickname = (String) session.getAttribute("loginNickname");
		reply.setGroupnum(groupnum);
		reply.setId(id);
		reply.setNickname(nickname);
		
		int result = dao.replyWrite(reply);
		return "redirect:groupBoard?groupnum=" + groupnum;
	}
	@RequestMapping(value = "groupReplyDelete", method = RequestMethod.GET)
	public String groupReplyDelete(int rnum_group, HttpSession session) {
		
		String id = (String) session.getAttribute("loginId");
		int groupnum = (int) session.getAttribute("groupnum");
		
		GroupReplyVO reply = new GroupReplyVO();
		reply.setId(id);
		reply.setRnum_group(rnum_group);
		
		int result = dao.groupReplyDelete(reply);
		return "redirect:groupBoard?groupnum=" + groupnum;
	}
////////////////check

}
package global.sesoc.library.controller;

import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("")
public class FileController {
	private static final Logger logger = LoggerFactory.getLogger(FileController.class);
	
	@GetMapping("/download")
	public void download(HttpServletRequest request, HttpServletResponse response) throws IOException {

	// realPath : 상대경로에서 절대적인 경로로 변경하기 위해 사용하는 숨겨진 진짜 파일 경로. 소비자들에게 노출되어서는 안되며 수시로 변경된다.
    String realPath = request.getSession().getServletContext().getRealPath("/resources/file");
    String path = realPath + "\\" + "moby-dick.epub";
    logger.info(path);
    
    byte[] fileByte = FileUtils.readFileToByteArray(new File(path));

    response.setContentType("application/octet-stream");
    response.setHeader("Content-Disposition", "attachment; fileName=\"" + URLEncoder.encode("moby-dick.epub", "UTF-8")+"\";");
    response.setHeader("Content-Transfer-Encoding", "binary");

    response.getOutputStream().write(fileByte);
    response.getOutputStream().flush();
    response.getOutputStream().close();
    
	}
}

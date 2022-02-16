package global.sesoc.library.dao;

import java.util.Date;

public interface BoardVO {

	public void setIp(String remoteAddr);

	public void setReadcount(int i);

	public void setNum(int num);

	public void setRegDate(Date date);

	public void setReRef(int num);

	public void setReLev(int i);

	public void setReSeq(int i);

	public Object getNum();

}

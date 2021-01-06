package CH07;

public class LoginBean
{
	private String userid;
	private String passwd;
	private String username;
	private String password;
	private String tel;
	private String menu;
	private String date;
	private String time;
	private String message;
	
	final String _userid = "2017038013";
	final String _passwd = "13579";
	
	public boolean checkUser()
	{
		if(userid.equals(_userid) && passwd.contentEquals(_passwd))
		{
			return true;
		}
		else
		{
			return false;
		}
	}
	public String getUserid()
	{
		return userid;
	}
	public void setUserid(String userid)
	{
		this.userid = userid;
	}
	public String getPasswd()
	{
		return passwd;
	}
	public void setPasswd(String passwd)
	{
		this.passwd = passwd;
	}
	
	public static void main(String[] args)
	{
		// TODO Auto-generated method stub
	}
}
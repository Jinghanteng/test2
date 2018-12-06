package session;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class OneSession
 */
@WebServlet("/OneSession")
public class OneSession extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OneSession() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		//HttpSession
				HttpSession session = request.getSession();
				//存数据
				session.setAttribute("username", "张三");
				//替换的功能
//				session.setAttribute("username", "李四");
				//删除Attribute
				session.removeAttribute("name");
				//设置session的过期时间
				session.setMaxInactiveInterval(10);
				String id = session.getId();
				System.out.println("one"+":"+id);
				
				
				//立马让session销毁
				session.invalidate();
		
				/*
				 * getSession()获取session的原理
				 * 
				 * 1.服务器查看本次请求，是否存在一个JESSIONID的cookie数据
				 * 2.如果没有这个数据cookie，服务器创建一个新的session对象，并设置id.
				 * 		还会生成一个JESSIONID的cookie，交给浏览器
				 * 		如果发现请求头有这个cookie，服务器就更据此id查找session，把查找找的session返回
				 */
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

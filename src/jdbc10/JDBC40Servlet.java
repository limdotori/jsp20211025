package jdbc10;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import jdbc10.bean.Employee;
import jdbc10.dao.EmployeeDao;

/**
 * Servlet implementation class JDBC40Servlet
 */
@WebServlet("/jdbc10/s40")
public class JDBC40Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC40Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//0. 사전 작업
		ServletContext application=request.getServletContext();
		DataSource ds = (DataSource) application. getAttribute("dbpool");
		EmployeeDao dao = new EmployeeDao();
		List<Employee> list = null;
		
		//2. REQUEST 분석 가공
		String keyword = request.getParameter("keyword");
		keyword = keyword == null ? "" : keyword;
		
		String year = request.getParameter("year");
		
		//3.business logic
		try (Connection con = ds.getConnection();
				){
			list = dao.getListByNotesKeywordAndYear(con, keyword, year);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		//add attribute  
		request. setAttribute("list", list);
		
		//5.forward
		String path = "/WEB-INF/view/jdbc10/v40.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */ 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

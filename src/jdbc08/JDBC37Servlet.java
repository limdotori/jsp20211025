package jdbc08;

import java.io.IOException;
import java.sql.Connection;
import java.time.LocalDate;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import jdbc08.bean.Bean10;
import jdbc08.bean.Bean11;
import jdbc08.dao.Mytable10Dao;
import jdbc08.dao.Mytable11Dao;

/**
 * Servlet implementation class JDBC37Servlet
 */
@WebServlet("/jdbc08/s37")
public class JDBC37Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC37Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = "/WEB-INF/view/jdbc08/v37.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//0.
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource)application.getAttribute("dbpool");
		Mytable11Dao dao = new Mytable11Dao();
		boolean ok = false;
		
		//2.
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String birth = request.getParameter("birth");
		
		Bean11 bean = new Bean11();
		bean.setName(name);
		bean.setAge(Integer.parseInt(age));
		bean.setBirth(LocalDate.parse(birth));
		
		//3.
		try (Connection con = ds.getConnection()){
			dao.insert(con,bean);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		//4.
		
		//5.
		String location = request.getContextPath()+"/jdbc08/s38";
		response.sendRedirect(location);
		
	}

}

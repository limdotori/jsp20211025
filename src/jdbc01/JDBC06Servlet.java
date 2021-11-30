package jdbc01;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class JDBC06Servlet
 */
@WebServlet("/jdbc01/s06")
public class JDBC06Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC06Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 //0. 사전 작업
		ServletContext application = request.getServletContext();
		DataSource pool = (DataSource)application.getAttribute("dbpool");
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		String LastName="";
		String FirstName="";
		
		//2. request 분석/가공
		
		//3. business logic
		String sql = "SELECT LastName, FirstName FROM Employees WHERE EmployeeID=1";
		try {
			//1. connection 얻기
			con = pool.getConnection();
			//2. statement 얻기
			stmt= con.createStatement();
			//3. resultset 얻기
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				LastName=rs.getString(1);
				FirstName=rs.getNString(2);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rs!=null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(stmt!=null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(con!=null) {
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		
		//4. add attribute
		request.setAttribute("LastName", LastName);
		request.setAttribute("FirstName", FirstName);
		
		//5.forward / redirect
		String path = "/WEB-INF/view/jdbc01/v06.jsp";
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

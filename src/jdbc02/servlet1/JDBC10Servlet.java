package jdbc02.servlet1;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import jdbc02.bean.Employee;
import jdbc02.bean.Supplier;

/**
 * Servlet implementation class JDBC10Servlet
 */
@WebServlet("/jdbc02/s10")
public class JDBC10Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC10Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 0.사전작업
		ServletContext application = request.getServletContext();
		DataSource pool = (DataSource)application.getAttribute("dbpool");
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		List<Supplier> list = new ArrayList<>();
		
		// 2. request 분석
		
		// 3.business login
		String sql = "SELECT SupplierID, "
				+ "SupplierName, "
				+ "ContactName, "
				+ "Address,City, "
				+ "PostalCode, "
				+ "Country, "
				+ "Phone " //phone다음 ,주의~
				+ "FROM "
				+ "Suppliers";
		try {
			con = pool.getConnection();
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				Supplier supplier = new Supplier();
				supplier.setSupplierID(rs.getInt(1));
				supplier.setSupplierName(rs.getString(2));
				supplier.setContactName(rs.getString(3));
				supplier.setAddress(rs.getString(4));
				supplier.setCity(rs.getString(5));
				supplier.setPostalCode(rs.getString(6));
				supplier.setCountry(rs.getString(7));
				supplier.setPhone(rs.getString(8));
				
				list.add(supplier);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
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
		
		// 4. add attribute
		request.setAttribute("suppliers", list);
		
		// 5. forward
		String path = "/WEB-INF/view/jdbc02/v10.jsp";
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

package jdbc03;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.Servlet;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import jdbc02.bean.Customer;

/**
 * Servlet implementation class JDBC13Servlet
 */
@WebServlet("/jdbc03/s13")
public class JDBC13Servlet extends HttpServlet implements Servlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public JDBC13Servlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 0. 사전 작업
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");

		Customer cus = new Customer();

		// 2. request 분석 / 가공
		String id = request.getParameter("customerID");
		// id가 null일 수 있으니까 조심하기

		// 3.business logic
		String sql = "SELECT CustomerID, " + "CustomerName, ContactName, " + "Address, City, PostalCode, Country "
				+ " FROM Customers WHERE CustomerID = ?";
		try (Connection con = ds.getConnection(); 
				PreparedStatement stmt = con.prepareStatement(sql);) {
			stmt.setInt(1, Integer.parseInt(id));
			// 파라미터 1, ?위치, 파라미터2 : 값
			// 우리 식에서는?가 하나기 때문에 1을 넣으면 된다.
			try (ResultSet rs = stmt.executeQuery()) {
				if (rs.next()) {

					int i = 1;

					cus.setCustomerID(rs.getInt(i++));
					cus.setCustomerName(rs.getString(i++));
					cus.setContactName(rs.getString(i++));
					cus.setAddress(rs.getString(i++));
					cus.setCity(rs.getString(i++));
					cus.setPostalCode(rs.getString(i++));
					cus.setCountry(rs.getString(i++));
				}
			}

		} catch (Exception e) {
			// TODO: handle exception
		}

		// 4. add attribute
		request.setAttribute("customer", cus);
		// 5. forward
		String path = "/WEB-INF/view/jdbc03/v12.jsp";
		request.getRequestDispatcher(path).forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

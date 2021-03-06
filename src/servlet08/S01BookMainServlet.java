package servlet08;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import sample03javabean.Bean06;

/**
 * Servlet implementation class S01BookMainServlet
 */
@WebServlet("/servlet08/main")
public class S01BookMainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S01BookMainServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = "/WEB-INF/view/servlet08/main.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//0. 사전 작업
		HttpSession session = request.getSession();
		List<Bean06> list = (List<Bean06>) session.getAttribute("books");
		
		request.setCharacterEncoding("utf-8");
		
		//2. request 분석/가공
		String indexStr = request.getParameter("index");
		String title = request.getParameter("title");
		String writer = request.getParameter("wrtier");
		String priceStr = request.getParameter("price");
		String publisher = request.getParameter("publisher");
		String stockStr	 = request.getParameter("stock");
		
		int index = Integer.parseInt(indexStr);
		int price = Integer.parseInt(priceStr);
		int stock = Integer.parseInt(stockStr);
		
		//3. 비지니스 로직
		Bean06 book = list.get(index);
		book.setTitle(title);
		book.setWriter(writer);
		book.setPrice(price);
		book.setPublisher(publisher);
		book.setStock(stock);
		
		//4. attribute
		
		//5. forward/redirect
		//브라우저는 맨 앞이 contextpath인지 몰라서 넣어줘야 한다.
		String location = request.getContextPath()+"/servlet08/list";
		response.sendRedirect(location);
	}

}

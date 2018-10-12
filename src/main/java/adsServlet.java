import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "adsServlet", urlPatterns = "/ads")
public class adsServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Ads adsDao=DaoFactory.getAdsDao();
        List<Ad> adsList = adsDao.all();
        request.setAttribute("ads", adsList);
        request.getRequestDispatcher("../webapp/ads/index.jsp").forward(request, response);
    }
}
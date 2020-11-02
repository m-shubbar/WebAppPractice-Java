/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ex1;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author mustafa
 */
@WebServlet(name = "HockeyServlet", urlPatterns = {"/HockeyServlet"})
public class HockeyServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            String name = request.getParameter("name");
            String address = request.getParameter("address");
            String team = request.getParameter("team");
            String role = request.getParameter("role");
            String active = request.getParameter("active");
            
            HockeyPlayer player = new HockeyPlayer();
            
            player.setName(name);
            player.setAddress(address);
            player.setTeam(team);
            player.setRole(role);
            player.setActive(active !=null);
            
            HttpSession session = request.getSession();
            ArrayList<HockeyPlayer> players = (ArrayList<HockeyPlayer>) session.getAttribute("abc");
            
            if (players == null) {
                players = new ArrayList<HockeyPlayer>();
            }
            
            players.add(player);
            session.setAttribute("abc", players);
            
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet HockeyServlet</title>");            
            out.println("</head>");
            out.println("<body>");
//            out.println("<p>Name: " + name + "</p><br>");
//            out.println("<p>Address: " + address + "</p><br>");
//            out.println("<p>Team: " + team + "</p><br>");
//            out.println("<p>role: " + role + "</p><br>");
//            out.println("<p>Active? " + active + "</p><br>");


            out.println("<h1>Player</h1>  <form action=\"HockeyServlet\" method=\"get\">\n" +
"		<br>Name <input type=\"text\" name=\"name\">\n" +
"		<br>Address <input type=\"text\" name=\"address\">\n" +
"		<br>Team <input type=\"radio\" name=\"team\" value=\"red\"> Red \n" +
"			<input type=\"radio\" name=\"team\" value=\"blue\"> Blue \n" +
"		<br>Role <select name=\"role\">\n" +
"				<option>Goalie</option>\n" +
"				<option>Forward</option>\n" +
"				<option>Defense</option>\n" +
"			</select>\n" +
"		<br>Active <input type=\"checkbox\" name=\"active\">\n" +
"		<br><input type=\"submit\" value=\"Add\">\n" +
"	</form>");
            
            for(HockeyPlayer p: players){
                out.println("<br><br>"+p.getName());
                out.println("<br>"+p.getAddress());
                out.println("<br>"+p.getTeam());
                out.println("<br>"+p.getRole());
                out.println("<br>"+(p.isActive()?"Active":"Not Active"));
            }
            
            
            
            
            
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

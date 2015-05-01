/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import static model.Event.deleteAct;

/**
 *
 * @author Admin
 */
@WebServlet(name = "confirmActController", urlPatterns = {"/confirmAct.do"})
public class confirmActController extends HttpServlet {

    Connection conn;

    public void init() {
        conn = (Connection) getServletContext().getAttribute("connection");
    }

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
            /* TODO output your page here. You may use following sample code. */
            String button = request.getParameter("button");
            String id = request.getParameter("id");
            if (button.equals("no")) {

                try {
                    PreparedStatement pstmtup;
                    String sql = "DELETE FROM Event_Request WHERE request_ID = ?;";
                    pstmtup = conn.prepareStatement(sql);
                    pstmtup.setString(1, id);
                    pstmtup.executeUpdate();
                } catch (SQLException ex) {
                    Logger.getLogger(confirmActController.class.getName()).log(Level.SEVERE, null, ex);
                }

            } else {
                
                 try {
                    PreparedStatement pstmtup;
                    String sql = "UPDATE Event_Request SET Request_status = ? WHERE request_ID = ?;";
                    pstmtup = conn.prepareStatement(sql);
                    pstmtup.setBoolean(1, true);
                    pstmtup.setString(2, id);
                    pstmtup.executeUpdate();
                } catch (SQLException ex) {
                    Logger.getLogger(confirmActController.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            response.sendRedirect("userAdmin/confirmAct.jsp");
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

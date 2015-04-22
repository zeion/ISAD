/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.CalendarDTO;


/**
 *
 * @author Admin
 */
@WebServlet(name = "DataCalendar", urlPatterns = {"/DataCalendar"})
public class DataCalendar extends HttpServlet {

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

            
            
            
            
            
            
            
            
            
            
//            JSONObject json = new JSONObject();
//            JSONArray addresses = new JSONArray();
//            JSONObject address;
//            
//            
//            try {
//
//                int count = 5;
//
//                for (int i = 0; i < count; i++) {
//                    address = new JSONObject();
//                    address.put("CustomerName", "Decepticons" + i);
//                    address.put("AccountId", "1999" + i);
//                    address.put("SiteId", "1888" + i);
//                    address.put("Number", "7" + i);
//                    address.put("Building", "StarScream Skyscraper" + i);
//                    address.put("Street", "Devestator Avenue" + i);
//                    address.put("City", "Megatron City" + i);
//                    address.put("ZipCode", "ZZ00 XX1" + i);
//                    address.put("Country", "CyberTron" + i);
//                    addresses.add(address);
//                }
//                json.put("Addresses", addresses);

//                int count = 5;
//
//                for (int i = 0; i < count; i++) {
//                    address = new JSONObject();
//                    jsonString +=   "{start:"+"\"2015-04-1"+i+"\""+
////                                    ",id:"+"\""+i+"0\""+
//                                    ",title:"+"\"Event"+i+"\"}";
////                    addresses.add(address);
//                    if(count-1!=i){
//                        jsonString += ",";
//                    }
//                }
//                jsonString += "]";
//                json.put("event", addresses);
//            } catch (Exception jse) {
//
//            }
//            response.setContentType("application/json");
//            response.setCharacterEncoding("UTF-8");
//            response.getWriter().write(addresses.toString());

//            response.getWriter().write(jsonString);
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
        List l = new ArrayList();

        CalendarDTO c = new CalendarDTO();
        c.setId(1);
        c.setStart("2015-04-15");
        c.setEnd("2015-05-29");
        c.setTitle("ติดแล้วววว");

        CalendarDTO d = new CalendarDTO();
        d.setId(2);
        d.setStart("2015-03-26");
        d.setEnd("2015-04-20");
        d.setTitle("โว้ยยยยยยยยยย");

        l.add(c);
        l.add(d);

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        out.write(new Gson().toJson(l));
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

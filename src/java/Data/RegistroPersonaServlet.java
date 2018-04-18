/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Data;

import DB.DataBase;
import Model.Colonia;
import Model.Delegacion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author angel
 */
@WebServlet(name = "RegistroPersonaServlet", urlPatterns = {"/RegistroPersona"})
public class RegistroPersonaServlet extends HttpServlet {


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
        DataBase db = new DataBase();
        ArrayList<Delegacion> delegaciones = new ArrayList<>();
        ArrayList<Colonia> colonias = new ArrayList<>();
        try {
            db.connect();
            ResultSet rs = db.query("SELECT * FROM Cat_Delegaciones;");
            while(rs.next()) {
                delegaciones.add(new Delegacion(rs.getInt("Id_Delegacion"), rs.getString("Nom_Delegacion")));
                System.out.println(rs.getInt("Id_Delegacion") + " " + rs.getString("Nom_Delegacion"));
            }
            System.out.println("///////////////////////////////////");
            rs = null;
            rs = db.query("SELECT * FROM Cat_Colonias;");
            while(rs.next()) {
            colonias.add(new Colonia(rs.getInt("Id_Colonia"), rs.getString("Nom_Colonia"), rs.getInt("Id_Delegacion")));
            System.out.println(rs.getInt("Id_Colonia") + " " + rs.getString("Nom_Colonia"));
        }
            db.closeConnection();
        }catch (SQLException e ) {
            e.printStackTrace();
        }
        request.setAttribute("delegaciones", delegaciones);
        request.setAttribute("colonias", colonias);
        getServletContext().getRequestDispatcher("/JPS/RegistroPersona.jsp").forward(request, response);
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

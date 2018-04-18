/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Data;

import DB.DataBase;
import Model.Mascota;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Angel
 */
@WebServlet(name = "MAdoptaServlet", urlPatterns = {"/MAdopta"})
public class MAdoptaServlet extends HttpServlet {


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
        ArrayList<Mascota> mascotas = new ArrayList<>();
        try {
            db.connect();
            ResultSet rs =db.query("SELECT *\n" +
"	from Mascotas \n" +
"    INNER JOIN cat_razas ON Mascotas.Id_Raza = Cat_Razas.Id_Raza \n" +
"	INNER JOIN Cat_Tipos ON cat_razas.Id_Tipo = Cat_Tipos.Id_Tipo\n" +
"		INNER JOIN Cat_Colonias ON Mascotas.Id_Colonia = Cat_Colonias.Id_Colonia\n" +
"                INNER JOIN Cat_Delegaciones ON  Cat_Colonias.Id_Delegacion =  Cat_Delegaciones.Id_Delegacion;");
            int i =1;
            while(rs.next()) {
                mascotas.add(new Mascota(i, rs.getString("Nom_Mascota"), 
                                        rs.getString("Sexo_Mascota"), 
                                        rs.getString("Nom_Tipo"), 
                                        rs.getString("Nom_Raza"), 
                                        rs.getInt("Edad"), 
                                        rs.getString("Descripcion"), 
                                        rs.getString("Nom_Colonia"), 
                                        rs.getString("Nom_Delegacion"), 
                                        rs.getString("Imagen")));
            }
            for(Mascota m : mascotas) {
                System.out.println(m.getImagen());
            }
            db.closeConnection();
        }catch (SQLException e) {
            e.printStackTrace();
        }
        request.setAttribute("mascotas", mascotas);
        getServletContext().getRequestDispatcher("/JPS/MAdopta.jsp").forward(request, response);
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
        doGet(request, response);
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

    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Data;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;



/**
 *
 * @author angel
 */
@WebServlet(name = "FileUploadServlet", urlPatterns = {"/FileUpload"})
public class FileUploadServlet extends HttpServlet {

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
        
        if(!ServletFileUpload.isMultipartContent(request)) {
            return ;
        }
        
        DiskFileItemFactory factory = new DiskFileItemFactory();
        
        factory.setSizeThreshold(2097152);
        
        factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
        
        String uploadFolder = getServletContext().getRealPath("")
                + File.separator + "data";
        
        ServletFileUpload upload = new ServletFileUpload(factory);
        
        upload.setSizeMax(2097152);
        
        try {
            List files = upload.parseRequest(request);
            Iterator i = files.iterator();
            while(i.hasNext()) {
                FileItem item;
                item = (FileItem) i.next();
                
                if(!item.isFormField()) {
                    String fileName = System.currentTimeMillis()+".jpg";
                    String filePath = uploadFolder + File.separator + fileName;
                    File uploadedFile = new File(filePath);
                    System.out.println(filePath);
                    
                    /*
                    Aqui iria su conexion a la base de datos y el query que inserta los blobs dentro de la tabla
                    Solo hay que cambiar en la base de datos el tipo de dato Blob por un String
                    
                    DB db = new DB();
                    db.conectar()
                    db.consulta("INSERT INTO archivos (nombreArchivo) VALUES('"+ filePath +"');");
                    */
                    
                    
                    item.write(uploadedFile);
                    
                }
            }
            
            getServletContext().getRequestDispatcher("/JPS/exito.jsp").forward(request, response);
            
        } catch (FileUploadException e) {
                throw new ServletException(e);
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }

}

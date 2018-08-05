/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package restfullservice;


import bean.Dairy;
import dao.DairyDao;
import java.util.List;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

/**
 *
 * @author Younus
 */
@Path("/dairys")
public class DairyRs {
    
     @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<Dairy> getAllDairyProduct() {
        List<Dairy> list = new DairyDao().getAllDairyProduct();

        return list;

    }

    @POST
    @Produces(MediaType.APPLICATION_JSON)
    public Dairy SaveDairyProduct(Dairy p) {

        Dairy dairy = new DairyDao().SaveDairyProduct(p);

        return dairy;
    }
    
    
    
    
    @PUT
    @Produces(MediaType.APPLICATION_JSON)
    public Dairy UpdateDairyProduct(Dairy p) {
        System.out.println("Called....");
        Dairy dairy = new DairyDao().UpdateDairyProduct(p);

        return dairy;
    }
    
    @DELETE
    @Path("/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public Dairy deleteDairyProduct(@PathParam("id")int id){
    boolean status=new DairyDao().DeleteDairyProduct(id);
    
    if(status){
    Dairy p=new Dairy();
    return p;
    
    
    }
    
    return null;    
    
    }
    
     @GET
    @Path("/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public Dairy getDairyProduct(@PathParam("id")int id){
   Dairy p=new DairyDao().getDairyProduct(id);
    return p;
   
    
   
    
    }
    
    
    
    
    
}

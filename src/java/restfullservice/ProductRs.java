/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package restfullservice;

import bean.Product;
import dao.ProductDao;
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
@Path("/products")
public class ProductRs {

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<Product> getAllProduct() {
        List<Product> list = new ProductDao().getAllProduct();

        return list;

    }

    @POST
    @Produces(MediaType.APPLICATION_JSON)
    public Product SaveProduct(Product p) {

        Product product = new ProductDao().SaveProduct(p);

        return product;
    }
    
    
    
    
    @PUT
    @Produces(MediaType.APPLICATION_JSON)
    public Product UpdateProduct(Product p) {

        Product product = new ProductDao().UpdateProduct(p);

        return product;
    }
    
    @DELETE
    @Path("/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public Product deleteProduct(@PathParam("id")int id){
    boolean status=new ProductDao().DeleteProduct(id);
    
    if(status){
    Product p=new Product();
    return p;
    
    
    }
    
    return null;    
    
    }
    
     @GET
    @Path("/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public Product getProduct(@PathParam("id")int id){
   Product p=new ProductDao().getProduct(id);
    return p;
   
    
   
    
    }
    
    
    
    
    
    
    
    

}

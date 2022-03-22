
import org.hibernate.Criteria;
import org.hibernate.Session;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author ruby
 */
public class fgdfddfdfggg {

    public static void main(String[] args) {
        Session ses1 = Connection.DB.getSessionFactory().openSession();
        Criteria crXX = ses1.createCriteria(pojo.ProductBrand.class);
        
        System.out.println(" -- - - -    "+crXX.list().size());
    }
}

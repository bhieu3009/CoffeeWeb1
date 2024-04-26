/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Category;
import model.Product;

/**
 *
 * @author MinHee
 */
public class ProductDBContext extends DBContext {

    public List<Product> getProducts() {
        List<Product> prs = new ArrayList<>();
        try {
// id của bảng category =id của bảng product với 1=starter 2=main dish,3desserts 4 drinks
            String sql = "select * from product p join category c on p.category_id = c.id";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setPrice(rs.getDouble("price"));
                p.setImage(rs.getString("image"));
                p.setStockquantity(rs.getInt("stockquantity"));
                p.setDescription(rs.getString("description"));
                Category c = new Category(rs.getInt("category_id"), rs.getString("category_name"));
                p.setCategory(c);
                prs.add(p);

            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return prs;

    }

    public void insert(Product product) {
        try {
            String sql = "INSERT INTO [dbo].[product]\n"
                    + "           ([name]\n"
                    + "           ,[image]\n"
                    + "           ,[price]\n"
                    + "           ,[stockquantity]\n"
                    + "           ,[description]\n"
                    + "           ,[category_id])\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "		   )";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, product.getName()); //truyen tu nguoi dung nhap
            stm.setDouble(3, product.getPrice());
            stm.setString(2, product.getImage());
            stm.setInt(4, product.getStockquantity());
            stm.setString(5, product.getDescription());
            stm.setInt(6, product.getCategory().getId());
            stm.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(ProductDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Product updateProducts(Product p) {
        try {
            String sql = "UPDATE [product]\n"
                    + "   SET [name] =?\n"
                    + "      ,[image] = ?\n"
                    + "      ,[price] = ?\n"
                    + "      ,[stockquantity] = ?\n"
                    + "      ,[description] = ?\n"
                    + "      ,[category_id] = ?\n"
                    + " WHERE id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, p.getName());
            stm.setDouble(3, p.getPrice());
            stm.setString(2, p.getImage());
            stm.setInt(4, p.getStockquantity());
            stm.setString(5, p.getDescription());
            stm.setInt(6, p.getCategory().getId());
            stm.setInt(7, p.getId());
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Product getProductById(int id) {

        try {
            String sql = "select *from product where id=?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setPrice(rs.getDouble("price"));
                p.setImage(rs.getString("image"));
                p.setStockquantity(rs.getInt("stockquantity"));
                p.setDescription(rs.getString("description"));
                Category c = new Category(rs.getInt("category_id"), "");
                p.setCategory(c);
                return p;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void delete(int id) {
        try {
            String sql = "delete from Product where id=?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}

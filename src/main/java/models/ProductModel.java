package models;

import beans.Product;
import org.sql2o.Connection;
import utils.DbUtils;

import java.util.List;
import java.util.Optional;

public class ProductModel {
    public static List<Product> getAll() {
        String sql = "select * from products";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql).executeAndFetch(Product.class);
        }
    }

    public static List<Product> findByCatID(int catID) {
        String sql = "select * from products where CatID = :CatID";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql)
                    .addParameter("CatID", catID)
                    .executeAndFetch(Product.class);
        }
    }

    public static int countByCatID(int catID) {
        String sql = "select count(*) from products where CatID = :CatID";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql)
                    .addParameter("CatID", catID)
                    .executeScalar(Integer.class);
        }
    }

    public static List<Product> findByCatID(int catID, int limit, int offset) {
        String sql = "select * from products where CatID = :CatID limit :limit offset :offset";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql)
                    .addParameter("CatID", catID)
                    .addParameter("limit", limit)
                    .addParameter("offset", offset)
                    .executeAndFetch(Product.class);
        }
    }

    public static List<Product> findByChildCatID(int childCatID){
        String sql = "select * from products where ChildCatID = :ChildCatID";
        try(Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql)
                    .addParameter("ChildCatID", childCatID)
                    .executeAndFetch(Product.class);
        }
    }

    public static List<Product> findByProName(String proName) {
        String sql = "select * from products where match (ProName) AGAINST (':proName' IN NATURAL LANGUAGE MODE)";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql)
                    .addParameter("proName", proName)
                    .executeAndFetch(Product.class);
        }
    }


    public static Optional<Product> findByID(int id) {
        String sql = "select * from products where ProID = :ProID";
        try (Connection con = DbUtils.getConnection()) {
            List<Product> list = con.createQuery(sql)
                    .addParameter("ProID", id)
                    .executeAndFetch(Product.class);

            if (list.size() == 0) {
                return Optional.empty();
            }

            return Optional.ofNullable(list.get(0));
        }
    }
}

package models;

import beans.Category;
import beans.Product;
import beans.Watchlist;
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

    public static List<Product> findByProName(String proName, int limit2, int offset2) {
        String sql = "select * from products where match (ProName) AGAINST (:proName IN NATURAL LANGUAGE MODE) limit :limit offset :offset";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql)
                    .addParameter("proName", proName)
                    .addParameter("limit", limit2)
                    .addParameter("offset", offset2)
                    .executeAndFetch(Product.class);
        }
    }

    public static int countByProName(String proName) {
        String sql = "select count(*) from products where match (ProName) AGAINST (:proName IN NATURAL LANGUAGE MODE)";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql)
                    .addParameter("proName", proName)
                    .executeScalar(Integer.class);
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

    public static int countAll() {
        String sql = "select count(*) from products";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql)
                    .executeScalar(Integer.class);
        }
    }

    public static List<Product> getAll(int limit1, int offset1) {
        String sql = "select * from products limit :limit offset :offset";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql)
                    .addParameter("limit", limit1)
                    .addParameter("offset", offset1)
                    .executeAndFetch(Product.class);
        }
    }
    public static void add(Product c){
        final String sql = "INSERT INTO products (ProName) VALUES (:proname)";
        final String sql1 = "INSERT INTO products (TinyDes) VALUES (:tinydes)";
        try(Connection con = DbUtils.getConnection()) {
            con.createQuery(sql)
                    .addParameter("proname", c.getProName())
                    .executeUpdate();
            con.createQuery(sql1)
                    .addParameter("tinydes", c.getTinyDes())
                    .executeUpdate();
        }
    }

    public static List<Watchlist> findByUserID(int idUser) {
        String sql = "select * from watchlists where userID=:idUser";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql)
                    .addParameter("idUser", idUser)
                    .executeAndFetch(Watchlist.class);
        }
    }

    public static List<Product> findWatchByID(int id) {
        String sql = "select ProName from products where ProID=:proID";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql)
                    .addParameter("proID", id)
                    .executeAndFetch(Product.class);
        }
    }




}

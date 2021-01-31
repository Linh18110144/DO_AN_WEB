package models;

import beans.Category;
import beans.Product;
import beans.User;
import beans.Watchlist;
import org.sql2o.Connection;
import utils.DbUtils;

import java.util.List;

public class WatchlistModel {
    public static void add(Watchlist watchlist) {
        final String sql = "INSERT INTO watchlists (userID, proId, proName) VALUES (:userID,:proID,:proName)";
        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(sql)
                    .addParameter("userID", watchlist.getUserID())
                    .addParameter("proID", watchlist.getProID())
                    .addParameter("proName", watchlist.getProName())
                    .executeUpdate();
        }
    }

    public static void delete(int proIDDel, int userIDDel){
        final String sql = "delete from watchlists where proID = :proIDDel and userID=: userIDDel";
        try(Connection con = DbUtils.getConnection()) {
            con.createQuery(sql)
                    .addParameter("proIDDel", proIDDel)
                    .addParameter("userIDDel", userIDDel)
                    .executeUpdate();
        }
    }

    public static int count(int addUserID, int addProID) {
        String sql = "select count(*) from watchlists where userID=:addUserID and proID=:addProID";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql)
                    .addParameter("addUserID", addUserID)
                    .addParameter("addProID", addProID)
                    .executeScalar(Integer.class);
        }
    }

    public static List<Product> findByID(int proID) {
        String sql = "select * from products where ProID=:ProID";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql)
                    .addParameter("ProID", proID)
                    .executeAndFetch(Product.class);
        }
    }
}

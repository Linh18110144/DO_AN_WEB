package models;

import beans.Category;
import beans.User;
import beans.Watchlist;
import org.sql2o.Connection;
import utils.DbUtils;

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
}

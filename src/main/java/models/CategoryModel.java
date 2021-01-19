package models;

import beans.Category;
import org.sql2o.Connection;
import org.sql2o.Sql2o;
import utils.DbUtils;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

public class CategoryModel {

    public static List<Category> getAll(){
        final String sql = "select * from categories where ParentCatID=0";
        try(Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql).executeAndFetch(Category.class);
        }
    }


    public static List<Category> getByCatID(){
        final String sql = "select * from categories ";
        try(Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql).executeAndFetch(Category.class);
        }
    }

    public static Optional<Category> findbyID(int id){
        final String sql = "select * from categories where CatID = :CatID";
        try(Connection con = DbUtils.getConnection()) {
            List<Category> list = con.createQuery(sql)
                    .addParameter("CatID", id)
                    .executeAndFetch(Category.class);

            if(list.size() == 0){
                return Optional.empty();
            }

            return Optional.ofNullable(list.get(0));
        }
    }

    public static void add(Category c){
        final String sql = "INSERT INTO categories (CatName) VALUES (:catname)";
        try(Connection con = DbUtils.getConnection()) {
            con.createQuery(sql)
                    .addParameter("catname", c.getCatName())
                    .executeUpdate();
        }
    }

    public static void delete(int id){
        final String sql = "delete from categories where CatID = :CatID";
        try(Connection con = DbUtils.getConnection()) {
            con.createQuery(sql)
                    .addParameter("CatID", id)
                    .executeUpdate();
        }
    }

    public static void update(Category c){
        final String sql = "update categories set CatName = :CatName where CatID = :CatID";
        try(Connection con = DbUtils.getConnection()) {
            con.createQuery(sql)
                    .addParameter("CatID", c.getCatID())
                    .addParameter("CatName", c.getCatName())
                    .executeUpdate();
        }
    }
}

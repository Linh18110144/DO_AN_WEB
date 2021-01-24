package models;

import beans.ChildCategory;
import org.sql2o.Connection;
import utils.DbUtils;

import java.util.List;

public class ChildCategoryModel {

        public static List<ChildCategory> getAll(){
            String sql = "select * from childcategories";
            try(Connection con = DbUtils.getConnection()) {
                return con.createQuery(sql).executeAndFetch(ChildCategory.class);
            }
        }
}



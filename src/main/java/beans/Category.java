package beans;

import jdk.nashorn.internal.objects.annotations.Constructor;

public class Category {
    int CatID;
    String CatName;

    public Category() {
    }

    public Category(int catID, String catName) {
        CatID = catID;
        CatName = catName;
    }

    public int getCatID() {
        return CatID;
    }

    public void setCatID(int catID) {
        CatID = catID;
    }

    public String getCatName() {
        return CatName;
    }

    public void setCatName(String catName) {
        CatName = catName;
    }
}

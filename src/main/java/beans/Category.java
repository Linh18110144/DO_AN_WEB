package beans;


public class Category {
    int CatID;
    String CatName;

    public Category(){

    }

    public Category(int catID, String catName) {
        CatID = catID;
        CatName = catName;
    }

    public void setCatID(int catID) {
        CatID = catID;
    }

    public void setCatName(String catName) {
        CatName = catName;
    }

    public int getCatID() {
        return CatID;
    }

    public String getCatName() {
        return CatName;
    }
}

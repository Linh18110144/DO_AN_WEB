package beans;


public class Category {
    int CatID;
    String CatName;
    int ParentCatID;

    public Category() {
    }

    public Category(int catID, String catName, int parentCatID) {
        CatID = catID;
        CatName = catName;
        ParentCatID = parentCatID;
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

    public int getParentCatID() {
        return ParentCatID;
    }
    public void setParentCatID(int parentCatID) {
        ParentCatID = parentCatID;
    }

}

package beans;

public class ChildCategory {
    int ChildCatID;
    String ChildCatName;
    int CatID;

    public ChildCategory(){

    }

    public ChildCategory(int childCatID, String childCatName, int catID) {
        ChildCatID = childCatID;
        ChildCatName = childCatName;
        CatID = catID;
    }

    public int getChildCatID() {
        return ChildCatID;
    }

    public String getChildCatName() {
        return ChildCatName;
    }

    public int getCatID() {
        return CatID;
    }

    public void setChildCatID(int childCatID) {
        ChildCatID = childCatID;
    }

    public void setChildCatName(String childCatName) {
        ChildCatName = childCatName;
    }

    public void setCatID(int catID) {
        CatID = catID;
    }
}

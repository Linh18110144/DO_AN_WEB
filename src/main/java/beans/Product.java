package beans;

public class Product {
    int ProID;
    String ProName, TinyDes, FullDes, Content;
    int Price, Quantity, CatID, ChildCatID, UserID;

    public Product(int i, String s, String name) {
    }

    public Product(int proID, String proName, String tinyDes, String fullDes, String content, int price, int quantity, int catID, int childCatID, int userID) {
        ProID = proID;
        ProName = proName;
        TinyDes = tinyDes;
        FullDes = fullDes;
        Content = content;
        Price = price;
        Quantity = quantity;
        CatID = catID;
        ChildCatID = childCatID;
        UserID = userID;
    }

    public int getProID() {
        return ProID;
    }

    public String getProName() {
        return ProName;
    }

    public String getTinyDes() {
        return TinyDes;
    }

    public String getFullDes() {
        return FullDes;
    }

    public String getContent() {
        return Content;
    }

    public int getPrice() {
        return Price;
    }

    public int getQuantity() {
        return Quantity;
    }

    public int getCatID() {
        return CatID;
    }

    public int getChildCatID() {
        return ChildCatID;
    }

    public int getUserID() {
        return UserID;
    }

    public void setProID(int proID) {
        ProID = proID;
    }

    public void setProName(String proName) {
        ProName = proName;
    }

    public void setTinyDes(String tinyDes) {
        TinyDes = tinyDes;
    }

    public void setFullDes(String fullDes) {
        FullDes = fullDes;
    }

    public void setContent(String content) {
        Content = content;
    }

    public void setPrice(int price) {
        Price = price;
    }

    public void setQuantity(int quantity) {
        Quantity = quantity;
    }

    public void setCatID(int catID) {
        CatID = catID;
    }

    public void setChildCatID(int childCatID) {
        ChildCatID = childCatID;
    }

    public void setUserID(int userID) {
        UserID = userID;
    }
}

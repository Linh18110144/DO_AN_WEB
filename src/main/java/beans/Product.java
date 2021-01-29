package beans;

public class Product {
    int ProID;
    String ProName, TinyDes, FullDes, FullDes1, FullDes2, Content;
    int Price, Quantity, CatID, ChildCatID;

    public Product(int i, String s, String name) {
    }

    public Product(int proID, String proName, String tinyDes, String fullDes, String fullDes1, String fullDes2, String content, int price, int quantity, int catID, int childCatID) {
        ProID = proID;
        ProName = proName;
        TinyDes = tinyDes;
        FullDes = fullDes;
        FullDes1 = fullDes1;
        FullDes2 = fullDes2;
        Content = content;
        Price = price;
        Quantity = quantity;
        CatID = catID;
        ChildCatID = childCatID;
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

    public String getFullDes1() {
        return FullDes1;
    }

    public String getFullDes2() {
        return FullDes2;
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

    public void setFullDes1(String fullDes1) {
        FullDes1 = fullDes1;
    }

    public void setFullDes2(String fullDes2) {
        FullDes2 = fullDes2;
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
}

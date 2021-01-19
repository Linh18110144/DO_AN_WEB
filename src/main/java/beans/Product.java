package beans;

public class Product {
    int ProID;
    String ProName, TinyDes, FullDes;
    int Price, Quantity, CatID, Cat1ID;

    public Product() {
    }

    public void setCat1ID(int cat1ID) {
        Cat1ID = cat1ID;
    }

    public int getCat1ID() {
        return Cat1ID;
    }

    public Product(int proID, String proName, String tinyDes, String fullDes, int price, int quantity, int catID, int cat1ID) {
        ProID = proID;
        ProName = proName;
        TinyDes = tinyDes;
        FullDes = fullDes;
        Price = price;
        Quantity = quantity;
        CatID = catID;
        Cat1ID = cat1ID;
    }

    public int getProID() {
        return ProID;
    }

    public void setProID(int proID) {
        ProID = proID;
    }

    public String getProName() {
        return ProName;
    }

    public void setProName(String proName) {
        ProName = proName;
    }

    public String getTinyDes() {
        return TinyDes;
    }

    public void setTinyDes(String tinyDes) {
        TinyDes = tinyDes;
    }

    public String getFullDes() {
        return FullDes;
    }

    public void setFullDes(String fullDes) {
        FullDes = fullDes;
    }

    public int getPrice() {
        return Price;
    }

    public void setPrice(int price) {
        Price = price;
    }

    public int getQuantity() {
        return Quantity;
    }

    public void setQuantity(int quantity) {
        Quantity = quantity;
    }

    public int getCatID() {
        return CatID;
    }

    public void setCatID(int catID) {
        CatID = catID;
    }
}

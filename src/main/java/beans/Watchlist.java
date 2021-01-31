package beans;

public class Watchlist {
    int userID;
    int proID;
    String proName;

    public Watchlist(){

    }

    public Watchlist(int userID, int proID, String proName) {
        this.userID = userID;
        this.proID = proID;
        this.proName = proName;
    }

    public int getUserID() {
        return userID;
    }

    public int getProID() {
        return proID;
    }

    public String getProName() {
        return proName;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public void setProID(int proID) {
        this.proID = proID;
    }

    public void setProName(String proName) {
        this.proName = proName;
    }
}

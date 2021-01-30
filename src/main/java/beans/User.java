package beans;

import java.util.Date;

public class User {
    int id;
    String username, password, name, email, des;
    Date dob;
    int permission;

    public User() {
    }

    public User(int id, String username, String password, String name, String email, String des, Date dob, int permission) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.name = name;
        this.email = email;
        this.des = des;
        this.dob = dob;
        this.permission = permission;
    }

    public int getId() {
        return id;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getDes() {
        return des;
    }

    public Date getDob() {
        return dob;
    }

    public int getPermission() {
        return permission;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setDes(String des) {
        this.des = des;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public void setPermission(int permission) {
        this.permission = permission;
    }

    @Override
    public String toString() {
        return "User {" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", des='" + des + '\'' +
                ", dob=" + dob +
                ", permission=" + permission +
                '}';
    }
}

package vn.edu.hcmuaf.fit.entity;

import javax.xml.crypto.Data;
import java.util.Date;
public class Orders {
    private Long id;
    private int customerId;
    private String fullname;
    private String address;
    private String phoneNumber;
    private String status;
    private double total;
    private String notes;
    private Date createdDate;

    public Orders(Long id, int customerId, String fullname, String address, String phoneNumber, String status, double total, String notes, Date createdDate) {
        this.id = id;
        this.customerId = customerId;
        this.fullname = fullname;
        this.address = address;
        this.phoneNumber = phoneNumber;
        this.status = status;
        this.total = total;
        this.notes = notes;
        this.createdDate = createdDate;
    }

    public Orders(){

    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

    @Override
    public String toString() {
        return "Orders{" +
                "id=" + id +
                ", fullname='" + fullname + '\'' +
                ", address='" + address + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", status='" + status + '\'' +
                ", total=" + total +
                ", notes='" + notes + '\'' +
                ", createdDate=" + createdDate +
                '}';
    }
}

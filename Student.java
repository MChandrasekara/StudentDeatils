package Hdb;
// Generated Aug 18, 2017 1:38:11 AM by Hibernate Tools 4.3.1



/**
 * Student generated by hbm2java
 */
public class Student  implements java.io.Serializable {


     private Integer id;
     private String name;
     private Integer age;
     private String gender;
     private String address;
     private Integer contact;

    public Student() {
    }

    public Student(String name, Integer age, String gender, String address, Integer contact) {
       this.name = name;
       this.age = age;
       this.gender = gender;
       this.address = address;
       this.contact = contact;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public Integer getAge() {
        return this.age;
    }
    
    public void setAge(Integer age) {
        this.age = age;
    }
    public String getGender() {
        return this.gender;
    }
    
    public void setGender(String gender) {
        this.gender = gender;
    }
    public String getAddress() {
        return this.address;
    }
    
    public void setAddress(String address) {
        this.address = address;
    }
    public Integer getContact() {
        return this.contact;
    }
    
    public void setContact(Integer contact) {
        this.contact = contact;
    }




}



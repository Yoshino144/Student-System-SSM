package com.itheima.po;

public class Customer {
    private Integer id;
    private Integer student_num;
    private String name;
    private String phone_number;
    private String sex;
    private String year;
    private String college_id;
    private String major_id;
    private String class_id;

    @Override
    public String toString() {
        return "Customer [id=" + id + ", student_num=" + student_num + ", name=" + name + ", phone_number="
                + phone_number + ", sex=" + sex + ", year=" + year + ", college_id=" + college_id + ", major_id="
                + major_id + ", class_id=" + class_id + "]";
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getStudent_num() {
        return student_num;
    }

    public void setStudent_num(Integer student_num) {
        this.student_num = student_num;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getCollege_id() {
        return college_id;
    }

    public void setCollege_id(String college_id) {
        this.college_id = college_id;
    }

    public String getMajor_id() {
        return major_id;
    }

    public void setMajor_id(String major_id) {
        this.major_id = major_id;
    }

    public String getClass_id() {
        return class_id;
    }

    public void setClass_id(String class_id) {
        this.class_id = class_id;
    }

}

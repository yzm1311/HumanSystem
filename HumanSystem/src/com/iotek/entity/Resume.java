package com.iotek.entity;


public class Resume {
    private int rid;
    private String name;
    private String sex;
    private Integer age;
    private String job;
    private String experience;
    private String studyeffort;
    private String school;
    private String tel;
    private String email;
    private String content;
    private String specialty;
    private Integer state;
    private Integer reid;
    private Integer interview;
    private User user;
    private Recruit recruit;
    private Post post;

    public Integer getInterview() {
        return interview;
    }

    public void setInterview(Integer interview) {
        this.interview = interview;
    }



    public Post getPost() {
        return post;
    }

    public void setPost(Post post) {
        this.post = post;
    }

    public Integer getReid() {
        return reid;
    }

    public void setReid(Integer reid) {
        this.reid = reid;
    }

    public Recruit getRecruit() {
        return recruit;
    }

    public void setRecruit(Recruit recruit) {
        this.recruit = recruit;
    }

    public Resume() {
    }

    public int getRid() {
        return rid;
    }

    public void setRid(int rid) {
        this.rid = rid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    public String getExperience() {
        return experience;
    }

    public void setExperience(String experience) {
        this.experience = experience;
    }

    public String getStudyeffort() {
        return studyeffort;
    }

    public void setStudyeffort(String studyeffort) {
        this.studyeffort = studyeffort;
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getSpecialty() {
        return specialty;
    }

    public void setSpecialty(String specialty) {
        this.specialty = specialty;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

	@Override
	public String toString() {
		return "Resume [age=" + age + ", content=" + content + ", email="
				+ email + ", experience=" + experience + ", interview="
				+ interview + ", job=" + job + ", name=" + name + ", post="
				+ post + ", recruit=" + recruit + ", reid=" + reid + ", rid="
				+ rid + ", school=" + school + ", sex=" + sex + ", specialty="
				+ specialty + ", state=" + state + ", studyeffort="
				+ studyeffort + ", tel=" + tel + ", user=" + user + "]";
	}
    
    
}

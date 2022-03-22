package pojo;
// Generated Feb 14, 2016 8:17:19 PM by Hibernate Tools 3.2.1.GA



/**
 * SiteChange generated by hbm2java
 */
public class SiteChange  implements java.io.Serializable {


     private Integer idSiteChange;
     private UserReg userReg;
     private String page;
     private String content;
     private String place;

    public SiteChange() {
    }

	
    public SiteChange(UserReg userReg) {
        this.userReg = userReg;
    }
    public SiteChange(UserReg userReg, String page, String content, String place) {
       this.userReg = userReg;
       this.page = page;
       this.content = content;
       this.place = place;
    }
   
    public Integer getIdSiteChange() {
        return this.idSiteChange;
    }
    
    public void setIdSiteChange(Integer idSiteChange) {
        this.idSiteChange = idSiteChange;
    }
    public UserReg getUserReg() {
        return this.userReg;
    }
    
    public void setUserReg(UserReg userReg) {
        this.userReg = userReg;
    }
    public String getPage() {
        return this.page;
    }
    
    public void setPage(String page) {
        this.page = page;
    }
    public String getContent() {
        return this.content;
    }
    
    public void setContent(String content) {
        this.content = content;
    }
    public String getPlace() {
        return this.place;
    }
    
    public void setPlace(String place) {
        this.place = place;
    }




}


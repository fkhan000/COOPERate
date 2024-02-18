package org.serv_layer;


import java.sql.Timestamp;

public class Review implements DataTransferObject{

    private int id;
    private int user_id;
    private int course_id;
    private int prof_id;
    private String review;
    private float course_rating;
    private float prof_rating;
    private int net_likes;
    private String hyperlink;
    private Timestamp timestamp;

    public Review() { super();}
    public Review(int user_id, int course_id, int prof_id,
                  float course_rating, float prof_rating, String review, String hyperlink)
    {
        this.user_id = user_id;
        this.course_id = course_id;
        this.prof_id = prof_id;
        this.course_rating = course_rating;
        this.prof_rating = prof_rating;
        this.review = review;
        this.hyperlink = hyperlink;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return user_id;
    }

    public void setUserId(int id)
    {
        this.user_id = id;
    }
    public int getCourseId() {
        return course_id;
    }

    public void setCourseId(int course_id) {
        this.id = course_id;
    }
    public int getProfId() {
        return prof_id;
    }

    public void setProfId(int prof_id) {
        this.id = prof_id;
    }

    public String getReview(){
        return review;
    }

    public void setReview(String review)
    {
        this.review = review;
    }

    public float getCourseRating(){
        return course_rating;
    }

    public void setCourseRating(float course_rating){
        this.course_rating = course_rating;
    }

    public float getProfRating(){
        return prof_rating;
    }
    public void setProfRating(float profRating){
        this.prof_rating = profRating;
    }

    public int getNetLikes(){
        return net_likes;
    }
    public void setNetLikes(int net_likes){
        this.net_likes = net_likes;
    }

    public String getHyperLink(){
        return hyperlink;
    }
    public void setHyperLink(String hyperlink){this.hyperlink = hyperlink;}

    public Timestamp getTimestamp(){
        return timestamp;
    }

    public void setTimestamp(Timestamp timestamp){
        this.timestamp = timestamp;
    }

    public void updateNetLikes(int react)
    {
        this.net_likes += react;
    }
    @Override
    public String toString() {
        return "Review{" +
                "ReviewID='" + id + '\'' +
                ",userID='" + user_id + '\'' +
                ",courseID= '" + course_id + '\'' +
                ",profID= '" + prof_id + '\'' +
                "net_likes= '" + net_likes + '\'' +
                "\n\ndescription '" + review + '\'' +
                '}';
    }
}
package com.tjcu.bean;

public class UserComment {
    private Integer commentid;
    private String content;
    private Integer uid;
    private Integer relatedcomment;
    private Integer commentrole;
    private String uname;

    @Override
    public String toString() {
        return "UserComment{" +
                "commentid=" + commentid +
                ", content='" + content + '\'' +
                ", uid=" + uid +
                ", relatedcomment=" + relatedcomment +
                ", commentrole=" + commentrole +
                ", uname='" + uname + '\'' +
                '}';
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public Integer getCommentrole() {
        return commentrole;
    }

    public void setCommentrole(Integer commentrole) {
        this.commentrole = commentrole;
    }

    public Integer getCommentid() {
        return commentid;
    }

    public void setCommentid(Integer commentid) {
        this.commentid = commentid;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public Integer getRelatedcomment() {
        return relatedcomment;
    }

    public void setRelatedcomment(Integer relatedcomment) {
        this.relatedcomment = relatedcomment;
    }
}

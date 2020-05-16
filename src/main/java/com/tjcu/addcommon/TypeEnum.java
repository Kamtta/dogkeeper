package com.tjcu.addcommon;

/**
 * @author
 */

public enum TypeEnum {
    RCHL(1,"狗狗日常护理"),
    JBJZ(2,"狗狗疾病救治"),
    RCXL(3,"狗狗日常训练"),
    GGQW(4,"狗狗趣闻"),
    ZJSJ(5,"让我们一起走进狗狗的护理世界！"),
    ZGGG(6,"让我们一同呵护照顾我们的狗狗！"),
    ZHSJ(7,"让我们一起走进狗狗的智慧世界！"),
    KXSJ(8,"让我们一起走进狗狗的开心世界！"),
    DMXX(9,"短毛小型犬的护理方法"),
    DMDX(10,"短毛大型犬的护理方法"),
    CMXX(11,"长毛小型犬的护理方法"),
    CMDX(12,"长毛小型犬的护理方法"),
    FXJZ(13,"腹泻的救治方法"),
    OTJZ(14,"呕吐的救治方法"),
    GMJZ(15,"感冒的救治方法"),
    EMJZ(16,"耳螨的救治方法"),
    PFJZ(17,"皮肤病的救治方法"),
    CWJZ(18,"胃肠炎的救治方法"),
    DDPB(19,"训练狗狗定点排便"),
    BYR(20,"训练狗狗不咬人"),
    GGFP(21,"训练狗狗玩飞盘"),
    GGWS(22,"训练狗狗握手"),
    YQFH(23,"疫情之下，如何给狗狗做好防护？"),
    SHBJ(24,"主人家中失火 忠犬拨电话报警后将失明主人拽出"),
    QLJD(25,"巴西专门开办了一家狗狗情侣酒店"),
    THGG(26,"太土豪了！泰国男子花费一亿元给狗狗做皇冠"),
    RAGG(27,"极度热爱狗狗的国家：阿根廷"),
    ;

    TypeEnum(Integer id, String name) {
        this.id = id;
        this.name = name;
    }
    private Integer id;
    private String  name;

    public static String getDetail(Integer id){
        for (TypeEnum type : TypeEnum.values()) {
            if (type.getId().equals(id)) {
                return type.getName();
            }
        }
        return null;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}

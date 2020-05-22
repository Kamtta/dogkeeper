package com.tjcu.commons;

import java.util.HashMap;
import java.util.Map;

public enum CareTypeEnum {
    EYE("0","眼部护理"),
    TEETH("1","牙齿护理"),
    EAR("2","耳道护理"),
    FINGURE("3","指甲护理"),
    HAIR("4","毛发护理"),
    BATH("5","洗澡方法")
    ;
    String typeId;
    String typeName;

    public static String getTypeNameById(String typeId){
        Map<String,String> map = new HashMap<>();
        for(CareTypeEnum id:CareTypeEnum.values()){
            map.put(id.getTypeId(),id.getTypeName());
        }
        return map.get(typeId);
    }

    CareTypeEnum(String typeId, String typeName) {
        this.typeId = typeId;
        this.typeName = typeName;
    }

    public String getTypeId() {
        return typeId;
    }

    public void setTypeId(String typeId) {
        this.typeId = typeId;
    }

    public java.lang.String getTypeName() {
        return typeName;
    }

    public void setTypeName(java.lang.String typeName) {
        this.typeName = typeName;
    }

}

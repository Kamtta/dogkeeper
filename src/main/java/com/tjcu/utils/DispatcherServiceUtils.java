package com.tjcu.utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.lang.reflect.Method;

public class DispatcherServiceUtils {
    /**
     * servlet任务转发
     * @param uri
     * @param invokeclass
     * @param req
     * @param resp
     */
    public static void serviceDispat(String uri, Object invokeclass, HttpServletRequest req, HttpServletResponse resp){
        String path = null;
        if(uri.lastIndexOf("/") > -1 && uri.indexOf(".") >-1){
            path = uri.substring(uri.lastIndexOf("/")+1,uri.indexOf("."));
        }
        try {
            Method method = invokeclass.getClass().getMethod(path, HttpServletRequest.class, HttpServletResponse.class);
            method.invoke(invokeclass,req,resp);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

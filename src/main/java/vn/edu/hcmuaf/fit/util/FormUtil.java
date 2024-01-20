package vn.edu.hcmuaf.fit.util;

import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.http.HttpServletRequest;

public class FormUtil {
    @SuppressWarnings("unchecked")
    public static <T> T toModel(Class<T> tClass, HttpServletRequest request){
        T object =null;
        try {
            request.setCharacterEncoding("UTF-8");
            object=tClass.newInstance();
            BeanUtils.populate(object,request.getParameterMap());
        } catch (Exception e) {
            System.out.println("eror "+e.getMessage());
        }
        return object;
    }

}

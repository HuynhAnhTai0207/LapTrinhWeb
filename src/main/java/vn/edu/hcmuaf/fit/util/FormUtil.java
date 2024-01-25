package vn.edu.hcmuaf.fit.util;

import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.InvocationTargetException;

public class FormUtil {
    @SuppressWarnings("unchecked")
    public static <T> T toModel(Class<T> tClass, HttpServletRequest request){
        T object =null;
        try {
            request.setCharacterEncoding("UTF-8");
            object=tClass.newInstance(); // khởi tạo object
            BeanUtils.populate(object,request.getParameterMap()); // map những Parameter thành object
        } catch (Exception e) {
            System.out.println("eror "+e.getMessage());
        }
        return object;
    }

}

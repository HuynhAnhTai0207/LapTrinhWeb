package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.dao.PageDao;

import javax.inject.Inject;

public class PageServiceImp {

    @Inject
    PageDao pageDao= new PageDao();
    public int getTotalPage(int maxItemPerPage)
    {
        int count = pageDao.getTotalProduct();
        int maxPage= count/maxItemPerPage;
        if(count%maxItemPerPage!=0){
            maxPage++;
        }
        return maxPage;
    }
}

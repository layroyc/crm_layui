package com.xiexin.service;

import com.xiexin.bean.Visit;
import com.xiexin.dao.VisitDAO;

import java.util.HashMap;
import java.util.Map;

public class VisitService {


    public Map addVisit(Visit visit){
        VisitDAO visitDAO = new VisitDAO();
        int i = visitDAO.addVisit(visit);
        Map codeMap = new HashMap<>();
        if (i == 1) {
            codeMap.put("code",0);
            codeMap.put("msg","ok");
            return codeMap;
        }else{
            codeMap.put("code",400);
            codeMap.put("msg","no");
            return codeMap;
        }
    }
}

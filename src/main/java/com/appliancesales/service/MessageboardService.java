package com.appliancesales.service;
import java.util.List;
import com.appliancesales.entity.Messageboard;
import com.appliancesales.common.Assist;
public interface MessageboardService{
    long getMessageboardRowCount(Assist assist);
    List<Messageboard> selectMessageboard(Assist assist);
    Messageboard selectMessageboardById(Integer id);
    int insertMessageboard(Messageboard value);
    int insertNonEmptyMessageboard(Messageboard value);
    int deleteMessageboardById(Integer id);
    int deleteMessageboard(Assist assist);
    int updateMessageboardById(Messageboard enti);
    int updateMessageboard(Messageboard value, Assist assist);
    int updateNonEmptyMessageboardById(Messageboard enti);
    int updateNonEmptyMessageboard(Messageboard value, Assist assist);
}
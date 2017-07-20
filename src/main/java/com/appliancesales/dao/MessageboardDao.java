package com.appliancesales.dao;
import com.appliancesales.entity.Messageboard;
import java.util.List;
import com.appliancesales.common.Assist;
import org.apache.ibatis.annotations.Param;
public interface MessageboardDao{
    long getMessageboardRowCount(Assist assist);
    List<Messageboard> selectMessageboard(Assist assist);
    Messageboard selectMessageboardById(Integer id);
    int insertMessageboard(Messageboard value);
    int insertNonEmptyMessageboard(Messageboard value);
    int deleteMessageboardById(Integer id);
    int deleteMessageboard(Assist assist);
    int updateMessageboardById(Messageboard enti);
    int updateMessageboard(@Param("enti") Messageboard value, @Param("assist") Assist assist);
    int updateNonEmptyMessageboardById(Messageboard enti);
    int updateNonEmptyMessageboard(@Param("enti") Messageboard value, @Param("assist") Assist assist);
}
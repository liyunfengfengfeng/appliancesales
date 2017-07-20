package com.appliancesales.dao;
import com.appliancesales.entity.Manager;
import java.util.List;
import com.appliancesales.common.Assist;
import org.apache.ibatis.annotations.Param;
public interface ManagerDao{
    long getManagerRowCount(Assist assist);
    List<Manager> selectManager(Assist assist);
    Manager selectManagerById(Integer id);
    int insertManager(Manager value);
    int insertNonEmptyManager(Manager value);
    int deleteManagerById(Integer id);
    int deleteManager(Assist assist);
    int updateManagerById(Manager enti);
    int updateManager(@Param("enti") Manager value, @Param("assist") Assist assist);
    int updateNonEmptyManagerById(Manager enti);
    int updateNonEmptyManager(@Param("enti") Manager value, @Param("assist") Assist assist);
}
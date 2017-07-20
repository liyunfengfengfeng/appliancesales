package com.appliancesales.service;
import java.util.List;
import com.appliancesales.entity.Manager;
import com.appliancesales.common.Assist;
public interface ManagerService{
    long getManagerRowCount(Assist assist);
    List<Manager> selectManager(Assist assist);
    Manager selectManagerById(Integer id);
    int insertManager(Manager value);
    int insertNonEmptyManager(Manager value);
    int deleteManagerById(Integer id);
    int deleteManager(Assist assist);
    int updateManagerById(Manager enti);
    int updateManager(Manager value, Assist assist);
    int updateNonEmptyManagerById(Manager enti);
    int updateNonEmptyManager(Manager value, Assist assist);
}
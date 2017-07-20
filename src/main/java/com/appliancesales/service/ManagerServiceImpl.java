package com.appliancesales.service;
import java.util.List;
import com.appliancesales.dao.ManagerDao;
import com.appliancesales.entity.Manager;
import com.appliancesales.common.Assist;
public class ManagerServiceImpl implements ManagerService{
    private ManagerDao managerDao;
    @Override
    public long getManagerRowCount(Assist assist){
        return managerDao.getManagerRowCount(assist);
    }
    @Override
    public List<Manager> selectManager(Assist assist){
        return managerDao.selectManager(assist);
    }
    @Override
    public Manager selectManagerById(Integer id){
        return managerDao.selectManagerById(id);
    }
    @Override
    public int insertManager(Manager value){
        return managerDao.insertManager(value);
    }
    @Override
    public int insertNonEmptyManager(Manager value){
        return managerDao.insertNonEmptyManager(value);
    }
    @Override
    public int deleteManagerById(Integer id){
        return managerDao.deleteManagerById(id);
    }
    @Override
    public int deleteManager(Assist assist){
        return managerDao.deleteManager(assist);
    }
    @Override
    public int updateManagerById(Manager enti){
        return managerDao.updateManagerById(enti);
    }
    @Override
    public int updateManager(Manager value, Assist assist){
        return managerDao.updateManager(value,assist);
    }
    @Override
    public int updateNonEmptyManagerById(Manager enti){
        return managerDao.updateNonEmptyManagerById(enti);
    }
    @Override
    public int updateNonEmptyManager(Manager value, Assist assist){
        return managerDao.updateNonEmptyManager(value,assist);
    }

    public ManagerDao getManagerDao() {
        return this.managerDao;
    }

    public void setManagerDao(ManagerDao managerDao) {
        this.managerDao = managerDao;
    }

}
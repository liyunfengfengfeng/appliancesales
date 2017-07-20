package com.appliancesales.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.appliancesales.dao.MessageboardDao;
import com.appliancesales.entity.Messageboard;
import com.appliancesales.common.Assist;
@Service
public class MessageboardServiceImpl implements MessageboardService{
	@Autowired
    private MessageboardDao messageboardDao;
    @Override
    public long getMessageboardRowCount(Assist assist){
        return messageboardDao.getMessageboardRowCount(assist);
    }
    @Override
    public List<Messageboard> selectMessageboard(Assist assist){
        return messageboardDao.selectMessageboard(assist);
    }
    @Override
    public Messageboard selectMessageboardById(Integer id){
        return messageboardDao.selectMessageboardById(id);
    }
    @Override
    public int insertMessageboard(Messageboard value){
        return messageboardDao.insertMessageboard(value);
    }
    @Override
    public int insertNonEmptyMessageboard(Messageboard value){
        return messageboardDao.insertNonEmptyMessageboard(value);
    }
    @Override
    public int deleteMessageboardById(Integer id){
        return messageboardDao.deleteMessageboardById(id);
    }
    @Override
    public int deleteMessageboard(Assist assist){
        return messageboardDao.deleteMessageboard(assist);
    }
    @Override
    public int updateMessageboardById(Messageboard enti){
        return messageboardDao.updateMessageboardById(enti);
    }
    @Override
    public int updateMessageboard(Messageboard value, Assist assist){
        return messageboardDao.updateMessageboard(value,assist);
    }
    @Override
    public int updateNonEmptyMessageboardById(Messageboard enti){
        return messageboardDao.updateNonEmptyMessageboardById(enti);
    }
    @Override
    public int updateNonEmptyMessageboard(Messageboard value, Assist assist){
        return messageboardDao.updateNonEmptyMessageboard(value,assist);
    }

    public MessageboardDao getMessageboardDao() {
        return this.messageboardDao;
    }

    public void setMessageboardDao(MessageboardDao messageboardDao) {
        this.messageboardDao = messageboardDao;
    }

}
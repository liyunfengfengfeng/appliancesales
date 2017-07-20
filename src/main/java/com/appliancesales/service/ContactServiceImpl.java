package com.appliancesales.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.appliancesales.dao.ContactDao;
import com.appliancesales.entity.Contact;
import com.appliancesales.common.Assist;
@Service
public class ContactServiceImpl implements ContactService{
	@Autowired
    private ContactDao contactDao;
    @Override
    public long getContactRowCount(Assist assist){
        return contactDao.getContactRowCount(assist);
    }
    @Override
    public List<Contact> selectContact(Assist assist){
        return contactDao.selectContact(assist);
    }
    @Override
    public Contact selectContactById(Integer id){
        return contactDao.selectContactById(id);
    }
    @Override
    public int insertContact(Contact value){
        return contactDao.insertContact(value);
    }
    @Override
    public int insertNonEmptyContact(Contact value){
        return contactDao.insertNonEmptyContact(value);
    }
    @Override
    public int deleteContactById(Integer id){
        return contactDao.deleteContactById(id);
    }
    @Override
    public int deleteContact(Assist assist){
        return contactDao.deleteContact(assist);
    }
    @Override
    public int updateContactById(Contact enti){
        return contactDao.updateContactById(enti);
    }
    @Override
    public int updateContact(Contact value, Assist assist){
        return contactDao.updateContact(value,assist);
    }
    @Override
    public int updateNonEmptyContactById(Contact enti){
        return contactDao.updateNonEmptyContactById(enti);
    }
    @Override
    public int updateNonEmptyContact(Contact value, Assist assist){
        return contactDao.updateNonEmptyContact(value,assist);
    }

    public ContactDao getContactDao() {
        return this.contactDao;
    }

    public void setContactDao(ContactDao contactDao) {
        this.contactDao = contactDao;
    }

}
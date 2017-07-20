package com.appliancesales.service;
import java.util.List;
import com.appliancesales.entity.Contact;
import com.appliancesales.common.Assist;
public interface ContactService{
    long getContactRowCount(Assist assist);
    List<Contact> selectContact(Assist assist);
    Contact selectContactById(Integer id);
    int insertContact(Contact value);
    int insertNonEmptyContact(Contact value);
    int deleteContactById(Integer id);
    int deleteContact(Assist assist);
    int updateContactById(Contact enti);
    int updateContact(Contact value, Assist assist);
    int updateNonEmptyContactById(Contact enti);
    int updateNonEmptyContact(Contact value, Assist assist);
}
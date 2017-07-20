package com.appliancesales.dao;
import com.appliancesales.entity.Contact;
import java.util.List;
import com.appliancesales.common.Assist;
import org.apache.ibatis.annotations.Param;
public interface ContactDao{
    long getContactRowCount(Assist assist);
    List<Contact> selectContact(Assist assist);
    Contact selectContactById(Integer id);
    int insertContact(Contact value);
    int insertNonEmptyContact(Contact value);
    int deleteContactById(Integer id);
    int deleteContact(Assist assist);
    int updateContactById(Contact enti);
    int updateContact(@Param("enti") Contact value, @Param("assist") Assist assist);
    int updateNonEmptyContactById(Contact enti);
    int updateNonEmptyContact(@Param("enti") Contact value, @Param("assist") Assist assist);
}
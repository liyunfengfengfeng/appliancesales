package com.appliancesales.service;
import java.util.List;
import com.appliancesales.entity.Saler;
import com.appliancesales.common.Assist;
public interface SalerService{
    long getSalerRowCount(Assist assist);
    List<Saler> selectSaler(Assist assist);
    Saler selectSalerById(Integer id);
    int insertSaler(Saler value);
    int insertNonEmptySaler(Saler value);
    int deleteSalerById(Integer id);
    int deleteSaler(Assist assist);
    int updateSalerById(Saler enti);
    int updateSaler(Saler value, Assist assist);
    int updateNonEmptySalerById(Saler enti);
    int updateNonEmptySaler(Saler value, Assist assist);
}
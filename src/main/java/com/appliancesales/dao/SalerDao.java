package com.appliancesales.dao;
import com.appliancesales.entity.Saler;
import java.util.List;
import com.appliancesales.common.Assist;
import org.apache.ibatis.annotations.Param;
public interface SalerDao{
    long getSalerRowCount(Assist assist);
    List<Saler> selectSaler(Assist assist);
    Saler selectSalerById(Integer id);
    int insertSaler(Saler value);
    int insertNonEmptySaler(Saler value);
    int deleteSalerById(Integer id);
    int deleteSaler(Assist assist);
    int updateSalerById(Saler enti);
    int updateSaler(@Param("enti") Saler value, @Param("assist") Assist assist);
    int updateNonEmptySalerById(Saler enti);
    int updateNonEmptySaler(@Param("enti") Saler value, @Param("assist") Assist assist);
}
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO.Implemnt;

import java.util.List;
import model.Employes;
import Mapper.NhanVienMapper;
import java.sql.ResultSet;
import utils.Security;
/**
 *
 * @author 84942
 */
public class EmployesDAO extends AbstractDAO<Employes> implements DAO.IEmployes{

    @Override
    public List<Employes> getAll() {
       String sql = "{CALL proc_getAllEmployes}";
        return query(sql, new NhanVienMapper());
    }

    @Override
    public void getById(Employes employes) {
        String sql = "{CALL proc_getByNameEmployes}";
//        return query(sql, new NhanVienMapper());
    }

    @Override
    public void insert(Employes employes) {
        String sql = "{CALL proc_getByNameEmployes(?,?,?,?,?,?,?,?)}";
        this.insert(sql, employes.getName(),employes.getPhone(),employes.getEmail(),employes.getAddress(),employes.getPassword(),employes.getId_Busines(),employes.isGender(), employes.getCreated_date());
    }

    @Override
    public void update(Employes employes) {
        String sql = "{}";
        this.update(sql, employes.getName(),employes.getPhone(),employes.getEmail(),employes.getAddress(),employes.getPassword(),employes.getId_Busines(),employes.isGender(), employes.getCreated_date(),employes.getId());
        
    }

    @Override
    public void delete(Employes employes) {
        String sql = "";
        this.update(sql, employes.getId());
    }

//    @Override
//    public boolean Logins(Employes employes) {
//        String param[]=new String[]{employes.getEmail(), employes.getName(), Security.encrypt(employes.getPassword())};
//        String sql = "";
//        query(sql, new NhanVienMapper(),param);
//    }

    @Override
    public boolean Logins(Employes employes) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}

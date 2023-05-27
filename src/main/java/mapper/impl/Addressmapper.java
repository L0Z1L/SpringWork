package mapper.impl;

import entity.Address;
import mapper.AddressDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


import java.util.List;
@Repository
public class Addressmapper implements AddressDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;
    @Override
    public void address(Address address, int userid) {


        int num=jdbcTemplate.update("insert into address values (?,?,?,?,?,?,?,?),null,userid," +
                "address.getRecipient_name(),address.getRecipient_phone(),address.getProvince(),address.getCity(),address.getDistrict()," +
                "address.getDetails()");
    }

    @Override
    public void updateaddress(Address address,int userid) {
        int num=jdbcTemplate.update("update address set recipient_name=? and recipient_phone=? and province=?" +
                "and city=? and district=? and detail=?,address.getRecipient_name(),address.getRecipient_phone(),address.getProvince(),address.getCity()," +
                "address.getDistrict(),address.getDetails()");
    }

    @Override
    public void deleteaddress(int addressid) {
        int num=jdbcTemplate.update("delete from address where address_id=?",addressid);
    }

    @Override
    public List<Address> findAddressByUserId(int userid) {
        List<Address> list=jdbcTemplate.query("select * from address inner join user on" +
                "address.user_id=user.user_id",new BeanPropertyRowMapper<Address>(Address.class),userid);
        return list;
    }



}

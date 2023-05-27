package controller;

import entity.Address;
import mapper.AddressDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;



import java.util.List;

@Controller
public class AddressController {
    @Autowired
    private AddressDao addressDao;

    public void insertaddress(Address address, int user_id){
        this.addressDao.address(address,user_id);
    }

    public void deleteAddress(int address_id){
        this.addressDao.deleteaddress(address_id);
    }

    public void updateAddress(Address address,int user_id){
        this.addressDao.updateaddress(address,user_id);
    }

    public List<Address> findAddressByuserId(int user_id){
        return this.addressDao.findAddressByUserId(user_id);
    }
}

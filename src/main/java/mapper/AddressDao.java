package mapper;


import entity.Address;

import java.util.List;

public interface AddressDao {
    void address(Address address, int userid);
    void updateaddress(Address address,int userid);
    void deleteaddress(int addressid);
    List<Address> findAddressByUserId(int userid);


}

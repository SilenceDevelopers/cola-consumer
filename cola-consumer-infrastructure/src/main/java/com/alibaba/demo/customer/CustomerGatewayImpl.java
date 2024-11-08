package com.alibaba.demo.customer;

import com.alibaba.demo.domain.customer.Customer;
import com.alibaba.demo.domain.customer.gateway.CustomerGateway;

import com.alibaba.demo.mapper.CustomerMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class CustomerGatewayImpl implements CustomerGateway {
    @Autowired
    private CustomerMapper customerMapper;

    public Customer getByById(String customerId){
      CustomerDO customerDO = customerMapper.getById(customerId);
      //Convert to Customer
      return null;
    }
}

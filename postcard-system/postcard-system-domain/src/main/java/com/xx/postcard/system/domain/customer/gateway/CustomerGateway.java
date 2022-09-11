package com.xx.postcard.system.domain.customer.gateway;

import com.xx.postcard.system.domain.customer.Customer;

public interface CustomerGateway {
    Customer getByById(String customerId);
}

package com.xx.user.system.domain.customer.gateway;

import com.xx.user.system.domain.customer.Customer;

public interface CustomerGateway {
    Customer getByById(String customerId);
}

package com.xx.feed.system.domain.customer.gateway;

import com.xx.feed.system.domain.customer.Customer;

public interface CustomerGateway {
    Customer getByById(String customerId);
}

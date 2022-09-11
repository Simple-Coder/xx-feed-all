package com.xx.comment.system.domain.customer.gateway;

import com.xx.comment.system.domain.customer.Customer;

public interface CustomerGateway {
    Customer getByById(String customerId);
}

package com.xx.comment.system.domain.customer.gateway;

import com.xx.comment.system.domain.customer.Credit;

//Assume that the credit info is in another distributed Service
public interface CreditGateway {
    Credit getCredit(String customerId);
}

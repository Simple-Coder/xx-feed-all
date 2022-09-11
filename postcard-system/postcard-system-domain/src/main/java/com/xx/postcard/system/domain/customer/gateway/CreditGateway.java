package com.xx.postcard.system.domain.customer.gateway;

import com.xx.postcard.system.domain.customer.Credit;

//Assume that the credit info is in another distributed Service
public interface CreditGateway {
    Credit getCredit(String customerId);
}

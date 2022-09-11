package com.xx.feed.system.api;

import com.alibaba.cola.dto.MultiResponse;
import com.alibaba.cola.dto.Response;
import com.xx.feed.system.dto.CustomerAddCmd;
import com.xx.feed.system.dto.CustomerListByNameQry;
import com.xx.feed.system.dto.data.CustomerDTO;

public interface CustomerServiceI {

    Response addCustomer(CustomerAddCmd customerAddCmd);

    MultiResponse<CustomerDTO> listByName(CustomerListByNameQry customerListByNameQry);
}

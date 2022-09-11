package com.xx.postcard.system.api;

import com.alibaba.cola.dto.MultiResponse;
import com.alibaba.cola.dto.Response;
import com.xx.postcard.system.dto.CustomerAddCmd;
import com.xx.postcard.system.dto.CustomerListByNameQry;
import com.xx.postcard.system.dto.data.CustomerDTO;

public interface CustomerServiceI {

    Response addCustomer(CustomerAddCmd customerAddCmd);

    MultiResponse<CustomerDTO> listByName(CustomerListByNameQry customerListByNameQry);
}

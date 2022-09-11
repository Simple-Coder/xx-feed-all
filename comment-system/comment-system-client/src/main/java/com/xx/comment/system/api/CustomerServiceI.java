package com.xx.comment.system.api;

import com.alibaba.cola.dto.MultiResponse;
import com.alibaba.cola.dto.Response;
import com.xx.comment.system.dto.CustomerAddCmd;
import com.xx.comment.system.dto.CustomerListByNameQry;
import com.xx.comment.system.dto.data.CustomerDTO;

public interface CustomerServiceI {

    Response addCustomer(CustomerAddCmd customerAddCmd);

    MultiResponse<CustomerDTO> listByName(CustomerListByNameQry customerListByNameQry);
}

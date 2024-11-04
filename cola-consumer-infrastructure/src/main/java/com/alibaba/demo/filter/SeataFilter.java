package com.alibaba.demo.filter;

import lombok.extern.slf4j.Slf4j;
import org.apache.dubbo.common.extension.Activate;
import org.apache.dubbo.rpc.*;
import org.apache.seata.core.constants.DubboConstants;
import org.apache.seata.core.context.RootContext;

@Slf4j
@Activate(group = {DubboConstants.CONSUMER})
public class SeataFilter implements Filter {
    @Override
    public Result invoke(Invoker<?> invoker, Invocation invocation) throws RpcException {
        String xid = RpcContext.getServerAttachment().getAttachment(RootContext.KEY_XID);
        log.info("Seata xid:" + xid);
        Result result = invoker.invoke(invocation);
        return result;
    }
}

package com.arc.vue.service.impl;

import com.arc.model.domain.vue.Ticket;
import com.arc.vue.mapper.TicketMapper;
import com.arc.vue.service.TicketService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Ticket 业务层实现
 * <p>
 * Created by bysocket on 24/07/2017.
 */
@Service
public class TicketServiceImpl implements TicketService {

    private static final Logger logger = LoggerFactory.getLogger(TicketServiceImpl.class);

    @Autowired
    TicketMapper ticketMapper;


    @Override
    public Ticket save(Ticket ticket) {
        logger.info("新增票：" + ticket.toString());
        int save = ticketMapper.save(ticket);
        if (save == 1) {
            return ticket;
        }else {
            return null;
        }
    }

    @Override
    public Ticket update(Ticket ticket) {
        logger.info("更新票：" + ticket.toString());
        int update = ticketMapper.update(ticket);
        if (update == 1) {
            return ticket;
        }else {
            return null;
        }
    }

    @Override
    public int delete(Integer sn) {
        logger.info("删除票：" + sn);
        return  ticketMapper.delete(sn);
    }

    @Override
    public Ticket get(Long id) {
        logger.info("获取票 ID ：" + id);
        return ticketMapper.get(id);
    }

    @Override
    public List<Ticket> list() {
        return ticketMapper.list();
    }

    @Override
    public List<Ticket> page() {
        return ticketMapper.list();

    }
}

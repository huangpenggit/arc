package com.arc.vue.service;


import com.arc.model.domain.vue.Ticket;

import java.util.List;

/**
 * User 业务层接口
 * <p>
 * Created by bysocket on 24/07/2017.
 */
public interface TicketService {

    Ticket save(Ticket ticket);

    Ticket update(Ticket ticket);

    Ticket get(Long id);

    List<Ticket> list();

    List<Ticket> page();

    int delete(Integer sn);

}

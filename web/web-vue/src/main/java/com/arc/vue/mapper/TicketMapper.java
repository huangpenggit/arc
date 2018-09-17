package com.arc.vue.mapper;

import com.arc.model.domain.vue.Ticket;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TicketMapper {

    int save(Ticket ticket);

    int update(Ticket ticket);

    Ticket get(Long id);

    List<Ticket> list();

    int delete(@Param("sn") Integer sn);
}

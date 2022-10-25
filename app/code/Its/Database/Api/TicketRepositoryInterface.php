<?php

namespace Its\Database\Api;

use Its\Database\Api\Data\TicketInterface;
/**
 * Interface TicketRepositoryInterface
 * @api
 * @since 100.1.0
 */
interface TicketRepositoryInterface
{
    /**
     * @param int $id
     * @return TicketInterface
     */
    public function getById(int $id): TicketInterface;  

    /**
     * @param TicketInterface $ticket
     * @return TicketInterface
     */ 

    public function save(TicketInterface $ticketName): TicketInterface;

    /**
     * @param TicketInterface $ticket
     * @return bool
     */
    public function delete(TicketInterface $ticket): bool;

}
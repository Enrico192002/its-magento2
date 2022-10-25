<?php

namespace Its\Database\Api\Data;

/**
 * Ticket interface
 * @api
 * Standard versioning
 * Mainly Feature Fix
 * @since 1.0.0
 */

 interface TicketInterface
 {

    const TICKET_ID = "id";
    const TICKET_NAME = "type_id";
    const TICKET_SURNAME = "type_surname";
    

    /**
     * @return int
     */
    public function getTicketId();

    /**
     * @param int $ticketId
     * @return this
     */
    public function setTicketId($ticketId);

    /** 
    * @return string
    */
    public function getTicketName();

    /**
     * @param string $ticketName
     * @return this
     */
    public function setTicketName($ticketName);
    
    /** 
    * @return string
    */
    
    public function getTicketSurname();

    /**
     * @param string $ticketSurname
     * @return this
     */
    public function setTicketSurname($ticketSurname);

 }
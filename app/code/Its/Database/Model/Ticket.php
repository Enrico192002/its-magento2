<?php

namespace Its\Database\Model;

use Magento\Framework\Model\AbstractModel;
use Its\Database\Model\ResourceModel\Ticket as ResourceModel;
use Its\Database\Api\Data\TicketInterface;

class Ticket extends AbstractModel implements TicketInterface
{
    protected function _construct()
    {
        $this->_init(ResourceModel::class);
    }

    public function getTicketId()
    {
        return $this->getData(self::TICKET_ID);
    }

    public function setTicketId($ticketId)
    {
        $this->setData(self::TICKET_ID, $ticketId);
    }

    public function getTicketName()
    {
        return $this->getData(self::TICKET_NAME);
    }

    public function setTicketName($ticketName)
    {
        $this->setData(self::TICKET_NAME, $ticketName);
    }

    public function getTicketSurname()
    {
        return $this->getData(self::TICKET_SURNAME);
    }

    public function setTicketSurname($ticketSurname)
    {
        $this->setData(self::TICKET_SURNAME, $ticketSurname);
    }


}
?>
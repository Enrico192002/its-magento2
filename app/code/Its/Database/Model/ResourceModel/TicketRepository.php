<?php
namespace Its\Database\Model\ResourceModel;

use Its\Database\Api\Data\TicketInterface;
use Its\Database\Api\TicketRepositoryInterface;
use Its\Database\Model\ResourceModel\Ticket;
use Its\Database\Model\TicketFactory;
use Its\Database\Model\ResourceModel\Ticket\CollectionFactory;

class TicketRepository implements TicketRepositoryInterface
{   
    private $ticketFactory;
    private $ticketResourceModel;
    private $ticketCollectionFactory;

    public function __construct(TicketFactory $ticketFactory, Ticket $ticketResourceModel,CollectionFactory $ticketCollectionFactory)
    {
      $this->ticketFactory = $ticketFactory;
      $this->ticketResourceModel = $ticketResourceModel;
      $this->ticketCollectionFactory = $ticketCollectionFactory;
    }
    public function getById(int $ticketId): TicketInterface
    {
      $ticket = $this->ticketFactory->create();
      
      $ticketres=$this->ticketResourceModel->load($ticket,$ticketId);
     
      return $ticket;
    }

    public function save(TicketInterface $ticketName): TicketInterface
    {
      $saveticket=$this->ticketResourceModel->save($ticketName);
      $ticketres=$this->ticketResourceModel->load($saveticket,$ticketName);
      return $saveticket;
    }
    public function delete($ticket): Bool
    {
      $idticket->getById($ticket);
      $this->ticketResourceModel->delete($idticket);
      return true;
    }
}
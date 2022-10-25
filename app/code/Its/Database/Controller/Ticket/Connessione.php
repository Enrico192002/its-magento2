<?php
namespace Its\Database\Controller\Ticket;

use Magento\Framework\App\Action\Action;
use Its\Database\Model\TicketFactory;
use Magento\Framework\App\Action\Context;

class Connessione extends Action
{
    protected $ticketFactory;

    public function __construct(Context $context,TicketFactory $ticketFactory)
        {
        $this->ticketFactory = $ticketFactory;
        parent::__construct($context);
        }
    public function execute()
    {
        $ticket = $this->ticketFactory->create();
        $ticket->setData('type_id','stronzo');
        $ticket->save();
    }
}
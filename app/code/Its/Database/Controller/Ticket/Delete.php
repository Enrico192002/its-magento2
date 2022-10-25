<?php

namespace Its\Database\Controller\Ticket;

class Delete extends \Magento\Framework\App\Action\Action
{
     protected $_request;
     protected $_coreRegistry;
     protected $ticketFactory;
   

     public function __construct(
          \Magento\Framework\App\Action\Context $context,
          \Magento\Framework\App\Request\Http $request,
          \Magento\Framework\Registry $coreRegistry,

          \Its\Database\Model\TicketFactory $ticketFactory
     ){
          $this->_request = $request;
          $this->ticketFactory = $ticketFactory;
          return parent::__construct($context);
     }

     public function execute()

     {
               $id=0;
               $ticket = $this->ticketFactory->create();
               $result = $ticket->load($id);
               $result->delete();
		       $result->save();
     }
 
     
}
<?php

namespace Its\Database\Controller\Ticket;

class Update extends \Magento\Framework\App\Action\Action
{
     protected $_pageFactory;
     protected $_request;
     protected $_coreRegistry;
     protected $ticketFactory;
   

     public function __construct(
          \Magento\Framework\App\Action\Context $context,
          \Magento\Framework\View\Result\PageFactory $pageFactory,
          \Magento\Framework\App\Request\Http $request,
          \Magento\Framework\Registry $coreRegistry,
          \Its\Database\Model\TicketFactory $ticketFactory
     ){
          $this->_pageFactory = $pageFactory;
          $this->_request = $request;
          $this->ticketFactory = $ticketFactory;
          return parent::__construct($context);
     }

     public function execute()

     {
          $id=0;
               $ticketData = $this->ticketFactory->create();
               $result = $ticketData->load($id);
               $result->setData('type_id',"enrico");
		     $result->save();
          
          return $this->_pageFactory->create();
     }
 
     
}
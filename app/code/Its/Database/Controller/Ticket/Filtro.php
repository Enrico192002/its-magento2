<?php
namespace Its\Database\Controller\Ticket;

use Magento\Framework\App\Action\Context;
use Its\Database\Model\ResourceModel\Ticket\CollectionFactory;
use Its\Database\Model\TicketFactory;
use Magento\Framework\Controller\ResultFactory;
use Magento\Framework\App\Action\Action;

class Filtro extends Action
{   
    protected $ticketCollectionFactory;
    protected $ticketFactory;

    protected function __construct(Context $context, CollectionFactory $ticketCollectionFactory, TicketFactory $ticketFactory)
    {
       $this->ticketCollectionFactory = $ticketCollectionFactory;
       $this->ticketFactory = $ticketFactory;
       parent::__construct($context);
    }  
    public function execute()
    {
        /** @var Json $jsonResult */
        $PageResult=$this->resultFactory->create(ResultFactory::TYPE_PAGE);
        $ticket = $this->ticketCollectionFactory->create();
        $ticket->addFieldToFilter('id', ['eq' => 1]);
        foreach ($ticket as $product) {
            print_r($product->getData());
        }
        //return $ticket;
        return $PageResult;
    }
}
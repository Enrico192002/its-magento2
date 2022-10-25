<?php

namespace Its\Database\Controller\Ticket;

use Magento\Framework\App\Action\Action;
use Magento\Framework\Controller\ResultFactory;
use Magento\Framework\App\Action\Context;
use Its\Database\Model\TicketFactory;
use Its\Database\Api\TicketRepositoryInterface;

    class Prova extends Action
    {

        protected function __construct(Context $context, TicketRepositoryInterface $ticketRepositoryInterface, TicketFactory $ticketFactory)
        {
            $this->ticketFactory = $ticketFactory;
            $this->ticketRepositoryInterface = $ticketRepositoryInterface;
            parent::__construct($context);
        }

    public function execute()
    {
         /** @var Json $jsonResult */
        $PageResult=$this->resultFactory->create(ResultFactory::TYPE_PAGE);

        
      if (isset($_POST["type_id"]))
        {
            $type_id = htmlspecialchars($_POST["type_id"],ENT_QUOTES);
            $type_surname = htmlspecialchars($_POST["type_surname"],ENT_QUOTES);
            $form = array('type_id' => $type_id, 'type_surname' => $type_surname);
            $ticket = $this->ticketFactory->create();
            foreach($form as $key => $value) {
                $ticket->setData($key,$value);
                $this->messageManager->addSuccessMessage('Dati Inseriti');
            }
            $this->ticketRepositoryInterface->save($this->TicketInterface);

        } 
        else 
        {
            echo "no username supplied";
        } 
        
      return $PageResult;
    }
   

        
}
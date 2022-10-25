<?php

namespace Its\Database\Controller\Ticket;

use Magento\Framework\Controller\Result\RawFactory;
use Magento\Framework\App\Action\Context;
use  Magento\Framework\View\Result\PageFactory;
use  Its\Database\Model\TicketFactory;
use  Its\Database\Model\ResourceModel\TicketRepository;

class Save extends \Magento\Framework\App\Action\Action
{

    /**
     * Index resultPageFactory
     * @var PageFactory
     */
    private $resultPageFactory;
    /**
     * @var
     */
    private $ticketFactory;
    /**
     * @var
     */
    private $ticketRepository;


    /**
     * Index constructor.
     * @param Magento\Framework\App\Action\Context $context
     * @param Magento\Framework\View\Result\PageFactory $resultPageFactory
     * @param Its\Database\Model\TicketFactory $ticketFactory
     * @param Its\Database\Model\ResourceModel\TicketRepository $ticketRepository
     */
    public function __construct(
        Context $context,
        PageFactory $resultPageFactory,
        TicketFactory $ticketFactory,
        TicketRepository $ticketRepository
) {
        $this->resultPageFactory = $resultPageFactory;
        $this->ticketFactory = $ticketFactory;
        $this->ticketRepository = $ticketRepository;
        return parent::__construct($context);


    }

    /**
     * @return \Magento\Framework\App\ResponseInterface|\Magento\Framework\Controller\ResultInterface
     */
    public function execute()
    {
        $data = [
            "type_id" => "Katrina",
            "type_surname" => "Franza",
        ];

        $obj = $this->ticketFactory->create();
        $this->ticketRepository->save($obj->addData($data)); // Service Contract

        $this->resultFactory->create("raw");
    }
}
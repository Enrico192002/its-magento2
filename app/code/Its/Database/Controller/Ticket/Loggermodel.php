<?php
namespace Its\Database\Controller\Ticket;

use Magento\Framework\App\Action\Action;
use Magento\Framework\App\Action\Context;
use \Magento\Framework\View\Result\PageFactory;

class Loggermodel extends Action
{
    public $logger;

    public function __construct(\Its\Database\Logger\Logger $logger,Context $context) {
        $this->logger = $logger;
        parent::__construct($context);
    }

    public function execute()
    {
        try {
            $this->logger->info('I did something');

        } catch (\Exception $e) {
            $this->logger->critical('Error message', ['exception' => $e]);
        }
    }
}
<?php

namespace Its\PrimoModulo\Controller\Page;

use Magento\Framework\App\Action\Action;
use Magento\Framework\App\Action\Context;
use \Magento\Framework\View\Result\PageFactory;

class Jscomponent extends Action
{
    protected $resultPageFactory;

    public function __construct(
        Context $context,
        PageFactory $resultPageFactory
    )
    {
        parent::__construct($context);
        $this->resultPageFactory = $resultPageFactory;
    }

    public function execute()
    {
        $nome = $_POST["fname"];
        $cognome = $_POST["lname"];
        $form = array('name' => $nome, 'surname' => $cognome);
        echo json_encode($form);
        exit;
        return $this->resultPageFactory->create();
    }
}

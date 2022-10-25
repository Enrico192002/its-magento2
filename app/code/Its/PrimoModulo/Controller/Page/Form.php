<?php

namespace Its\PrimoModulo\Controller\Page;

use Magento\Framework\App\Action\Action;
use Magento\Framework\Controller\ResultFactory;
use Its\PrimoModulo\Helper\InvioCurl;
use Magento\Framework\App\Action\Context;
use Magento\Backend\Model\UrlInterface;

class Form extends Action
{
    // /*     /**
    //      * @var Curl
    //      */
    //     //protected $curlClient;
    //     public $curlClient;


    //     /**
    //      * @var string
    //      */
    //     // protected $urlPrefix = 'http://';
    //     public $urlPrefix = 'http://';

    //     /**
    //      * @var string
    //      */
    //     // protected $apiUrl = '127.0.0.1:8000/magento';
    //     public $apiUrl = '127.0.0.1:8000/magento';

    //     /**
    //      * @var \Magento\Marketplace\Helper\Cache
    //      */
    //     //protected $cache;

    //     /**
    //      * @var UrlInterface
    //      */
    //     // private $backendUrl;
    //     public $backendUrl;

    //     public function __construct(InviaDati $invio, UrlInterface $backendUrl )
    //     {
    //         $this->curlClient = $invio;
    //         $this->backendUrl = $backendUrl; 
    //     } */
    protected $helper;
    protected $context;
    protected function __construct(InvioCurl $helper,Context $context)
    {
        $this->helper = $helper;
        parent::__construct($context);
    }
    /**
     * Form action
     *
     * @return void
     */
    public function execute()
    {
        // 1. POST request : Get booking data
        $post = (array) $this->getRequest()->getPost();

        if (!empty($post)) {
            // Retrieve your form data
            $nome   = $post['fname'];
            $cognome    = $post['lname'];
            // Doing-something with
            $dati = [$nome, $cognome];
            //print_r($dati);
            $dataj = json_encode($dati, true);
            // echo $dataj;
            //var_dump($dataj);
            //exit;
            //invia dati
           $this->helper->invia();


            //$this->curlClient->getDati($dataj);
            echo "curl ok";
            // Display the succes form validation message
            //$this->messageManager->addSuccessMessage('Dati Inviati !');

            // Redirect to your form page (or anywhere you want...)
            /*     $resultRedirect = $this->resultFactory->create(ResultFactory::TYPE_REDIRECT);
            $resultRedirect->setUrl('/joeprimo/page/koo');

            return $resultRedirect; */
            exit;
        }
    }
}

<?php
namespace Its\Database\Plugin;

class Productprice
{
    public $logger;
    public function __construct(\Its\Database\Logger\Logger $logger) {
        $this->logger = $logger;
    }   

    public function beforeSetTitle(\Its\Database\Controller\Ticket\Before $subject, $title)  
	{
		$title = $title . " to ";
		return [$title];
	}
    public function afterGetPrice(\Magento\Catalog\Model\Product $subject, $result)
    {
     return $result*1.5; 
    }
    public function aroundSave(\Magento\Catalog\Model\Product $subject, \Closure $proceed) {
        $returnValue=$proceed();
            if($returnValue) {
                $this->logger->info('prodotto ok');
        }
        return $returnValue;
    }
}
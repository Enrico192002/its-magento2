<?php
namespace Its\PrimoModulo\Block;



class Custom extends \Magento\Framework\View\Element\Template
{        
    protected $_productRepository;
    public function __construct(
        \Magento\Framework\Controller\ResultFactory $resultFactory,
        \Magento\Backend\Block\Template\Context $context, 
        \Magento\Customer\Model\Customer $customer,
        \Magento\Customer\Model\Session $session,
        \Magento\Catalog\Model\ProductFactory $_productloader,
        array $data = []
    )
    {       
        $this->resultFactory = $resultFactory;
        $this->_customerSession = $session;
        $this->customer=$customer;
        $this->_productloader = $_productloader;
        parent::__construct($context, $data);
    }
    public function get_info() {
        echo "ciao";
    }
    public function getCustomerName(){
        $idcliente=1;
        $cliente=$this->customer->load($idcliente);
        return $cliente->getFistName();
    }
    public function getCredenziali(){
        $prova="";
        if ($this->_customerSession->isLoggedIn()) {
            return  $prova=$this->_customerSession->getCustomer()->getName(); 
        } else {
            $redirect = $this->resultFactory->create(\Magento\Framework\Controller\ResultFactory::TYPE_REDIRECT);
            return $redirect->getUrl('customer/account/');
        }
    }
    public function getLoadProduct($id)
    {
        return $this->_productloader->create()->load($id);
    }
}

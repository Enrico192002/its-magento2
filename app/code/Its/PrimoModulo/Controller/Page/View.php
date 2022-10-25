<?php

namespace Its\PrimoModulo\Controller\Page;

use Magento\Framework\App\Action\Action;
use Magento\Framework\Controller\ResultFactory;

class View extends Action
{
    public function execute()
    {
       /** @var Json $jsonResult */
       /* $jsonResult = $this->resultFactory->create(ResultFactory::TYPE_JSON);
       $jsonResult->setData(['message' => 'My First Page']);
       return $jsonResult; */
       $jsonResult = $this->resultFactory->create(ResultFactory::TYPE_JSON);
       if($this->check()) {
       $jsonResult->setData(['persona' => 'persona esiste']);
       } else {
       $jsonResult->setData(['persona' => 'persona non esiste']);
       };
       return $jsonResult;
    }
    
       public function check(){
       $persona = ['nome'=>'enrico'];
       $esempi = ['nome'=>['enrico','filippo','luca','fabio']];
       foreach($esempi as $value){
       foreach($value as $valore){
         if(strcmp($persona['nome'], $valore) === 0){
            return 1;
            }
         } 
       } 
    }
}
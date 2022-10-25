<?php

namespace Its\Database\Observer;

class ControllerAction implements \Magento\Framework\Event\ObserverInterface
{
	public function execute(\Magento\Framework\Event\Observer $observer)
	{
		$controllerAction = $observer->getData('status');
		return $this;
	}
}
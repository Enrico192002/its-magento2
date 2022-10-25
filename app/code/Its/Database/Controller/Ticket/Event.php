<?php
namespace Its\Database\Controller\Ticket;

class Event extends \Magento\Framework\App\Action\Action
{

	public function execute()
	{
		$textDisplay = new \Magento\Framework\DataObject(array('text' => 'Funziona'));
		$this->_eventManager->dispatch('Its_Database_display_text', ['Its_text' => $textDisplay]);
		echo $textDisplay->getText();
		exit;
	}
}
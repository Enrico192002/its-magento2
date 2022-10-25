<?php

namespace Its\Database\Controller\Ticket;

class Before extends \Magento\Framework\App\Action\Action
{

	protected $title;

	public function execute()
	{
		echo $this->setTitle('Welcome');
	}

	public function setTitle($title)
	{
		return $this->title = $title;
	}

	public function getTitle()
	{
		return $this->title;
	}
}

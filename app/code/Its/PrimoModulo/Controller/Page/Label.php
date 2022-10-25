<?php
namespace Its\PrimoModulo\Block;

class Label extends \Magento\Framework\View\Element\Template
{

	public function __construct(\Magento\Framework\View\Element\Template\Context $context)
	{
		parent::__construct($context);
	}
	
	public function getUserList()
	{
		$users = [
			"ID" => [0, 1, 2, 3, 4],
			"nome" => ["Mario", "Luigi", "Davide", "Matteo", "Mattia"],
			"cognome" => ["Rossi", "Bianchi", "Azzurri", "Bruni", "Grigi"],
			"email" => ["mario@gmail.com", "luigi@gmail.com", "davide@gmail.com", "matteo@gmail.com", "mattia@gmail.com"]
		];
		return $users;
	}
}
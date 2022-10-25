<?php

namespace Its\Database\Setup\Patch\Data;

use Magento\Framework\Setup\ModuleDataSetupInterface;
use Magento\Framework\Setup\Patch\DataPatchInterface;
use Magento\Framework\Setup\Patch\PatchInterface;
use Its\Database\Model\TicketFactory;
use Its\Database\Api\TicketRepositoryInterface;


class PopulateTicketData implements DataPatchInterface
{
    public function __construct(ModuleDataSetupInterface $moduleDataSetup,TicketRepositoryInterface $ticketRepositoryInterface, TicketFactory $ticketFactory)
    {
        $this->ticketFactory = $ticketFactory;
        $this->ticketRepositoryInterface = $ticketRepositoryInterface;
        $this->moduleDataSetupInterface = $moduleDataSetup;
    }

    public static function getDependencies(): array
    {
        return[];
    }

    public function getAliases(): array
    {
        return[];
    }

    public function apply()
    {
        $this->moduleDataSetupInterface->startSetup();
        $data = [
            "type_id" => "Katrina",
            "type_surname" => "Franza",
        ];

        $obj = $this->ticketFactory->create();
        $this->ticketRepositoryInterface->save($obj->addData($data));


        $this->moduleDataSetupInterface->endSetup();
    }
}
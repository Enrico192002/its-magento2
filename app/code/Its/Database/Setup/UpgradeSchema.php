<?php
namespace Its\Database\Setup;

use Magento\Framework\Setup\UpgradeSchemaInterface;
use Magento\Framework\Setup\SchemaSetupInterface;
use Magento\Framework\Setup\ModuleContextInterface;
use Magento\Framework\DB\Dbl\Table;

class UpgradeSchema implements UpgradeSchemaInterface
{
public function upgrade(SchemaSetupInterface $setup, ModuleContextInterface $context)
    {


         $installer = $setup;
        $installer->startSetup();
        $connection = $installer->getConnection();
        $connection->addColumn($installer->getTable('prova'), columnname('esempio_1'), [
            'type'     => Table::TYPE_TEXT,
            'nullable' => true,
            'comment'  => 'prova'
        ]);
    
        $installer->endSetup();


        }
    }

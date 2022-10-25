<?php
namespace Its\Database\Model\ResourceModel\Ticket;

use Magento\Framework\Model\ResourceModel\Db\Collection\AbstractCollection;
use Its\Database\Model\Ticket as Model;
use Its\Database\Model\ResourceModel\Ticket as ResourceModel;

class Collection extends AbstractCollection
{
    protected function _construct()
    {
        $this->_init(Model::class, ResourceModel::class);
    }
}
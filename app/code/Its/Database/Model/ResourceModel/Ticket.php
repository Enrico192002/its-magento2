<?php

namespace Its\Database\Model\ResourceModel;

use Magento\Framework\Model\ResourceModel\Db\AbstractDb;

class Ticket extends AbstractDb
{
    protected function _construct()
    {
        $this->_init('prova3', 'id');
    }
}
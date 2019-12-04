<?php

namespace OPNsense\TeccoSoporte\Api;

use \OPNsense\Base\ApiMutableModelControllerBase;

/**
 * a settings controller for our TeccoSoporte app, uses our ApiMutableModelControllerBase type
 * @package OPNsense\TeccoSoporte
 */
class SettingsController extends ApiMutableModelControllerBase
{
    protected static $internalModelName = 'teccosoporte';
    protected static $internalModelClass = 'OPNsense\TeccoSoporte\TeccoSoporte';

    public function searchItemAction()
    {
        return $this->searchBase("addresses.address", array('enabled', 'email'), "email");
    }

    public function setItemAction($uuid)
    {
        return $this->setBase("address", "addresses.address", $uuid);
    }

    public function addItemAction()
    {
        return $this->addBase("address", "addresses.address");
    }

    public function getItemAction($uuid = null)
    {
        return $this->getBase("address", "addresses.address", $uuid);
    }

    public function delItemAction($uuid)
    {
        return $this->delBase("addresses.address", $uuid);
    }

    public function toggleItemAction($uuid, $enabled = null)
    {
        return $this->toggleBase("addresses.address", $uuid, $enabled);
    }
}

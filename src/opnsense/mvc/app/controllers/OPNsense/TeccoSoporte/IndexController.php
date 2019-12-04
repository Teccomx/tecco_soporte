<?php

namespace OPNsense\TeccoSoporte;

/**
 * Class IndexController
 * @package OPNsense\TeccoSoporte
 */
class IndexController extends \OPNsense\Base\IndexController
{
    public function indexAction()
    {
        $this->view->pick('OPNsense/TeccoSoporte/index');
        $this->view->formDialogAddress = $this->getForm("dialogAddress");
    }
}

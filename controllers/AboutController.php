<?php

include_once ROOT . '/controllers/Controller.php';

class AboutController extends Controller {

    function __construct()
    {
        parent::__construct();
    }

    public function actionIndex() {
        try {
            $this->view->generate('template_view.phtml', 'about/about.phtml');
        } catch (Exception $e) {
            echo $e->getMessage();
        }
        return true;
    }
}
?>
<?php

include_once ROOT . '/models/Model_Categories.php';
include_once ROOT . '/controllers/Controller.php';
include_once ROOT . '/models/Model_Search.php';


class SearchController extends Controller
{
    private $searchModel;

    public function __construct() {
        parent::__construct();
        $this->searchModel = new Model_Search();
    }

    public function actionIndex() {
        try {
            $result = true;
            if (isset($_POST['blog-search'])) {
                $this->view->searchResult = $this->searchModel->getSearchNews($_POST['blog-search']);
                $this->view->categories = $this->categoriesModel->getCategories();
            } else {
                echo 'NOT FOUND';
                $result = false;
            }
            $this->view->result = $result;
            $this->view->generate('template_view.phtml', 'news/search_result.phtml');
        } catch (Exception $e) {
            echo $e->getMessage();
        }
        return true;
    }
}
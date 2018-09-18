<?php

include_once ROOT . '/models/Model_Categories.php';
include_once ROOT . '/controllers/Controller.php';
include_once ROOT . '/models/Model_Search.php';
include_once ROOT . '/models/Model_News.php';


class SearchController extends Controller
{
    private $searchModel;
    private $categoriesModel;
    private $newsModel;

    public function __construct() {
        parent::__construct();
        $this->searchModel = new Model_Search();
        $this->categoriesModel = new Model_Categories();
        $this->newsModel = new Model_News();
    }

    public function actionIndex() {
        try {
            if (isset($_GET['blog-search'])) {
                $this->view->searchResult = $this->searchModel->getSearchNews($_GET['blog-search']);
                $this->view->categories = $this->categoriesModel->getCategories();
                $this->view->lastNews = $this->newsModel->getLastNews();
                $result = true;
            } else {
                $this->view->searchResult = 'NOT FOUND';
                $result = false;
            }
            $this->view->result = $result;
            $this->view->generate('template_view.phtml', 'news/search_result.phtml');
        } catch (Exception $e) {
            echo $e->getMessage();
        }
        return true;
    }

    public function actionDetail($newsCode) {
        try {

            $this->view->detailNews = $this->newsModel->getNewsByCode($newsCode);
            $this->view->lastNews = $this->newsModel->getLastNews();
            $this->view->categories = $this->categoriesModel->getCategories();

            $this->newsModel->setNewsViews($newsCode);
            $this->view->newsComments = $this->newsModel->getNewsComments($newsCode);

            $this->view->generate('template_view.phtml', 'news/detail.phtml');
        } catch (Exception $e) {
            echo $e->getMessage();
        }
        return true;
    }
}
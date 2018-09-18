<?php

include_once ROOT . '/models/Model_News.php';
include_once ROOT . '/models/Model_Categories.php';
include_once ROOT . '/controllers/Controller.php';

class NewsController extends Controller {

    private $newsModel;
    private $categoriesModel;

    function __construct()
    {
        parent::__construct();
        $this->newsModel = new Model_News();
        $this->categoriesModel = new Model_Categories();
    }

    public function actionIndex($category = NULL) {
        try {
            //var_dump($category); die;
            if ($category == NULL) {
                $result = $this->newsModel->getNewslist();
            } else {
                $result = $this->newsModel->getCategoryNews($category);
            }

            //$lastNews = $this->newsModel->getLastNews();

            $this->view->news = $result;
            $this->view->lastNews = $this->newsModel->getLastNews();
            $this->view->categories = $this->categoriesModel->getCategories();

            $this->view->generate('template_view.phtml', 'news/index.phtml');

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
?>
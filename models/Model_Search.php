<?php
/**
 * Created by PhpStorm.
 * User: Igor
 * Date: 12.09.2018
 * Time: 19:24
 */

class Model_Search extends  Db
{
    public function __construct() {
        parent::__construct();
    }

    public function getSearchNews($search) {
        $search = "%{$search}%";
        $sql = $this->connection->prepare("SELECT * FROM news LEFT JOIN category ON news.news_cat_id = category.cat_id WHERE news_title LIKE :search");
        $sql->bindParam(':search', $search, PDO::PARAM_STR);
        $sql->execute();
        return $sql->fetchAll(PDO::FETCH_ASSOC);
    }

}
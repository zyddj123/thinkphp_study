<?php 
namespace app\index\model;

use think\Model;

class Cate extends Model
{
    protected $pk = 'id';

    public function blog()
    {
        return $this->hasMany('Blog')->with('Content');
    }

}
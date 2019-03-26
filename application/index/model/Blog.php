<?php 
namespace app\index\model;

use think\Model;

class Blog extends Model
{
    protected $pk = 'id';

    public function Content()
    {
        return $this->hasOne('Content');
    }

    public function comment()
    {
        return $this->belongsToMany('User','Comment');
    }

}
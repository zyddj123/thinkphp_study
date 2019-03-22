<?php 
namespace app\index\model;

use think\Model;

class Banji extends Model
{
    protected $pk = 'id';

    public function user()
    {
        return $this->hasMany('User','id','id');
    }

}
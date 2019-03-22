<?php 
namespace app\index\model;

use think\Model;

class User extends Model
{
    protected $pk = 'id';

    public function banji()
    {
        return $this->hasOne('Banji','id','banji_id');
    }
}
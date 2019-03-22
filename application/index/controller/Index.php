<?php

namespace app\index\controller;

use think\Controller;
use think\Db;

class Index extends Controller
{
    public function hello()
    {
        $data = Db::name('data')->find();
        $this->assign('result', $data);

        return $this->fetch();
    }

    public function insert()
    {
        for ($i = 1; $i < 15; $i++) {
            $data = array(
                'class_name' => $i.'班',
            );
            var_dump(db('class')->insertGetId($data));
        }
    }

    public function select()
    {
        $data = db('user')->alias('u')->where('u.id',12)->join('class c','u.class_id = c.id')->select('u.id,u.uname,u.');
        // $this->assign('hello',$data);
        return view('hello',$data);
    }

    public function delete()
    {
        $id = db('user')->delete(6);
        var_dump($id);
    }

    public function update()
    {
        $id = db('user')->where('id',10)->update(['uname'=>'zhangsan9']);
        var_dump($id);
    }
}

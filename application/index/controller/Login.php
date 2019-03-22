<?php

namespace app\index\controller;

use think\Controller;
use think\Db;
use think\Request;
use app\index\model\User;

class Login extends Controller
{
    public function login()
    {
        return view('login');
    }
    public function login_check()
    {
        $uname = Request::instance()->post('uname');
        $upwd = Request::instance()->post('upwd');
        // $data = Db::name('user')->where('uname',$uname)->find();
        // var_dump(empty($data)?123:$data);
        $user = new User();
        // $data = $user->list();
        $data = User::all();
        foreach ($data as $key => $value) {
            echo $data[$key]->banji;
        }
    }
}

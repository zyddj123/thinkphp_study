<?php

namespace app\index\controller;

use think\Controller;
use think\Db;
use think\Request;
use app\index\model\User;
use app\index\model\Blog;

class Login extends Controller
{
    public function login()
    {
        return view('login');
    }
    public function login_check()
    {
        // $uname = Request::instance()->post('uname');
        // $upwd = Request::instance()->post('upwd');
        // // $data = Db::name('user')->where('uname',$uname)->find();
        // // var_dump(empty($data)?123:$data);
        // $user = new User();
        // // $data = $user->list();
        // // $data = User::all();

        // foreach ($data as $key => $value) {
        //     echo $data[$key]->banji;
        // }
        // $cate = collection(model('Cate')->with('blog')->select())->toArray();
        // foreach ($cate as $key => $value) {
        //     var_dump($value['blog']);
        // }
        // $blog = collection(model('User')->with('blog')->select())->toArray();
        // foreach ($blog as $key => $value) {
        //     var_dump($value['blog']);
        // }
        // var_dump($blog);
        // $user = User::get(15);
        // var_dump($user->comment);
        $blog = Blog::get(1);
        // var_dump($blog->comment);
        foreach ($blog->comment as $key => $value) {
            var_dump($value->toArray());
        }
    }
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Logs;

class pruebasController extends Controller
{


  public function testOrm(){

    $logs = Logs::all();

    foreach ($logs as $log) {
      echo $log->user->name;
    }

    die();
  }
}

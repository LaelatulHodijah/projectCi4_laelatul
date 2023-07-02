<?php

namespace App\Controllers;

use App\Controllers\BaseController;

// step 1
use App\Models\GenreModel;

class Genre extends BaseController
{
    

    protected $genre;
    public function __construct()
    {
        $this->genre = new GenreModel();
    }

  

}

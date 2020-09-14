<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class JSONResponseController extends AbstractController
{
    /**
     * @Route("/j/s/o/n/response", name="j_s_o_n_response")
     */
    public function index()
    {
        return $this->json([
            'message' => 'Welcome to your new controller!',
            'path' => 'src/Controller/JSONResponseController.php',
        ]);
    }
}

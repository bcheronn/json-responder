<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class JSONResponseController extends AbstractController
{
    /**
     * @Route("/json/response", name="json_response")
     */
    public function index()
    {
        return $this->json([
            "message" => "Welcome to your new controller!",
            "path" => "src/Controller/JSONResponseController.php",
            "purpose" => "Create a project using Symfony serving a JSON response"
        ]);
    }
}
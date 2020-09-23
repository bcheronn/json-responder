<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Annotation\Route;

class JSONResponseController extends AbstractController
{
    /**
     * @Route("/json/response")
     * @return JsonResponse
     */
    public function index(): JsonResponse
    {
        return $this->json([
            "message" => "Welcome to your new controller!",
            "path" => "src/Controller/JSONResponseController.php",
            "purpose" => "Create a project using Symfony serving a JSON response"
        ]);
    }
}

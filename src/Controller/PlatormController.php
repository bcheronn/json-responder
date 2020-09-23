<?php

namespace App\Controller;

use App\Repository\PlatformRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class PlatormController extends AbstractController
{
    /**
     * @Route("/platforms")
     * @param PlatformRepository $platformRepository
     */
    public function list_platforms(PlatformRepository $platformRepository)
    {
        return $this->json($platformRepository->findAll());
    }
}

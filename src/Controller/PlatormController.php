<?php

namespace App\Controller;

use App\Repository\PlatformRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class PlatormController extends AbstractController
{
    /**
     * @Route("/platforms", name="platforms")
     */
    public function platforms_index(PlatformRepository $platformRepository)
    {
        $platforms = $platformRepository->findAll();

        return $this->json($platforms);
    }
}

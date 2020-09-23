<?php

namespace App\Controller;

use App\Repository\CommentRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class CommentController extends AbstractController
{
    /**
     * @Route("/comments")
     * @param CommentRepository $commentRepository
     */
    public function list_comments(CommentRepository $commentRepository)
    {
        return $this->json($commentRepository->findAll());
    }
}

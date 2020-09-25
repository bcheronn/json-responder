<?php

namespace App\Controller;

use App\Repository\CommentRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
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

    /**
     * @Route("/game/{gameId}/comment", methods={"POST"})
     * @param CommentRepository $commentRepository
     */
    public function add_comment(CommentRepository $commentRepository, Request $request, int $gameId): JsonResponse
    {
        $content = $request->getContent();
        $data = json_decode($content);

        return $this->json($data);
    }
}

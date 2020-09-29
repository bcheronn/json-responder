<?php

namespace App\Controller;

use App\Entity\Comment;
use App\Repository\CommentRepository;
use App\Repository\GameRepository;
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
    public function add_comment(GameRepository $gameRepository, Request $request, int $gameId): JsonResponse
    {
        $content = $request->getContent();
        $data = json_decode($content, true);

        $game = $gameRepository->find($gameId);

        // $commentContent = $data['comment']['content'];
        // $author = $data['author'];
        // $date = new \DateTime();

        $comment = new Comment;

        $comment
            ->setContent($data['comment']['content'])
            ->setAuthor($data['comment']['author'])
            ->setDate(new \DateTime())
            ->setGame($game);
        // dump($comment);

        $entityManager = $this->getDoctrine()->getManager();

        $entityManager->persist($comment);
        $entityManager->flush();
        // $commentRepository->save($commentContent, $author, $date, $gameId);

        return $this->json($comment);
    }
}

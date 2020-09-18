<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class GamesController extends AbstractController
{
    /**
     * @Route("/games/hardcoded", name="games_hardcoded")
     */
    public function hard_coded_games()
    {
        return $this->json(["games" =>
        [
            [
                "ID" => 2,
                "Name" => "Super Mario Bros.",
                "Platform" => "NES",
                "Year" => 1985,
                "Genre" => "Platform",
                "Publisher" => "Nintendo"
            ],
            [
                "ID" => 6,
                "Name" => "Tetris",
                "Platform" => "GB",
                "Year" => 1989,
                "Genre" => "Puzzle",
                "Publisher" => "Nintendo"
            ],
            [
                "ID" => 44,
                "Name" => "Halo 3",
                "Platform" => "X360",
                "Year" => 2007,
                "Genre" => "Shooter",
                "Publisher" => "Microsoft Game Studios"
            ],
            [
                "ID" => 45,
                "Name" => "Grand Theft Auto V",
                "Platform" => "PS4",
                "Year" => 2014,
                "Genre" => "Action",
                "Publisher" => "Take-Two Interactive"
            ],
            [
                "ID" => 55,
                "Name" => "Gran Turismo 5",
                "Platform" => "PS3",
                "Year" => 2010,
                "Genre" => "Racing",
                "Publisher" => "Sony Computer Entertainment"
            ],
            [
                "ID" => 61,
                "Name" => "Just Dance 3",
                "Platform" => "Wii",
                "Year" => 2011,
                "Genre" => "Misc",
                "Publisher" => "Ubisoft"
            ]
        ]]);
    }
}

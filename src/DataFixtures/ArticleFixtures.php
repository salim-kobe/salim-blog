<?php

namespace App\DataFixtures;

use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\Persistence\ObjectManager;
use App\Entity\Article;
use App\Entity\Category;
use App\Entity\Comment;

class ArticleFixtures extends Fixture
{
    public function load(ObjectManager $manager)
    {
        // faker = permet d'utiliser des fausses données
        $faker = \Faker\Factory::create('fr_FR');

        // création 3 fausses catégories 
        for ($i = 1; $i <= 3; $i++){
            $category = new Category();
            $category->setTitle($faker->sentence())
                    ->setDescription($faker->sentence());

            $manager->persist($category);
        }

        // création entre 4 et 6 faux articles
        for ($j = 1; $j <= mt_rand(4, 6); $j++){
            $article = new Article();

            $content = '<p>' . join($faker->paragraphs(5), '</p><p>') . '</p>';

            $article->setTitle($faker->sentence())
                    ->setContent($content)
                    ->setImage($faker->imageUrl())
                    ->setCreatedAt($faker->dateTimeBetween('-6 months'))
                    ->setCategory($category);

            $manager->persist($article);
        }

            // commentaires
            for ($k = 1; $k <= mt_rand(4, 10); $k++){
                $comment = new Comment();
    
                $content = '<p>' . join($faker->paragraphs(5), '</p><p>') . '</p>';


    
                $comment->setAuthor($faker->name)
                        ->setContent($content)
                        ->setCreatedAt($faker->dateTimeBetween('-6 months'))
                        ->setArticle($article);
    
                $manager->persist($comment);
        }

        

        $manager->flush(); //permet d'executer les fonctions de public function load
    }
}

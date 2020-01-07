<?php

namespace App\Controller;

use App\Entity\Article;
use App\Entity\Comment;
use App\Form\ArticleType;
use App\Form\CommentType;

use App\Repository\ArticleRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class BlogController extends AbstractController
{
    /**
     * @Route("/blog", name="blog")
     */
    public function index(ArticleRepository $repo)
    {
        $articles = $repo->findAll();

        return $this->render('blog/index.html.twig',
            [
            'controller_name' => 'BlogController.php',
            'articles' => $articles
        ]);
    }

    /**
     * @Route("/", name="home")
     */
    public function home()
    {
        return $this->render('blog/home.html.twig');
    }


    /**
     * @Route("/blog/new", name="blog_create")
     * @Route("/blog/{id}/edit", name="blog_edit")
     */
    public function form(Article $article = null, Request $request, EntityManagerInterface $manager) 
    //$article = null, parfois l'article n'existera pas 
    //Request = classe qui permet de récupérer les données submit
    //EntityManagerInterface permet de gérer une ligne d'une table (insert, update, delete)
    {
        if(!$article) { //si l'article est null
            $article = New Article();
        }

        $form = $this->createForm(ArticleType::class, $article);

        $form->handleRequest($request); // récupère les données du formulaire

        if($form->isSubmitted() && $form->isValid()) {// si le form a été envoyé et qu'il est conforme
            if(!$article->getId()){
                $article->setCreatedAt(new \DateTime());
            }
            
            $manager->persist($article);
            $manager->flush();// ajout dans la bdd

            return $this->redirectToRoute('blog_show', ['id' => $article->getId()]);
        } 

        return $this->render('blog/create.html.twig', [
            'formArticle' => $form->createView(),
            'editMode' => $article->getId() !== null
        ]);
    }

    
     /**
     * @Route("/blog/{id}", name="blog_show")
     */
    public function show(ArticleRepository $repo, $id, Request $request, EntityManagerInterface $manager)
    {
        $article = $repo->find($id);

        $comment = new Comment();
        $form = $this->createForm(CommentType::class, $comment);

        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()) {
            $comment->setCreatedAt(new \DateTime)
                    ->setArticle($article);
            
            $manager->persist($comment);
            $manager->flush();

            return $this->redirectToRoute('blog_show', ['id' => $article->getId()]);
        } 

        

        return $this->render('blog/show.html.twig', [
            'article' => $article,
            'commentForm' => $form->createView()
        ]);
    }
}

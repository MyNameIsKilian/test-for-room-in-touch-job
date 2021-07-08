# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
kiki = User.new(nickname: "Kiki", email: "kiki@gmail.com", password: "secret")
kiki.save!

article1 = Article.new(visible: true, title: "Super article", content: "
    - L'app est une app d'articles publiés par les personnes inscrites sur l'app (users)
    - Chaque utilisateur non connecté doit pouvoir consulter la liste de tous les articles et pouvoir faire une recherche sur le titre dans cet index.
    - Chaque utilisateur non connecté doit pouvoir consulter chaques article de façon individuel.
    - Si l'utilisateur est connecté il doit pouvoir upvote l'article et le commenter (afficher les commentaires/questions en dessous de l'article).
    - Les utilisateurs non connectés doivent pouvoir voir les commentaires mais ne peuvent pas en poster.
    - Un utilisateur connecté doit pouvoir écrire un article avec un éditeur rich text (mise en gras, italique... etc) et le publier en mode publique ou non.
    - Si l'article est en mode privé il ne doit être visible que par son créateur et de personne d'autre et doit pouvoir passer en visibilité publique en un clic sur un bouton.")
article1.user = kiki
article1.save!

article2 = Article.new(visible: true, user: kiki, title: "Meilleur article", content: "
    - L'app est une app d'articles publiés par les personnes inscrites sur l'app (users)
    - Chaque utilisateur non connecté doit pouvoir consulter la liste de tous les articles et pouvoir faire une recherche sur le titre dans cet index.
    - Chaque utilisateur non connecté doit pouvoir consulter chaques article de façon individuel.
    - Si l'utilisateur est connecté il doit pouvoir upvote l'article et le commenter (afficher les commentaires/questions en dessous de l'article).
    - Les utilisateurs non connectés doivent pouvoir voir les commentaires mais ne peuvent pas en poster.
    - Un utilisateur connecté doit pouvoir écrire un article avec un éditeur rich text (mise en gras, italique... etc) et le publier en mode publique ou non.
    - Si l'article est en mode privé il ne doit être visible que par son créateur et de personne d'autre et doit pouvoir passer en visibilité publique en un clic sur un bouton.")
article2.user = kiki
article2.save!

article3 = Article.new(visible: false, user: kiki, title: "Top", content: "
    - L'app est une app d'articles publiés par les personnes inscrites sur l'app (users)
    - Chaque utilisateur non connecté doit pouvoir consulter la liste de tous les articles et pouvoir faire une recherche sur le titre dans cet index.
    - Chaque utilisateur non connecté doit pouvoir consulter chaques article de façon individuel.
    - Si l'utilisateur est connecté il doit pouvoir upvote l'article et le commenter (afficher les commentaires/questions en dessous de l'article).
    - Les utilisateurs non connectés doivent pouvoir voir les commentaires mais ne peuvent pas en poster.
    - Un utilisateur connecté doit pouvoir écrire un article avec un éditeur rich text (mise en gras, italique... etc) et le publier en mode publique ou non.
    - Si l'article est en mode privé il ne doit être visible que par son créateur et de personne d'autre et doit pouvoir passer en visibilité publique en un clic sur un bouton.")
article3.user = kiki
article3.save!


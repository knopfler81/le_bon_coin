## #1
#### J'ai utilisé un template (du Wagon) pour générer mon application. Il y a quelques gems utiles installées, pour gagner du temps (devise, simple_form, bootstap, font_aswome, pry_bye_bug, pg, better_error etc...)
#### Ce template comporte également une pré organisation du CSS

#### Il faut faire un rake db:seed pour que les catégories soient générées
(Pour l'exemple, le rake db:seed génère aussi des annonces )

#### Système de modération des annonces crée avec Active Admin
#### Créer un utilisateur via le formulaire
#### Dans `rails c` passer cet utilisateur en admin = true
```
u = User.find_by_email(user@user.com)
u.admin = true
u.save

```

#### localhost:3000/admin

#### Le modérateur peut aller sur une annonce et la marquer à `
published` pour que cette derniere s'affiche sur le site

###Gérer app
###Ajouter un boolean admin au user, ainsi qu'un role (pro ou particulier)
###Créer model advert
###Créer model category 
###Migration category_id ->model advert
###Faire les associations entres user advert category
###Créer controller adverts
###Créer les routes pour adverts
###Créer les views pour adverts
###Intégrer attachinary pour les photos adverts



#### J'ai utilisé un template (du Wagon) pour générer mon application. Il y a quelques gems utiles installées, pour gagner du temps ( devise, simple_form, bootstap, font_aswome, pry_bye_bug, pg, better_error etc...)
#### Ce template comporte également une pré organisation du CSS

#### Il faut faire un rake db:seed pour que les catégories soient générées

#### Système de modération des annonces crée avec Active Admin
#### Créer un utilisateur via le formulaire
#### Dans `rails c` passer cet utilisateur en admin = true
```
u = User.find_by_email(user@user.com)
u.admin = true
u.save

```

#### localhost:3000/admin

#### Le modérateur peut aller sur une annonce et la marquer à publier pour que cette derniere s'affiche sur le site



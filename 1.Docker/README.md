# :two: Docker

#### [:tada: Participation](.scripts/Participation.md)

[Docker](../D.Docker)

[:tada: Example MySQL](Example.md)


Ce laboratoire t'apprendra à créer ton propre conteneur `Docker` en créant un fichier `Dockerfile`, à l'enrichir avec des commandes `shell` sous Unix en créant un fichier `entrypoint.sh`, et t'apprendra les bases du [`CI/CD`](https://en.wikipedia.org/wiki/CI/CD) `Continuous Integration` et `Continuous Delivery` avec le service `github actions` de `github.com`.

Une section [Indices](#fire-indices) est fournie ci-dessous comme documentation d'aide à terminer ce laboratoire.

Tu pourras t'appuyer d'une documentation en ligne pour continuer ce laboratoire en améliorant le fichier `Dockerfile` avec le [cours en ligne suivant](https://www.linkedin.com/learning/docker-essential-training-3-image-creation-management-and-registry/analyzing-a-dockerfile)

## :a: :id:

* Créer un répertoire avec votre :id:

* Créer votre fichier `README.md`

```
$ touch README.md
```

## :b: Laboratoire

:one: Écrire les scripts en suivant le laboratoire ci-dessous dans [Github Leaning Lab](https://lab.github.com/CollegeBoreal):

https://lab.github.com/CollegeBoreal/lab-github-actions:-bonjour-monde


:two: Copier votre scripts dans le cours en remplaçant :id: par votre :id: github :octocat: :

https://github.com/:id:/lab-bonjour-github-actions

- [ ] Copier les scripts:

Par example:

  - [ ] Copier le fichier `Dockerfile` dans votre :id: `Boréal` 

  - [ ] Copier le fichier `entrypoint.sh` dans votre :id: `Boréal` 


- [ ] Modifie ton fichier README.md pour plus de documentation


En un mot, récupérer le travail que vous avez fait à travers [Github Leaning Lab](https://lab.github.com/CollegeBoreal) et le mettre dans cette leçon [1.Docker](../1.Docker)

:three: Amélioration

En rappel, pour éxécuter localement son fichier `Dockerfile`, on execute la commande :

`$ docker image build --tag b`:id:`:1.0 .`

`$ docker container run --tty --env INPUT_MON_NOM="Draman" b`:id:`:1.0`

`Bonjour tout le monde mon nom est Draman`

:bookmark: Le but de l'exercice est de l'améliorer le `Dockerfile` soit cherchant des examples sur Internet ou dans le livre au Chapitre 8

Décrire les commandes utilisées pour l'amélioration

:four: Docker Image

Pour visualiser les couches images de l'image créée

`% docker image history b`:id:`:1.0`
```
IMAGE               CREATED             CREATED BY                                      SIZE                COMMENT
a555cf89a1b7        40 seconds ago      /bin/sh -c #(nop)  ENTRYPOINT ["/entrypoint.…   0B                  
4bb76bfb1e74        40 seconds ago      /bin/sh -c chmod +x /entrypoint.sh              65B                 
c010b45de5b3        40 seconds ago      /bin/sh -c #(nop) ADD file:44be7c7e599db7b1d…   65B                 
4e5021d210f6        2 weeks ago         /bin/sh -c #(nop)  CMD ["/bin/bash"]            0B                  
<missing>           2 weeks ago         /bin/sh -c mkdir -p /run/systemd && echo 'do…   7B                  
<missing>           2 weeks ago         /bin/sh -c set -xe   && echo '#!/bin/sh' > /…   745B                
<missing>           2 weeks ago         /bin/sh -c [ -z "$(apt-get indextargets)" ]     987kB               
<missing>           2 weeks ago         /bin/sh -c #(nop) ADD file:594fa35cf803361e6…   63.2MB   
```

# :fire: Indices 

Tu auras besoin de:

:round_pushpin: créer et manipuler une branche avec `git`:

https://github.com/CollegeBoreal/Tutoriels/tree/main/0.GIT/.branch

:round_pushpin: Créer une demande d'extraction `pull request` par le biais de l'interface web de github: 

https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request#creating-the-pull-request

:round_pushpin: Creér Répertoire Imbriqué

par exemple pour créer `.github/workflows` utilise la commande suivante avec le parametre `-p`:

```
$ mkdir -p .github/workflows
```

# References

https://docs.docker.com/develop/develop-images/dockerfile_best-practices/

https://phoenixnap.com/kb/how-to-containerize-applications

https://phoenixnap.com/kb/docker-cmd-vs-entrypoint

https://livebook.manning.com/book/docker-in-action/chapter-8

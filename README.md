Builder l'image :

```
docker build -t card-game docker/
```

Générer les images :

```
docker run -it -v $PWD/data:/app/data -v $PWD/_output:/app/_output card-game ruby deck.rb
```

Clean output folders:

```
rm -rf $PWD/_output-level1-challenges
rm -rf $PWD/_output-level2-challenges
rm -rf $PWD/_output-level3-challenges
rm -rf $PWD/_output-level1-concepts
rm -rf $PWD/_output-level2-concepts
rm -rf $PWD/_output-level3-concepts
rm -rf $PWD/_output-level1-solutions
rm -rf $PWD/_output-level2-solutions
rm -rf $PWD/_output-level3-solutions
```

Run all:

```
docker run -it -v $PWD/data-level1-challenges:/app/data -v $PWD/_output-level1-challenges:/app/_output card-game ruby deck.rb
docker run -it -v $PWD/data-level1-concepts:/app/data -v $PWD/_output-level1-concepts:/app/_output card-game ruby deck.rb
docker run -it -v $PWD/data-level1-solutions:/app/data -v $PWD/_output-level1-solutions:/app/_output card-game ruby deck.rb

docker run -it -v $PWD/data-level2-challenges:/app/data -v $PWD/_output-level2-challenges:/app/_output card-game ruby deck.rb
docker run -it -v $PWD/data-level2-concepts:/app/data -v $PWD/_output-level2-concepts:/app/_output card-game ruby deck.rb
docker run -it -v $PWD/data-level2-solutions:/app/data -v $PWD/_output-level2-solutions:/app/_output card-game ruby deck.rb

docker run -it -v $PWD/data-level3-challenges:/app/data -v $PWD/_output-level3-challenges:/app/_output card-game ruby deck.rb
docker run -it -v $PWD/data-level3-concepts:/app/data -v $PWD/_output-level3-concepts:/app/_output card-game ruby deck.rb
docker run -it -v $PWD/data-level3-solutions:/app/data -v $PWD/_output-level3-solutions:/app/_output card-game ruby deck.rb
```

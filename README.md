## Sprawozdanie z Programowanie Aplikacji w Chmurze Obliczeniowej
### Wykonał Patryk Pawelec s97696

## LAB5-CHMURA

## Zbudowanie Obrazu Docker

docker build --build-arg VERSION=1.0.2 -t zadanie5 .

Wynik działania polecenia:
![image](https://github.com/Platynus/LAB5-CHMURA/assets/56522713/de84696c-579b-44a8-ad9f-94700c3e9750)


## Uruchomienie Obrazu Docker
  
docker run -p 8080:80 docker.io/library/zadanie5

Wynik działania polecenia:
![image](https://github.com/Platynus/LAB5-CHMURA/assets/56522713/9619ce72-2ff1-465b-9a9d-ae7b48e3527c)

## Sprawdzenie działania serwera
![image](https://github.com/Platynus/LAB5-CHMURA/assets/56522713/fbd0d159-0d77-4b15-95ef-f3bae60cc5f2)

# packarch-packages
 // Packages : Packarch Specifiques

 Ne pas oublier de régénérer les sommes de controle dans les packages modifiés qui en possédent un:

 ```
 updpkgsums
 ```
 Ensuite executez les scripts :
 ```
 ./build.sh
 ./build-aur.sh
 ./chaotic-aur.sh
 ```

 Une fois les paquets construits ils seront copiés dans le dépot de packages (dossier x86_64) si vous l'avez cloné.

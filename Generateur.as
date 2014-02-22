package{
import Citoyen;

/*
Brouillon du générateur de citoyen, le problème vient du fait que je peux générer les paramètres mais pas les noms de variable,
il faudra donc sûrement instancier les citoyens manuellement même si on peut générer leurs paramètres aléatoirement
(à moins que quelqu'un n'ait une solution)
*/

  public class Generateur{
  
    private var _tabNoms : Array = ("Nom1","Nom2","Nom3","Nom4","Nom5","Nom6","Nom7","Nom8","Nom9","Nom10");
    private var _tabSprites : Array = (Sprite1, Sprite2, Sprite3, Sprite4, Sprite5);  //temporaire, changement lorsque l'implémentation de sprites sera connu
    
    public function randomRange(min:Number, max:Number):Number  //nombre aléatoire compris entre deux bornes (nécessaire de convertir en int après)
    {
      return Math.random() * (max - min) + min;
    }
    
    public function creerCitoyen():void //crée un citoyen (syntaxe approximative), nécessaire d'accéder au constructeur de Citoyen
    {
      var _nom : String;
      var _age : int;
      var _sprite : Sprite;
      
      _nom = _tabNoms[(int)(randomRange(0,9))];
      _age = (int)(randomRange(10,90));
      
      if(_age >= 10 && _age <= 15)
      {
	_sprite = _tabSprites[0];
      }
      if(_age > 15 && _age <= 25)
      {
	_sprite = _tabSprites[1];
      }
      if(_age > 25 && _age <= 40)
      {
	_sprite = _tabSprites[2];
      }
      if(_age > 40 && _age <= 60)
      {
	_sprite = _tabSprites[3];
      }
      if(_age > 60 && _age <= 90)
      {
	_sprite = _tabSprites[4];
      }
      
    }
      
  }
  
}

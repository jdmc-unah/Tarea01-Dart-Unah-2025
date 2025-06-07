/*
  Cree una clase Libro con las propiedades titulo, autor, y anioPublicacion. 
  Crea una clase Biblioteca que contenga una lista de libros y funciones para: 
    a. Agregar libros. 
    b. Eliminar libros. 
    c. Buscar libros por autor. 
    d. Listar todos los libros ordenados por año de publicación. 
*/

void main()
{
    Biblioteca libreria = Biblioteca();
    libreria.Agregar(Libro("El rey no tiene quien le escriba."," Gabriel Garcia Marquez ", 1961));
    libreria.Agregar(Libro("La Iliada", " Homero ", 1450));

    libreria.Ordenar();

}

class Libro {
   String titulo;
   String autor;
   int publicacion;

   Libro(this.titulo,this.autor,this.publicacion);
}

class Biblioteca {
  List<Libro> libros = [];

  void Agregar(Libro libro)
  {
    libros.add(libro);
  }
  
  void Eliminar(String nombre)
  {
    libros.removeWhere((libro) => libro.titulo == nombre);
  }

  List<Libro> Buscar(String Autor)
  {
    return libros.where((libro) => libro.autor == Autor).toList();
  }

  void Ordenar()
  {
    libros.sort((a, b) => a.publicacion.compareTo(b.publicacion));
    libros.forEach((libro) => print("${libro.titulo},${libro.autor},${libro.publicacion}"));
  }

}
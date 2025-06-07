/*
    Ejercicio 2: Crea un programa que devuelva una lista con todos los elementos únicos de otra lista.
*/

void main ()
{
    List<int> lista = [1,1,2,3,4,5,5,6,7,8,8,9,10];
    print("Lista incial:");
    print(lista);
    print("Lista de elementos que no se repiten:");
    print(unicos(lista));
    
}

List<int> unicos(List<int> lista)
{
    return lista.where((valor) => lista.indexOf(valor) == lista.lastIndexOf(valor)).toList();
}




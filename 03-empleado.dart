/**
 * 3. Cree una clase Empleado que contenga las propiedades nombre, puesto y salario. Luego cree 
una lista de “empleados” y una función que calcule el salario total de todos los empleados y otra 
que calcule el salario promedio.
 */

void main() {
  List<Empleado> empleados = [
    Empleado('Peter Parker', 'Fotografo de Campo', 15000),
    Empleado('Bruce Banner', 'Científico', 40000),
    Empleado('Barry Allen', 'Medico Forense', 30000),
  ];

  print('Salario total: L ${salarioTotal(empleados)}');
  print('Salario Promedio: L ${salarioPromedio(empleados)}');
}

class Empleado {
  final String nombre;
  final String puesto;
  final double salario;

  Empleado(this.nombre, this.puesto, this.salario);
}

double salarioTotal(List<Empleado> empleados) {
  double total = 0;

  empleados.forEach((empleado) {
    total += empleado.salario;
  });

  return total;
}

double salarioPromedio(List<Empleado> empleados) {
  double promedio = double.parse(
    (salarioTotal(empleados) / empleados.length).toStringAsFixed(2),
  ); //redondea a dos digitos decimales y convierte a double para poder devolverlo

  return promedio;
}

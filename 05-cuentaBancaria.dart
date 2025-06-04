/**
 * 5. Cree una clase CuentaBancaria que tenga las propiedades titular y saldo. 
 Implemente métodos para:
    a. Depositar dinero.
    b. Retirar dinero (asegurándote de que el saldo no sea negativo).
    c. Consultar el saldo.
 */

void main() {
  final cuenta1 = CuentaBancaria('John Constantine', 50000);

  cuenta1.consultarSaldo();

  cuenta1.depositar(10000);

  try {
    cuenta1.retirar(70000);
  } catch (e) {
    print(e);
  }

  try {
    cuenta1.retirar(5000);
  } catch (e) {
    print(e);
  }

  cuenta1.consultarSaldo();
}

class CuentaBancaria {
  final String titular;
  double saldo;

  CuentaBancaria(this.titular, this.saldo);

  void consultarSaldo() {
    print('El saldo de la cuenta de ${this.titular} es: L ${this.saldo}');
  }

  void depositar(double monto) {
    this.saldo += monto;
    print('Se depositó la cantidad de: L $monto');
  }

  void retirar(double monto) {
    double saldoDisponible = this.saldo - monto;

    if (saldoDisponible < 0) {
      throw 'Error: El saldo disponible no puede quedar en negativo';
    }

    this.saldo = saldoDisponible;
    print('Se retiró la cantidad de: L $monto');
  }
}

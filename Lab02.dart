class Alumno {
  String? id;
  String? nombreCompleto;
  double? nota1;
  double? nota2;
  double? nota3;

  Alumno.conId(this.id, this.nombreCompleto);

  Alumno.conNotas(this.nota1, this.nota2, this.nota3);

  double calcularPromedio() {
    List<double> notas = [nota1!, nota2!, nota3!];
    double menorNota = notas[0];

    for (double nota in notas) {
      if (nota < menorNota) {
        menorNota = nota;
      }
    }

    double total = (nota1! + nota2! + nota3!);
    return (total - menorNota) / 2;
  }

  @override
  String toString() {
    return 'ID: $id, Nombre: $nombreCompleto, Nota1: $nota1, Nota2: $nota2, Nota3: $nota3';
  }
}

void main() {
  Alumno a1 = Alumno.conNotas(17, 18.0, 9.0);
  a1.id = 'A001';
  a1.nombreCompleto = 'Juan Sánchez';

  Alumno a2 = Alumno.conId('A002', 'María López');
  a2.nota1 = 16.0;
  a2.nota2 = 12.0;
  a2.nota3 = 20.0;

  print(a1.toString());
  print(a2.toString());

  print(a1.calcularPromedio());
  print(a2.calcularPromedio());
}

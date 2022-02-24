class Diagnostico {
  Diagnostico(
      {this.nombre,
      this.tel,
      this.r1,
      this.r2,
      this.r3,
      this.r4,
      this.r5,
      this.r6,
      this.r7,
      this.r8,
      this.r9});

  String? nombre;
  String? tel;
  int? r1;
  int? r2;
  int? r3;
  int? r4;
  int? r5;
  int? r6;
  int? r7;
  int? r8;
  int? r9;
  int? resultado;
  DateTime? date;
  String? msj;

  void show() {
    print('$nombre,$tel,$r1,$r2,$r3,$r4,$r5,$r6,$r7,$r8,$r9');
  }

  int calcResultado() {
    date = DateTime.now();
    int suma = r1! + r2! + r3! + r4! + r5! + r6! + r7! + r8! + r9!;
    resultado = suma;
    if (resultado! <= 4) {
      msj = 'Mínima';
      return 1;
    } else if (resultado! > 5 && suma <= 14) {
      msj = 'Media';
      return 2;
    } else if (resultado! >= 15) {
      msj = 'Alta';
      return 3;
    }
    print(resultado);
    return 0;
  }

  Map<String, dynamic> toMap() {
    return {
      'nombre ': nombre,
      'tel': tel,
      'r1': r1,
      'r2': r2,
      'r3': r3,
      'r4': r4,
      'r5': r5,
      'r6': r6,
      'r7': r7,
      'r8': r8,
      'r9': r9,
      'resultado': resultado,
      'date': date,
      'msj': msj
    };
  }
}

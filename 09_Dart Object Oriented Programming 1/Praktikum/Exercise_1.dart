class Hewan {
  double berat;

  Hewan({required this.berat});     // Constructor
}

class Mobil {
  double kapasitas;
  List<Hewan> muatan = [];

  Mobil({required this.kapasitas});

  void tambahMuatan(Hewan animal) {
    double currentLoad = 0.0;
    for (Hewan a in muatan) {
      currentLoad += a.berat;
    }
    if (currentLoad + animal.berat <= kapasitas) {
      muatan.add(animal);
      print('> Menanmbahkan hewan ke dalam kendaraan dengan berat ${animal.berat} kg...');
    } else {
      print('>> Kapasitas kendaraan penuh!!! tidak bisa menambahkan hewan seberat ${animal.berat} kg...');
    }
  }
}

void main() {
  var truk = Mobil(kapasitas: 100);

  var kucing = Hewan(berat: 5);
  var anjing = Hewan(berat: 10);
  var ayam = Hewan(berat: 2);
  var sapi = Hewan(berat: 100);

  truk.tambahMuatan(kucing);
  truk.tambahMuatan(anjing);
  truk.tambahMuatan(ayam);
  truk.tambahMuatan(sapi);

  print('>>> Total payload: ${truk.muatan.length} animals.');

}

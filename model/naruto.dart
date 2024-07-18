class Naruto {
  final String narutoName;
  final String narutoLocation;
  final String narutoSpeciality;
  final String _narutoKucukResim;
  final String _narutoBuyukResim;

  get getNarutoName => this.narutoName;

  get getNarutoLocation => this.narutoLocation;

  get getNarutoSpeciality => this.narutoSpeciality;

  get narutoKucukResim => this._narutoKucukResim;

  get narutoBuyukResim => this._narutoBuyukResim;

  Naruto(this.narutoName, this.narutoLocation, this.narutoSpeciality,
      this._narutoKucukResim, this._narutoBuyukResim);
  @override
  String toString() {
    return '$narutoName - $_narutoBuyukResim';
  }
}

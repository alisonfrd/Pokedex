class Pokemon {
  final int id;
  final String number;
  final String name;
  final String img;
  final List<String> type;
  final String height;
  final String weight;
  final String candy;
  final int candyCount;
  final String egg;
  final double spawnChance;
  final double avgSpawn;
  final String spawnTime;
  final List<double> multipliers; 
  final List<String> weaknesses;

  Pokemon({this.id, this.number, this.name, this.img, this.type, this.height, this.weight, this.candy, this.candyCount, this.egg, this.spawnChance, this.avgSpawn, this.spawnTime, this.multipliers, this.weaknesses});

}
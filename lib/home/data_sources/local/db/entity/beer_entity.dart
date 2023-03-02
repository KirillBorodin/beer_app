import 'package:beer_app/home/business_objects/beer.dart';
import 'package:floor/floor.dart';

@Entity(tableName: 'beer')
class BeerEntity {
  @primaryKey
  final int id;
  final String name;
  @ColumnInfo(name: 'first_brewed')
  final String description;
  @ColumnInfo(name: 'image_url')
  final String imageUrl;

  BeerEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
  });
}


extension BeerEntityExtension on BeerEntity {
  Beer toBo() {
    return Beer(
      id: id,
      name: name,
      description: description,
      imageUrl: imageUrl,
    );
  }
}

class Peliculas{
List<Pelicula>items=new List();
// ↑ Va a contener una Lista de la clase Peliculas denominada items.
Peliculas(); // Este constructor por el momento no contendrá nada.
Peliculas.fromJsonList(List<dynamic>jsonList){ //Creamos otro constructor de tipo dynamic
// ↑ haciendo referencia a un jsonList
  if(jsonList==null) return; // Si jsonList es nulo hace un return y termina.
  for(var item in jsonList){ // Si hubiese datos devuelve un Map en un jsonList
    final pelicula= new Pelicula.fromJsonMap(item); // Crea una nueva instancia de pelicula
    // y lo envía al constructor fromJsonMap
    items.add(pelicula); //La nueva instancia de pelicula lo almacena en items.
  }
}
}
class Pelicula {

  double popularity;
  int voteCount;
  bool video;
  String posterPath;
  int id;
  bool adult;
  String backdropPath;
  String originalLanguage;
  String originalTitle;
  List<int> genreIds;
  String title;
  double voteAverage;
  String overview;
  String releaseDate;

  Pelicula({
    this.popularity,
    this.voteCount,
    this.video,
    this.posterPath,
    this.id,
    this.adult,
    this.backdropPath,
    this.originalLanguage,
    this.originalTitle,
    this.genreIds,
    this.title,
    this.voteAverage,
    this.overview,
    this.releaseDate,
  });

Pelicula.fromJsonMap(Map <String, dynamic>json){
    popularity      =json['popularity']/1; // entre 1 para que el valor  lo convierta en double
    voteCount       =json['vote_count'];
    video           =json['video'];
    posterPath      =json['poster_path'];
    id              =json['id'];
    adult           =json['adult'];
    backdropPath    =json ['backdrop_path'];
    originalLanguage= json['original_language'];
    originalTitle   = json['original_title'];
    genreIds        =json ['genre_ids'].cast<int>(); // con el cast lo pasamos a tipo int
    title           =json ['title'];
    voteAverage     =json ['vote_average']/1;
    overview        =json ['overview'];
    releaseDate     =json ['release_date'];
}
}

class Movie {
  String title;
  String studio;
  String rating;

  Movie(this.title, this.studio, {this.rating = 'PG'});
  static List<Movie> getPG(List<Movie> movies) {
    return movies.where((movie) {
      return movie.rating.contains('PG');
    }).toList();
  }
}

void main() {
  Movie m1 = Movie('Casino Royale', 'Eon Productions', rating: 'PG13');

  Movie m2 = Movie('Titanic', 'Paramount');

  Movie m3 = Movie('Avatar', '20th Century', rating: 'R');

  Movie m4 = Movie('Frozen', 'Disney', rating: 'PG');

  List<Movie> movies = [m1, m2, m3, m4];

  List<Movie> result = Movie.getPG(movies);

  for (int i = 0; i < result.length; i++) {
    print(result[i].title);
    print(result[i].rating);
  }
}

class Girl {
  String name;
  String nationality;
  String image;
  String instagram;
  int age;

  Girl(
      {required this.name,
      required this.nationality,
      required this.image,
      required this.instagram,
      required this.age});

  static List<Girl> generateRecommended() {
    return [
      Girl(
          name: 'Boram Seoul',
          nationality: 'Korean',
          image: 'lib/assets/images/BoramSeoul4.jpg',
          instagram: 'https://www.instagram.com/boram__jj/',
          age: 24),
      Girl(
          name: 'Bruna Mendes',
          nationality: 'Portuguese',
          image: 'lib/assets/images/BrunaMendes6.jpg',
          instagram: 'https://www.instagram.com/brunaa.mendess',
          age: 23),
      Girl(
          name: 'Jasmine Yogi',
          nationality: 'Chinese',
          image: 'lib/assets/images/JasmineYogi1.JPG',
          instagram: 'https://www.instagram.com/jasmine.t626',
          age: 22),
      Girl(
          name: 'Mileena ATQ',
          nationality: 'Filipina',
          image: 'lib/assets/images/MirellaATQ2.jpg',
          instagram: 'https://www.instagram.com/atq.hosiery',
          age: 25),
      Girl(
          name: 'Qimmah Russo',
          nationality: 'American',
          image: 'lib/assets/images/QimmahRusso1.jpg',
          instagram: 'https://www.instagram.com/qimmahrusso',
          age: 28),
    ];
  }

  static List<Girl> generateBestOf() {
    return [
      Girl(
          name: 'Boram Seoul',
          nationality: 'Korean',
          image: 'lib/assets/images/horizontalBoram.jpg',
          instagram: 'https://www.instagram.com/boram__jj/',
          age: 24),
      Girl(
          name: 'Bruna Mendes',
          nationality: 'Portuguese',
          image: 'lib/assets/images/horizontalBruna.jpg',
          instagram: 'https://www.instagram.com/brunaa.mendess',
          age: 23),
      Girl(
          name: 'Jasmine Yogi',
          nationality: 'Chinese',
          image: 'lib/assets/images/horizontalJasmine.jpg',
          instagram: 'https://www.instagram.com/jasmine.t626',
          age: 22),
      Girl(
          name: 'Mileena ATQ',
          nationality: 'Filipina',
          image: 'lib/assets/images/horizontalMirella.jpg',
          instagram: 'https://www.instagram.com/atq.hosiery',
          age: 25),
      Girl(
          name: 'Qimmah Russo',
          nationality: 'American',
          image: 'lib/assets/images/horizontalQimmah.JPG',
          instagram: 'https://www.instagram.com/qimmahrusso',
          age: 28),
    ];
  }


  
}

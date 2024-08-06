import '../../Core/const/router.dart';

class Project {
  final String name;
  final String description;
  final String image;
  final String link;
  Project(this.name, this.description, this.image, this.link);
}

List<Project> projectList = [
  // Project(
  //   'Red Sea Project Services',
  //   'This research aims to create a dedicated website that serves as a tool to introduce the services of the Red Sea Project in Saudi Arabia, and to highlight the available investment opportunities and sub-projects included in the project. ',
  //   // 'assets/images/coffee.png',
  //   '${AppRouter.imagePath}redsea.jpg',
  //   //'https://red-eas-tourism.online',
  //   'https://github.com/AhmedAlzubair/red-eas-tourism.git',
  //
  // ),
  // Project(
  //   'Kingdom Projects 2030 ',
  //   'Kingdom Projects 2030: A Vision for Development and Prosperity The site was built in HTML CSS JavaScript PHP MySQL Bootstrap jQuery',
  //  //'assets/images/car.png',
  //   '${AppRouter.imagePath}2030.png',
  //   'https://hamd-alruwaa-2030-vision.site',
  // ),
  Project(
      'Restaurants application',
      'The application contains several restaurants.The user can purchase food and also donate by purchasing food and making it in the application for free. Used: Flutter, Dart , MySQL, Notifications Firebase, Gitx,Php.',
      '${AppRouter.imagePath}cm2.png',
      'https://github.com/AhmedAlzubair/ecommercecourse.git'),
  Project(
      'Personal Salary ',
      'The application enables the user to manage his salary.Used: Flutter,dart,Getx,Sqlite ,Notification and Login With Firebase.'
      ,
      'assets/images/person.png',
      'https://github.com/AhmedAlzubair/Personal-Salary.git'),
  Project(
      'Bookstore application',
      'The user is able to browse, search for books, and purchase them.Used: Flutter, Dart , MySQL, Notifications Firebase, Gitx,Php.'
      ,
      'assets/images/book.png',
      'https://github.com/AhmedAlzubair/Bookstore-Application.git'),

];

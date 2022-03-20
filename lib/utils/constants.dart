import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

//assets path
String logo = 'assets/images/logo.png';
String profile = 'assets/images/profile.png';
String profileH = 'assets/images/profileH.png';
String profileH180 = 'assets/images/profileH180.png';
String project1Pic = 'assets/images/project1.jpg';
String project2Pic = 'assets/images/project2.jpg';
String project3Pic = 'assets/images/project3.jpg';
String project4Pic = 'assets/images/project4.jpg';
String project5Pic = 'assets/images/project5.jpg';

//Contact Details
String homeAddress = 'Ghattekulo, Kathmandu, NP';
String mobileNo = '(+977) 986-214-8880';
String email = 'anushkarki007@gmail.com';

//List
List<Image> projectImages = [
  Image.asset(
    project1Pic,
    fit: BoxFit.cover,
  ),
  Image.asset(
    project2Pic,
    fit: BoxFit.cover,
  ),
  Image.asset(
    project3Pic,
    fit: BoxFit.cover,
  ),
  Image.asset(
    project4Pic,
    fit: BoxFit.cover,
  ),
  Image.asset(
    project5Pic,
    fit: BoxFit.cover,
  ),
];

List<String> toolName = [
  'Flutter',
  'Dart',
  'Python',
  'C/C++',
  'HTML',
  'CSS',
];

List<String> projectName = [
  'AlgoVisualizer',
  'PortFolio',
  'ChatApp',
  'Todo List',
  'Expense_Planner',
];

List<IconData> projectIcon = [
  FontAwesomeIcons.chartBar,
  FontAwesomeIcons.chrome,
  FontAwesomeIcons.facebookMessenger,
  FontAwesomeIcons.tasks,
  FontAwesomeIcons.moneyBill,
];

List<String> projectDesc = [
  'It is an Algorithm Visualization Tool which features DFS, BFS, Dijkstra, A* algortihms as searching algorithm and also Quick, Insert, Select and Bubble sort algorithms.',
  'This is a webpage that renders my portfolio designed in flutter. It is responsive and renders a different view on different sized device.',
  'Simple chat app created using firebase as real time chat app. Need login for access.',
  'Saves your tasks which you plan to do in the app so u dont forget what u have planned for the day.',
  'Saves your expenses and gives u a bar graph of how much u have expended on a weekly basis.',
];

List<String> projectUrl = [
  'https://github.com/Toxicann/AlgoVisualizer',
  'https://github.com/Toxicann/Portfolio',
  'https://github.com/Toxicann/Flutter-Chat-App',
  'https://github.com/Toxicann/ToDoList',
  'https://github.com/Toxicann/Expenses_Planner',
];

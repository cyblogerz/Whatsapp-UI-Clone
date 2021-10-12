import 'package:whatsapp_clone/models/call_log_model.dart';
import 'package:whatsapp_clone/models/status_model.dart';
import 'package:whatsapp_clone/models/user_model.dart';

List<Status> recentStatus = [
  Status(
      name: 'Narendra',
      time: 'Just Now',
      viewed: false,
      pfpurl: 'https://wallpapercave.com/wp/wp6727826.jpg'),
  Status(
      name: 'Narendra',
      time: 'Just Now',
      viewed: false,
      pfpurl: 'https://wallpapercave.com/wp/wp6727826.jpg'),
  Status(
      name: 'Narendra',
      time: 'Just Now',
      viewed: false,
      pfpurl: 'https://wallpapercave.com/wp/wp6727826.jpg'),
  Status(
      name: 'Narendra',
      time: 'Just Now',
      viewed: false,
      pfpurl: 'https://wallpapercave.com/wp/wp6727826.jpg'),
  Status(
      name: 'Narendra',
      time: 'Just Now',
      viewed: false,
      pfpurl: 'https://wallpapercave.com/wp/wp6727826.jpg'),
  Status(
      name: 'Narendra',
      time: 'Just Now',
      viewed: false,
      pfpurl: 'https://wallpapercave.com/wp/wp6727826.jpg'),
  Status(
      name: 'Narendra',
      time: 'Just Now',
      viewed: false,
      pfpurl: 'https://wallpapercave.com/wp/wp6727826.jpg'),
];
List<Status> viewedStatus = [
  Status(
      name: 'Hamsa',
      time: 'Just Now',
      viewed: true,
      pfpurl: 'https://wallpapercave.com/wp/wp3990002.jpg'),
  Status(
      name: 'Hamsa',
      time: 'Just Now',
      viewed: true,
      pfpurl: 'https://wallpapercave.com/wp/wp3990002.jpg'),
  Status(
      name: 'Hamsa',
      time: 'Just Now',
      viewed: true,
      pfpurl: 'https://wallpapercave.com/wp/wp3990002.jpg'),
  Status(
      name: 'Hamsa',
      time: 'Just Now',
      viewed: true,
      pfpurl: 'https://wallpapercave.com/wp/wp3990002.jpg'),
  Status(
      name: 'Hamsa',
      time: 'Just Now',
      viewed: true,
      pfpurl: 'https://wallpapercave.com/wp/wp3990002.jpg'),
];
List<User> users = [
  User(
      name: 'Narendra Modi',
      message: 'Mere pyari desh vasiyo',
      time: '10:50',
      pfpurl: 'https://wallpapercave.com/wp/wp6727826.jpg'),
  User(
      name: 'Sachin Tendulkar',
      message: 'Yeah, I will check on that',
      time: '2:20',
      pfpurl: 'https://wallpapercave.com/wp/wp3990002.jpg'),
  User(
      name: 'Salman Khan',
      message: 'The deer wwill be arriving soon',
      time: '3:30',
      pfpurl: 'https://wallpapercave.com/wp/wp4323962.jpg'),
];
List<CallLog> callLogs = [
  CallLog(
      name: 'Mohan Lal',
      time: 'Today,10:56',
      pfpurl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Mohanlal_Viswanathan_Nair_BNC.jpg/330px-Mohanlal_Viswanathan_Nair_BNC.jpg',
      route: true,
      status: true),
  CallLog(
      name: 'Mammootty',
      time: 'Today,9:00',
      pfpurl:
          'https://upload.wikimedia.org/wikipedia/commons/2/24/ActorMammootty.jpg',
      route: false,
      status: true),
  CallLog(
      name: 'Narendra Modi',
      time: 'Today,5:20',
      pfpurl: 'https://wallpapercave.com/wp/wp6727826.jpg',
      route: true,
      status: false),
  CallLog(
      name: 'Sachin Tendulkar',
      time: 'Yesterday,4:00',
      pfpurl: 'https://wallpapercave.com/wp/wp3990002.jpg',
      route: false,
      status: true),
  CallLog(
      name: 'Dulquer Salman',
      time: 'Yesterday,4:00',
      pfpurl:
          'https://upload.wikimedia.org/wikipedia/commons/8/85/Dulquer_Salmaan_at_Zoya_Factor_Trailer_Launch_function_%28cropped%29.jpg',
      route: true,
      status: true),
];

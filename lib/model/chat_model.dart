class ChatModel{
  final String name;
  final String message;
  final String avatarUrl;
  final String time;

  ChatModel({required this.name,required this.message,required this.avatarUrl,required this.time});
  //chatmodel constructor 
}

List<ChatModel> chatData = [
  ChatModel(
    name: "Elon musk",
    message: "Kaise ho bhai?",
    time: "15:30",
    avatarUrl:
    "https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcSb5YTP_Zfb9Aj9h3n79iDjofIAWbIRCn2mbRxjP04h8I7nDF1tj5DP_oCVy4xqRAyd5fxaiA9eZGJ0W4I"),
  ChatModel(
    name: "Ashish",
    message: "Whats up bro?",
    time: "17:30",
    avatarUrl:
    "https://images.pexels.com/photos/2120097/pexels-photo-2120097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
  ChatModel(
    name: "Sannu",
    message: "Jaldi online aa pubg khelte hai",
    time: "5:00",
    avatarUrl:
    "https://images.pexels.com/photos/2116503/pexels-photo-2116503.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
  ChatModel(
    name: "Rahul",
    message: "Sab thik ho jayega dont worry!",
    time: "10:30",
    avatarUrl:
    "https://images.pexels.com/photos/2102891/pexels-photo-2102891.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
  ChatModel(
    name: "Prasun",
    message: "I'll be there in 5 mins",
    time: "12:30",
    avatarUrl:
    "https://images.pexels.com/photos/374044/pexels-photo-374044.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
  ChatModel(
    name: "Sonu bhai",
    message: "Kab aa rha hai?",
    time: "15:30",
    avatarUrl:
    "https://images.pexels.com/photos/594610/pexels-photo-594610.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
];
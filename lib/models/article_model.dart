import 'package:equatable/equatable.dart';

class Article extends Equatable {
  final String id;
  final String title;
  final String SubTitle;
  final String body;
  final String author;
  final String authorImageUrl;
  final String category;
  final String ImageUrl;
  final int views;
  final DateTime created_at;

  const Article({
    required this.id,
    required this.title,
    required this.SubTitle,
    required this.body,
    required this.author,
    required this.authorImageUrl,
    required this.category,
    required this.ImageUrl,
    required this.views,
    required this.created_at,
  });

  static List<Article> articles = [
    Article(
        id: '1',
        title:
            'orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ind',
        SubTitle:
            "orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release o",
        body:
            "orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release o",
        author: 'author 1',
        authorImageUrl:
            'https://images.unsplash.com/photo-1659301484256-c004bc378f64?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465&q=80',
        category: 'politics',
        ImageUrl:
            'https://images.unsplash.com/photo-1659382603427-bbbd561842c0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
        views: 115,
        created_at: DateTime.now().subtract(const Duration(hours: 5))),
    Article(
      id: '2',
      title:
          'orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ind',
      SubTitle:
          " is a long established fact that a reader will be distracted by the readable content of a page ",
      body:
          " is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometim",
      author: 'author 221',
      authorImageUrl:
          'https://images.unsplash.com/photo-1533107862482-0e6974b06ec4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=441&q=80',
      category: 'sports',
      ImageUrl:
          'https://images.unsplash.com/photo-1444491741275-3747c53c99b4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8c3BvcnR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
      views: 2556,
      created_at: DateTime.now().subtract(const Duration(hours: 265)),
    ),
    Article(
      id: '3',
      title: 'lorem  2645564',
      SubTitle:
          " is a long established fact that a reader will be distracted by the readable content of a page ",
      body:
          " is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometim",
      author: 'author 855',
      authorImageUrl:
          'https://images.unsplash.com/photo-1651607840003-17807ab4b4e4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZGFuJTIwYnJvd258ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
      category: 'novels',
      ImageUrl:
          'https://images.unsplash.com/photo-1651607840003-17807ab4b4e4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZGFuJTIwYnJvd258ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
      views: 563,
      created_at: DateTime.now().subtract(const Duration(hours: 20)),
    ),
    Article(
      id: '50',
      title: "Assassin's creed Origins : A hidden Gem ",
      SubTitle:
          " is a long established fact that a reader will be distracted by the readable content of a page ",
      body:
          "Assassin's Creed® Origins, qui se déroule dans la mystérieuse Égypte ancienne, constitue un nouveau commencement. Découvrez une nouvelle façon de vous battre tout en explorant les grandes pyramides et les tombeaux cachés de l'Égypte ancienne, rencontrez de nombreux personnages aux histoires mémorables au cours de votre périple, et découvrez l'histoire des origines de la Confrérie des Assassins.",
      author: 'author now',
      authorImageUrl:
          'https://images.unsplash.com/photo-1651607840003-17807ab4b4e4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZGFuJTIwYnJvd258ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
      category: 'Science',
      ImageUrl:
          'https://staticctf.akamaized.net/J3yJr34U2pZ2Ieem48Dwy9uqj5PNUQTn/3cPe9GbBP9jQUUshxUXv65/a68377fc255c39b9b38fa614d6b5f0f8/ACH_Keyart_RGB.jpg',
      views: 2556,
      created_at: DateTime.now().subtract(const Duration(hours: 265)),
    ),
  ];

  @override
  List<Object?> get props => [
        id,
        title,
        SubTitle,
        body,
        author,
        authorImageUrl,
        category,
        ImageUrl,
        created_at,
      ];
}

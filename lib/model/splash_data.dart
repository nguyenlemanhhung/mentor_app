class SplashItemContent {
  final String title, subTitle, image;

  SplashItemContent({
    required this.title,
    required this.subTitle,
    required this.image,
  });
}

List<SplashItemContent> splashData = [
  SplashItemContent(
    title: 'Hello, brainiest\npeople!',
    subTitle:
        'Welcome to brainy academy!\nThe best community to learn and improve skills\nto level up our career.',
    image: '/images/splash/splash-1.png',
  ),
  SplashItemContent(
    title: 'Meet Our Expert\nInstructors',
    subTitle:
        'Lets explore courses with our expert and\nprofessional instructors. Interactive learning and\nyou can give us feedback.',
    image: '/images/splash/splash-2.png',
  ),
  SplashItemContent(
    title: '2 Ways\nCommunication',
    subTitle:
        'Don’t worry if you have any obstacle while you\ndoing learn. Just click “Discussion” and you\ncan chat with instructor.',
    image: '/images/splash/splash-3.png',
  ),
];

class OnboardingContent {
  String image;
  String title;
  String description;
  OnboardingContent(
      {required this.description, required this.image, required this.title});
}

List<OnboardingContent> contents = [
  OnboardingContent(description: 'Pick Your Food From Our Menu\n    More Than 35 Times', image: 'images/illustration1.jpg', title: 'Select From Our\n     Best Menu'),
  OnboardingContent(description: 'Bon Apetite', image: 'images/illustration2.jpg', title: 'The Most Trusted Food Vendor'),
  OnboardingContent(description: 'Come Back For Your Next Meal', image: 'images/illustration3.jpg', title: 'A Taste Of Freshness'),
];

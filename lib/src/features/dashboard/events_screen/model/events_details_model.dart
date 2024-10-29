
// Events Details Model
class EventsDetailsModel {
  final String startDate;
  final String endDate;
  final String title;
  final String details;
  final String imagePath;

  EventsDetailsModel({
    required this.startDate,
    required this.endDate,
    required this.title,
    required this.details,
    required this.imagePath,
  });
}

// Define a single instance of Events Details Model
final EventsDetailsModel eventsDetailsModel = EventsDetailsModel(
  startDate: "05/09/2024",
  endDate: "05/09/2024",
  title: "২০২৩-২৪ শিক্ষাবর্ষের কোটা ভেরিফিকেশন, চূড়ান্ত ভর্তি ও ক্লাস শুরু সংক্রান্ত বিজ্ঞপ্তি",
  details:
      """২০২৩-২৪ শিক্ষাবর্ষের কোটা ভেরিফিকেশন, চূড়ান্ত ভর্তি ও ক্লাস শুরু সংক্রান্ত বিজ্ঞপ্তি কোটা ভেরিফিকেশন: ২০-২১ অক্টোবর ২০২৪ মেধা তালিকা হতে চূড়ান্ত ভর্তি: ২২, ২৩, ও ২৪ অক্টোবর ২০২৪ কোটায় চূড়ান্ত ভর্তি: ২৪ অক্টোবর ২০২৪ (প্রথম পর্যায়) ও ২৭ অক্টোবর ২০২৪ (দ্বিতীয় পর্যায়) ক্লাস শুরু: ২৮ অক্টোবর ২০২৪""",
  imagePath: 'assets/dummy_img/03.jpg',
);

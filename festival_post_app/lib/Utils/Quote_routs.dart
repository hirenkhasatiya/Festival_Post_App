import 'package:festival_post_app/Models/Quote_models.dart';

List<Map> allFestival = [
  {
    "category": "Holi",
    "Quote":
        "May this Holi bring the ultimate colours of happiness in you and Your Family.",
    "image":
        "https://thumbs.dreamstime.com/b/happy-holi-background-color-festival-india-celebration-greetings-illustration-abstract-colorful-110598351.jpg",
    "bgimage": [
      "https://wallpapercave.com/wp/wp2408580.jpg",
      "http://www.pngmart.com/files/9/Holi-Color-Background-PNG-Pic.png",
      "https://inspiritquote.com/wp-content/uploads/2020/02/Holi-Banner-Background.jpg"
    ]
  },
  {
    "category": "Diwali",
    "Quote":
        "Diyas are God’s way of telling you that there will always be light to qur darkness",
    "image":
        "https://www.greetingseveryday.com/wp-content/uploads/2016/10/Diwali-Deepavali-2016-Diya-HD-Pictures-Photos-1.jpg",
    "bgimage": [
      "https://3.bp.blogspot.com/_mfK7xvLSeDE/TM7wdvuUZZI/AAAAAAAAAvw/SgGFGNrr3OY/s1600/deepavali_wallpaper_diwali6.jpg",
      "https://www.bhagwanbhajan.com/festivals/diwali/diwali-hd-wallpapers/happy-diwali.jpg",
      "https://png.pngtree.com/back_origin_pic/03/99/48/bc5c496715ae7dd3662e662af127b755.jpg"
    ]
  },
  {
    "category": "Christmas",
    "Quote":
        "Christmas is like candy; it slowly melts in your mouth sweetening every taste bud, making you wish it could last forever.",
    "image":
        "https://tse4.mm.bing.net/th?id=OIP.d-KNQ9PF0SnmyYbk8i4GMAHaGJ&pid=Api&P=0&h=180",
    "bgimage": [
      "https://tse3.mm.bing.net/th?id=OIP.d-alm-bzrAe39-vEDTF2NgHaFj&pid=Api&P=0&h=180",
      "https://tse1.mm.bing.net/th?id=OIP.1RuAXbt2qkwdUjQtEcsL-gHaE7&pid=Api&P=0&h=180",
      "https://tse1.mm.bing.net/th?id=OIP.0WKpR7gL3mHZIBM2rZA9kAHaE8&pid=Api&P=0&h=180"
    ]
  },
  {
    "category": "Janmashtami",
    "Quote":
        "Lord Krishna was born at the midnight and that’s why every year devotees celebrate his arrival at the midnight.",
    "image":
        "https://wishingwish.com/wp-content/uploads/2021/08/janmashtami-8.jpg",
    "bgimage": [
      "https://static.vecteezy.com/system/resources/previews/002/491/922/large_2x/janmashtami-background-template-free-vector.jpg",
      "https://media.istockphoto.com/vectors/happy-janmashtami-wallpaper-background-vector-id487241974?k=6&m=487241974&s=170667a&w=0&h=9emLjyxC-hEp7J5UWpyCiiy9ZfiVSM7iGz5lzvbOGq4=",
      "https://image.freepik.com/free-vector/happy-janmashtami-festival-background-with-flute_1055-7121.jpg"
    ]
  },
  {
    "category": "Raksha Bandhan",
    "Quote":
        "Sometimes, all we need is someone to be there for us. Not to fix anything, or to do anything in particular, but just to let us know that we’re cared about. Thank you for being that person for me, sister. Happy Raksha Bandhan!",
    "image":
        "https://tse2.mm.bing.net/th?id=OIP.O-tITKMkjB3AHgnFwJT6RwHaHa&pid=Api&P=0&h=180",
    "bgimage": [
      "https://tse3.mm.bing.net/th?id=OIP.0hDn9HocAn1UdAVkygBa7QHaEK&pid=Api&P=0&h=180",
      "https://png.pngtree.com/thumb_back/fw800/background/20190813/pngtree-india-raksha-bandhan-day-background-design-image_298702.jpg",
      "https://image.freepik.com/free-vector/happy-raksha-bandhan-background_1035-3387.jpg"
    ]
  },
  {
    "category": "Republic Day",
    "Quote":
        "Babasaheb Bhimrao Ambedkar, referred to as the father of the Constitution of India, drafted the Constitution, which is the supreme law of India.",
    "image":
        "https://tse1.mm.bing.net/th?id=OIP.TzTcq8nvlZ4cBpE6WVzfXgHaHa&pid=Api&P=0&h=180",
    "bgimage": [
      "https://tse2.mm.bing.net/th?id=OIP.BHV3cARpSVDLWem6mhaCAQHaEo&pid=Api&P=0&h=180",
      "http://3.bp.blogspot.com/-yoyHKRuxPOQ/UQO2nxmnJvI/AAAAAAAAfdI/Y5uuaMqn8ew/s1600/Republic+Day+5.jpg",
      "https://tse2.mm.bing.net/th?id=OIP.vpsJzZZalsZWUc7jdLyqBgHaEK&pid=Api&P=0&h=180"
    ]
  },
  {
    "category": "Independent day",
    "Quote":
        "This Independence Day let’s take a pledge to protect the peace and unity of our great nation. Happy Independence Day!",
    "image":
        "https://tse3.mm.bing.net/th?id=OIP.W05nn8jWaTeEx009uY9n7wHaHa&pid=Api&P=0&h=180",
    "bgimage": [
      "https://tse3.mm.bing.net/th?id=OIP.uN1hoQc6wshB46XQworQewHaFj&pid=Api&P=0&h=180",
      "https://tse4.mm.bing.net/th?id=OIP.3r1Vu35ql0eNeQLtfGSm7QHaEK&pid=Api&P=0&h=180",
      "https://tse4.mm.bing.net/th?id=OIP.Z4pa_HgyXgdYUmkDgvCc_QHaFR&pid=Api&P=0&h=180"
    ]
  },
];

List<Festival> festivalData = allFestival
    .map(
      (e) => Festival.fromMap(
        data: e,
      ),
    )
    .toList();

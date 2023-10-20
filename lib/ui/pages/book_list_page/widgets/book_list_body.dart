import 'package:flutter/material.dart';
import 'package:flutter_blog/ui/pages/book_list_page/widgets/book_form.dart';

class BookListBody extends StatelessWidget {
  const BookListBody({super.key});
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.symmetric(horizontal: 20),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 20,
        crossAxisCount: 3,
        mainAxisSpacing: 120,
      ),
      children: [
        Container(
          child: bookForm(),
        ),
        // 더 많은 리스트 아이템을 추가할 수 있습니다.
        Container(
          child: Column(
            children: [
              Image.asset('assets/book_images/book2.png'),
              Text(
                '퓨처셀프',
                style: TextStyle(
                  fontSize: 16, // Adjust the font size as needed
                  fontWeight: FontWeight.bold, // You can change the font weight
                  color: Colors.black, // You can set the text color
                ),
              ),
              Text(
                '벤저민 하디',
                style: TextStyle(
                  fontSize: 13, // Adjust the font size as needed
                  fontWeight: FontWeight.bold, // You can change the font weight
                  color: Colors.grey, // You can set the text color
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Image.asset('assets/book_images/book3.png'),
              Text(
                '시대예보:핵개인의 시대',
                style: TextStyle(
                  fontSize: 16, // Adjust the font size as needed
                  fontWeight: FontWeight.bold, // You can change the font weight
                  color: Colors.black, // You can set the text color
                ),
              ),
              Text(
                '송길영',
                style: TextStyle(
                  fontSize: 13, // Adjust the font size as needed
                  fontWeight: FontWeight.bold, // You can change the font weight
                  color: Colors.grey, // You can set the text color
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Image.asset('assets/book_images/book4.png'),
              Text(
                '설자은, 금성으로 돌아오다',
                style: TextStyle(
                  fontSize: 16, // Adjust the font size as needed
                  fontWeight: FontWeight.bold, // You can change the font weight
                  color: Colors.black, // You can set the text color
                ),
              ),
              Text(
                '정세랑',
                style: TextStyle(
                  fontSize: 13, // Adjust the font size as needed
                  fontWeight: FontWeight.bold, // You can change the font weight
                  color: Colors.grey, // You can set the text color
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Image.asset('assets/book_images/book5.png'),
              Text(
                '책으로 가는 문',
                style: TextStyle(
                  fontSize: 16, // Adjust the font size as needed
                  fontWeight: FontWeight.bold, // You can change the font weight
                  color: Colors.black, // You can set the text color
                ),
              ),
              Text(
                '미야자키 하야오',
                style: TextStyle(
                  fontSize: 13, // Adjust the font size as needed
                  fontWeight: FontWeight.bold, // You can change the font weight
                  color: Colors.grey, // You can set the text color
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Image.asset('assets/book_images/book6.png'),
              Text(
                '로마 이야기',
                style: TextStyle(
                  fontSize: 16, // Adjust the font size as needed
                  fontWeight: FontWeight.bold, // You can change the font weight
                  color: Colors.black, // You can set the text color
                ),
              ),
              Text(
                '줌파 라히리',
                style: TextStyle(
                  fontSize: 13, // Adjust the font size as needed
                  fontWeight: FontWeight.bold, // You can change the font weight
                  color: Colors.grey, // You can set the text color
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Image.asset('assets/book_images/book7.png'),
              Text(
                '문과 남자의 과학 공부',
                style: TextStyle(
                  fontSize: 16, // Adjust the font size as needed
                  fontWeight: FontWeight.bold, // You can change the font weight
                  color: Colors.black, // You can set the text color
                ),
              ),
              Text(
                '유시민',
                style: TextStyle(
                  fontSize: 13, // Adjust the font size as needed
                  fontWeight: FontWeight.bold, // You can change the font weight
                  color: Colors.grey, // You can set the text color
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Image.asset('assets/book_images/book8.png'),
              Text(
                '아주 희미한 빛으로도',
                style: TextStyle(
                  fontSize: 16, // Adjust the font size as needed
                  fontWeight: FontWeight.bold, // You can change the font weight
                  color: Colors.black, // You can set the text color
                ),
              ),
              Text(
                '최은영',
                style: TextStyle(
                  fontSize: 13, // Adjust the font size as needed
                  fontWeight: FontWeight.bold, // You can change the font weight
                  color: Colors.grey, // You can set the text color
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Image.asset('assets/book_images/book9.png'),
              Text(
                '역행자',
                style: TextStyle(
                  fontSize: 16, // Adjust the font size as needed
                  fontWeight: FontWeight.bold, // You can change the font weight
                  color: Colors.black, // You can set the text color
                ),
              ),
              Text(
                '최은영',
                style: TextStyle(
                  fontSize: 13, // Adjust the font size as needed
                  fontWeight: FontWeight.bold, // You can change the font weight
                  color: Colors.grey, // You can set the text color
                ),
              ),
            ],
          ),
        ),
        // 더 많은 리스트 아이템을 추가할 수 있습니다.
      ],
    );
  }
}

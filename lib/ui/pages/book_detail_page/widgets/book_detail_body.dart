import 'package:flutter/material.dart';
import 'package:flutter_blog/_core/constants/colors.dart';
import 'package:flutter_blog/ui/pages/book_detail_page/widgets/book_comment.dart';
import 'package:flutter_blog/ui/pages/book_detail_page/widgets/book_data.dart';
import 'package:flutter_blog/ui/pages/book_detail_page/widgets/book_image.dart';
import 'package:flutter_blog/ui/pages/book_detail_page/widgets/book_subtitle.dart';
import 'package:flutter_blog/ui/pages/book_detail_page/widgets/book_title_and_writer.dart';
import 'package:flutter_blog/ui/pages/book_detail_page/widgets/custom_plus.dart';
import 'package:flutter_blog/ui/pages/book_detail_page/widgets/expandable_description.dart';
import 'package:flutter_blog/ui/pages/book_detail_page/widgets/millie_ranking.dart';
import 'package:flutter_blog/ui/pages/book_detail_page/widgets/review_card.dart';
import 'package:flutter_blog/ui/pages/book_detail_page/widgets/review_insert.dart';
import 'package:flutter_blog/ui/widgets/thick_line.dart';
import 'package:flutter_blog/ui/widgets/thin_line.dart';

class BookDetailViewBody extends StatelessWidget {
  const BookDetailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        /// 북 이미지 컴포넌트
        BookImage(),

        /// 간격: 15
        SizedBox(height: 15),

        /// 타이틀 + writer 컴포넌트
        BookTitleAndWriter(),

        /// 간격: 북이미지-제목
        SizedBox(height: 15),

        /// 북 인포
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                /// (아이콘 + 설명 + 숫자) 조합
                Column(
                  children: [
                    SizedBox(
                      height: 30,
                      width: 30,
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/user_images/avatar.png"),
                      ),
                    ),

                    /// 간격: 5
                    /// 간격: 인포 칼럼 내부
                    SizedBox(height: 5),

                    /// 작은글자
                    Text(
                      "이 책이 담긴 서재",
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    ),

                    /// 간격: 5
                    SizedBox(height: 5),
                    Text(
                      "2,380개",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(height: 35, width: 1, color: Colors.grey),
                Column(
                  children: [
                    Icon(Icons.comment_outlined, color: Colors.grey),
                    SizedBox(height: 5),
                    Text(
                      "한 줄 리뷰",
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "4개",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(height: 35, width: 1, color: Colors.grey),
                Column(
                  children: [
                    Icon(Icons.edit_outlined, color: Colors.grey),
                    SizedBox(height: 5),
                    Text(
                      "첫 포스트 작성하고",
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "+1밀리",
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

        ThickLine(),

        /// 밀리 순위(있는곳도 있고 없는 곳도 있음)
        MillieRanking(),
        ThickLine(),

        /// 밀리 책 소개
        BookComment(),
        ThickLine(),

        /// 소제목 + 설명
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BookSubtitle(),
            ThinLine(),
            CustomPlus(
              title: "책 소개",
              description:
                  "에르메스, 시슬리, 까르띠에, 프레데릭 말, 입생로랑 세계적인 향수를 탄생시킨 마스터 조향사 장 클로드 엘레나의 '향수 식물학' 세계로 초대합니다",
            ),
          ],
        ),
        BookData(),

        /// 스크롤 끝자리는 여기!!!
        ExpandableDescription(
          title: "목차",
          description: "프롤로그\n"
              "\n"
              "1. 나무와 껍질\n"
              "2. 잎사귀\n"
              "3. 꽃\n"
              "4. 열매\n"
              "5. 수액\n"
              "6. 씨앗\n"
              "7. 뿌리\n",
        ),
        ExpandableDescription(
            title: "저자 소개",
            description: "지은이_ 장 클로드 엘레나 Jean-Claude Ellena\n"
                "\n"
                "전 세계적으로 손꼽히는 마스터 조향사이자 조향계의 살아 있는 전설. 1947년 프랑스 남부에 위치한 향수의 본고장 그라스에서 태어났다. 17세에 스위스 제네바의 향수전문학교인 지보당Givaudan에 입학했으며 그라스의 최대 향수 회사인 앙투안 쉬리Antoine Chiris의 조교를 거쳐, 이후 전 세계인들에게 사랑받는 매혹적인 향의 연금술사가 되었다. 14년 동안 에르메스 전속 조향사로 지내며 에르메스 향의 세계를 구축하다가 2018년부터 독립 조향사로서 70대인 지금도 활발히 활동하고 있다.\n"),
        ExpandableDescription(
            title: "출판사 서평",
            description: "<보그닷컴> 선정 ‘2022 선물하기 좋은 최고의 책’\n"
                "<파이낸셜 타임즈> 선정 ‘막솔로지스트를 위한 16가지 선물’\n"
                "60년 동안 조향사로 활동한 저자의 가장 매력적인 향 입문서\n"
                "에르메스 스타일의 가장 우아하고 고급스러운 한국판 양장본\n"),
        ThickLine(),
        Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Text(
                        "한 줄 리뷰",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "350",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      Icons.chevron_right,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        ReviewCard(
          username: "ssar",
          writeAt: "2023.10.19",
          review: "향수에 관심이 생겼어요",
        ),
        ReviewCard(
          username: "cos",
          writeAt: "2023.10.18",
          review: "책을 읽으며 힐링되는 시간",
        ),
        ReviewCard(
          username: "love",
          writeAt: "2023.10.07",
          review: "다양한 식물에서 이런 향을 낼 수 있다는게 신기해요",
        ),
        ReviewInsert(),
      ],
    );
  }
}

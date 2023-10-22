/// !! spring의 model과 변수명이 일치해야 찾아올 수 있다.
class Book {
  final int? id;
  final String? picUrl;
  final String? title;
  final String? writer;
  final String? content;

  Book({this.id, this.picUrl, this.title, this.writer, this.content});

  // Map 형태로 받아서 Dart 객체로 변환합니다.
  Book.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        picUrl = _urlPrefix + json["picUrl"], // image 경로 + 파일명
        title = json["title"],
        writer = json["writer"],
        content = json["content"];
}

final String _urlPrefix = "assets/book_images/"; // image 경로

// List<Book> books = [
//   Book(
//       id: 1,
//       bookImage: "${_urlPrefix}book1.png",
//       title: "트렌드코리아 2024",
//       author: "김난도",
//       intro: "오롯이 인간만의 역량을 최대한 끌어올리는 것."
//           "이를 위해 우리는 무엇을 알아야 하고, 무엇을 준비해야 할까? 2배속 사회에서 균형점을 찾기 위한 여백은 무엇인가?"
//           "올해의 〈트렌드 코리아〉는 유독 천천히 읽기를 권한다."),
//   Book(
//       id: 2,
//       bookImage: "${_urlPrefix}book2.png",
//       title: "퓨처셀프",
//       author: "벤저민 하디",
//       intro: "‘미래의 나’를 적용하는 과학 분야 세계 최고의 전문가, 자기 계발 분야 파워 블로거이자 베스트셀러 작가의 신작"),
//   Book(
//       id: 3,
//       bookImage: "${_urlPrefix}book3.png",
//       title: "시대예보:핵개인의 시대",
//       author: "송길영",
//       intro: "마인드 마이너 송길영이 예보하는 미래 시대, 앞으로 세상은 어떻게 변화할 것인가"),
//   Book(
//       id: 4,
//       bookImage: "${_urlPrefix}book4.png",
//       title: "설자은, 금성으로 돌아오다",
//       author: "정세랑",
//       intro: "정세랑이 선보이는 격 역사 미스터리 모험담!"),
//   Book(
//       id: 5,
//       bookImage: "${_urlPrefix}book5.png",
//       title: "책으로 가는 문",
//       author: "미야자키 하야오",
//       intro: "이 안에 당신의 첫 책도 있나요?"),
//   Book(
//       id: 6,
//       bookImage: "${_urlPrefix}book6.png",
//       title: "로마 이야기",
//       author: "줌파 라히리",
//       intro: "이름, 국적, 나이, 성별…… 주어진 정체성에서 벗어날 수 있을까?"),
//   Book(
//       id: 7,
//       bookImage: "${_urlPrefix}book7.png",
//       title: "문과 남자의 과학 공부",
//       author: "유시민",
//       intro: "과학 공부로 길어 올린 생명과 우주에 관한 진실, 인간과 사회를 이해하는 방법"
//           "”내 삶을 어떤 의미로 채울 것인가?”"),
//   Book(
//       id: 8,
//       bookImage: "${_urlPrefix}book8.png",
//       title: "아주 희미한 빛으로도",
//       author: "최은영",
//       intro:
//           "더 진실하기를, 더 치열하기를, 더 용기 있기를. [내게 무해한 사람] 이후 5년, 고요하게 휘몰아치는 최은영의 세계"),
//   Book(
//       id: 9,
//       bookImage: "${_urlPrefix}book9.png",
//       title: "역행자",
//       author: "자청",
//       intro: "한층 더 강력한 치트기, 독해진 팩트 폭격! "
//           "50주 연속 베스트셀러·40만 독자의 삶을 바꾼 [역행자]가 확장판으로 돌아왔다.")
// ];

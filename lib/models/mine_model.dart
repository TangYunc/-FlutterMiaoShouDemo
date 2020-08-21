class SingleItem {
  final String title;
  final String image;

  SingleItem({this.title, this.image});

  factory SingleItem.fromJson(Map<String, dynamic> json) {
    return SingleItem(
        title: json["title"],
        image: json["image"]
    );
  }
}

class MineItem {
  final String avartImgUrl;
  final String doctorName;
  final String cellPhone;
  final List<SingleItem> replay;

  MineItem({
    this.avartImgUrl,
    this.doctorName,
    this.cellPhone,
    this.replay
  });

  factory MineItem.fromJson(Map<String, dynamic> json) {
   return MineItem(
     avartImgUrl: json["avartImgUrl"],
     doctorName: json["doctorName"],
     cellPhone: json["cellPhone"],
     replay: (json["replay"] as List).map((item) => SingleItem.fromJson(item)).toList(),
   );
  }
}
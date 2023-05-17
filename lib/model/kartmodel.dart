class homeResp {
  List<Kart>? kart;

  homeResp({this.kart});

  homeResp.fromJson(Map<String, dynamic> json) {
    if (json['kart'] != null) {
      kart = <Kart>[];
      json['kart'].forEach((v) {
        kart!.add(new Kart.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.kart != null) {
      data['kart'] = this.kart!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Kart {
  String? image;
  String? title;
  String? price;
  String? subHeading;
  String? discription;
  String? h;
  String? w;
  String? b;

  Kart(
      {this.image,
        this.title,
        this.price,
        this.subHeading,
        this.discription,
        this.h,
        this.w,
        this.b});

  Kart.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    title = json['title'];
    price = json['price'];
    subHeading = json['subHeading'];
    discription = json['discription'];
    h = json['h'];
    w = json['w'];
    b = json['b'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['title'] = this.title;
    data['price'] = this.price;
    data['subHeading'] = this.subHeading;
    data['discription'] = this.discription;
    data['h'] = this.h;
    data['w'] = this.w;
    data['b'] = this.b;
    return data;
  }
}

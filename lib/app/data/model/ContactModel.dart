class ContactModel {
  List<Profiles>? profiles;

  ContactModel({this.profiles});

  ContactModel.fromJson(Map<String, dynamic> json) {
    if (json['profiles'] != null) {
      profiles = <Profiles>[];
      json['profiles'].forEach((v) {
        profiles!.add(new Profiles.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.profiles != null) {
      data['profiles'] = this.profiles!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Profiles {
  String? name;
  String? email;
  String? address;
  String? city;
  String? country;

  Profiles({this.name, this.email, this.address, this.city, this.country});

  Profiles.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    address = json['address'];
    city = json['city'];
    country = json['country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    data['address'] = this.address;
    data['city'] = this.city;
    data['country'] = this.country;
    return data;
  }
}

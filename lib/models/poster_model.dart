import 'package:techblogtest/componnents/api_constant.dart';

class PosterModel {

  String? id;
  String? title;
  String? image;


  PosterModel({
     this.id,
     this.title,
     this.image,


  });
  PosterModel.fromJson(Map<String,dynamic>element){
     id = element["id"];
     title = element["title"];
     image =ApiConstant.hostDl+ element["image"];

  }

}
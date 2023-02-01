
import 'package:geolocator/geolocator.dart';
class Location {
  // Location({this.latitude,this.longitude});
   double latitude ,longitude;
  Future<void> getCurrnetLocation() async{
    try{
      Position position =  await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      this.longitude = position.longitude;
      this.latitude = position.latitude;
      print('this is $position');
    }catch(e){
      print(e);
    }
  }

}
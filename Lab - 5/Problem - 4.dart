// Define Time class with hour and minute as data member. Also define addition() method to add
// two-time objects.

void main(List<String> args) {
  Time t1 = Time(12,30);
  Time t2 = Time(5, 10);
  t1.addition(t2);
}
class Time{
  int? hour;
  int? minute;
  Time(int hour,int minute){
    this.hour=hour;
    this.minute=minute;
  }
  void addition(Time t){
    this.minute=this.minute!+t.minute!;
    if(this.minute!>=60){
      this.minute=60-this.minute!;
      this.hour=this.hour!+1;
    }
    this.hour=this.hour!+t.hour!;
    print("${this.hour} : ${this.minute}");
  }
}
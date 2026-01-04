void main() {
  print(1 / 0);
  // print(1 ~/ 0);
  int dayOfWeek = 7;
  //String myDay = getDay(dayOfWeek);
  var myDay = switch (dayOfWeek) {
    1 => 'Monday',
    2 => 'Tuesday',
    3 => 'Wednesday',
    4 => 'Thursday',
    5 => 'Friday',
    6 => 'Saturday',
    7 => 'Sunday',
    _ => 'Invalid day', //Default value
  };
  
  print(myDay);
}

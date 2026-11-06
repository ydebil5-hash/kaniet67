void main(){
  double calculateArea(double width, double height) {
  return width * height;
}

double calculateAreaArrow(double width, double height) => width * height;

  print('Площадь: ${calculateArea(5.0, 10.0)}');
  print('Площадь (стрелка): ${calculateAreaArrow(4.0, 3.0)}');
}

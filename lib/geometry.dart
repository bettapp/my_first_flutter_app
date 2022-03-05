import 'dart:math';

double squareArea(double a){
  double area = a * a;
  return area;
}

double squareCircumference(double a){
  double circumference = 4 * a;
  return circumference;
}

double rectangleArea(double a, double b){
  double area = a * b;
  return area;
}

double rectangleCircumference(double a, double b){
  double circumference = 2 * a + 2 * b;
  return circumference;
}

double triangleArea(double c, double h){
  double area = c * h / 2;
  return area;
}

double triangleCircumference(double a, double b, double c){
  double circumference = a + b + c;
  return circumference;
}

double circleArea(double r){
  double area = pi * r * r;
  return area;
}

double circleCircumference(double r){
  double circumference = 2 * pi * r;
  return circumference;
}

double cubeVolume(double a){
  double vol = a * a * a;
  return vol;
}

double cubeArea(double a){
  double area = squareArea(a) * 6;
  return area;
}

double cuboidVolume(double a, double b, double c){
  double volume = a * b * c;
  return volume;
}

double cuboidArea(double a, double b, double c){
  double area = 2 * rectangleArea(a, b) + 2 * rectangleArea(a, c) + 2 * rectangleArea(b, c);
  return area;
}

double coneVolume(double r, double h){
  double volume = 1 / 3 * circleArea(r) * h;
  return volume;
}

double coneArea(double r, double s){
  double area = circleArea(r) + pi * r * s;
  return area;
}

double pyramidVolume(double a, double h){
  double volume = 1 / 3 * squareArea(a) * h;
  return volume;
}

double pyramidArea(double a, double ha, double h){
  double volume = squareArea(a) + 2 * rectangleArea(a, ha);
  return volume;
}

double sphereVolume(double r){
  double volume = 4 / 3 * pi * r * r * r;
  return volume;
}

double sphereArea(double r){
  double area = 4 * pi * r * r;
  return area;
}

double cylinderVolume(double r, double h){
  double volume = circleArea(r) * h;
  return volume;
}

double cylinderArea(double r, double h){
  double area = 2 * pi * r * (r + h);
  return area;
}
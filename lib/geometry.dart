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

double pyramidVolume(bool squareBase, double c, double cH, double h){
  if (squareBase == true){
    double volume = 1 / 3 * squareArea(c) * h;
    return volume;
  }
  else if(squareBase == false){
    double volume = 1 / 3 * triangleArea(c, cH) + h;
    return volume;
  }
  return 666; //to fix 'the body might return null'
} // unknown if it works


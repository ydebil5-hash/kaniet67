import 'dart:io';

void main(){
  List <Map<String, dynamic>> users = [
    {'name': 'bike', 'price': 145000},
    {'name': 'helmet', 'price': 8500},
  ];
  print(users[0]['name']);
  print(users[0]['price']);
}
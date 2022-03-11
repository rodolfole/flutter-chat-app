
import 'dart:io';

class Environment {
  static String apiUrl = Platform.isAndroid ? 'http://10.0.2.2:7000/api' : 'http://localhost:7000/api';
  static String socketUrl = Platform.isAndroid ? 'http://10.0.2.2:7000' : 'http://localhost:7000';

}
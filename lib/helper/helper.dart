import 'package:intl/intl.dart';

class HelperFunc
{
  formatDate (DateTime date)
  {
    return DateFormat('yyyy-MM-d/h:m:s').format(date);
  }
}
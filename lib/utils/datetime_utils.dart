class DatetimeUtils {
  static getDifferenceInMinutes(DateTime date1, DateTime date2) {
    return date1.difference(date2).inMinutes;
  }
}
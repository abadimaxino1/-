import 'dart:convert';
import 'dart:io';

class CSVHelper {
  static String toCSV(List<Map<String, dynamic>> data) {
    if (data.isEmpty) return "";
    final headers = data.first.keys.toList();
    final rows = data.map((row) => headers.map((h) => row[h]).join(",")).toList();
    return ([headers.join(",")] + rows).join("\n");
  }

  static List<Map<String, dynamic>> fromCSV(String csv) {
    final lines = LineSplitter().convert(csv);
    if (lines.isEmpty) return [];
    final headers = lines.first.split(",");
    return lines.skip(1).map((line) {
      final values = line.split(",");
      return Map.fromIterables(headers, values);
    }).toList();
  }
}

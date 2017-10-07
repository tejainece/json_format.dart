// Copyright (c) 2017, teja. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

/// Returns prettified and formatted JSON string with given indentation level
String formatJSON(json, [int indent = 0]) {
  if (json is Map) {
    String ret = '{';
    for (final key in json.keys) {
      ret += '\n';
      ret += ('  ' * (indent + 1)) +  "'" + key.toString() + "': ";
      ret += formatJSON(json[key], indent + 2);
      ret += ',';
    }
    ret += '\n';
    ret += ('  ' * indent);
    ret += '}';
    return ret;
  } else if (json is List) {
    String ret = '[';
    for (final item in json) {
      ret += '\n';
      ret += ('  ' * (indent + 1));
      ret += formatJSON(item, indent + 1);
      ret += ',';
    }
    ret += '\n';
    ret += ('  ' * indent);
    ret += ']';
    return ret;
  } else if(json is String) {
    return "'" + json.toString() + "'";
  } else {
    return json.toString();
  }
}

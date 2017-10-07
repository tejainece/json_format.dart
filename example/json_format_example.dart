// Copyright (c) 2017, SERAGUD. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:convert';
import 'package:json_format/json_format.dart';

main() {
  final data = {
    'todos': [
      {
        'id': 0,
        'name': 'Implement parser',
        'done': false,
        'tags': ['falcor', 'jaguar'],
        'author': [
          {
            'name': 'teja',
            'email': 'tejainece@gmail.com',
          },
          {
            'name': 'Luficer Morningstart',
            'email': 'luci@hell.com',
          }
        ],
      },
      {
        'id': 1,
        'name': 'Implement composer',
        'done': false,
        'author': [
          {
            'name': 'teja',
            'email': 'tejainece@gmail.com',
          },
          {
            'name': 'Luficer Morningstart',
            'email': 'luci@hell.com',
          }
        ],
      },
      {
        'id': 2,
        'name': 'Implement setter',
        'done': false,
        'author': [
          {
            'name': 'teja',
            'email': 'tejainece@gmail.com',
          },
          {
            'name': 'Deadpool',
            'email': 'dead@undead.com',
          }
        ],
      },
      {
        'id': 3,
        'name': 'Implement data source',
        'done': false,
        'author': [
          {
            'name': 'teja',
            'email': 'tejainece@gmail.com',
          },
          {
            'name': 'Luficer Morningstart',
            'email': 'luci@hell.com',
          }
        ],
      },
      {
        'id': 4,
        'name': 'Release!',
        'done': false,
        'author': [
          {
            'name': 'teja',
            'email': 'tejainece@gmail.com',
          },
          {
            'name': 'Luficer Morningstart',
            'email': 'luci@hell.com',
          },
          {
            'name': 'Deadpool',
            'email': 'dead@undead.com',
          }
        ],
      },
    ]
  };

  print(formatJSON(data));

  // print(
  //    new JsonEncoder.withIndent('  ').convert(JSON.decode(JSON.encode(data))));
}

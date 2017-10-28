// Copyright (c) 2017, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: Test Boilerplate generator
// **************************************************************************

// ignore_for_file: annotate_overrides, hash_and_equals
library json_serializable.test.kitchen_sink_nullable;

import 'package:json_annotation/json_annotation.dart';

import 'kitchen_sink.dart';
import 'test_files_util.dart';

part 'kitchen_sink.non_nullable.g.dart';

List<T> _defaultList<T>() => <T>[];
Map _defaultMap() => {};

@JsonSerializable(nullable: false)
class KitchenSinkNonNullable extends Object
    with _$KitchenSinkNonNullableSerializerMixin
    implements KitchenSink {
  // To ensure static members are not considered for serialization.
  static const answer = 42;
  static final reason = 42;
  static int get understand => 42;

  // NOTE: exposing these as Iterable, but storing the values as List
  // to make the equality test work trivially.
  final Iterable _iterable;
  final Iterable<dynamic> _dynamicIterable;
  final Iterable<Object> _objectIterable;
  final Iterable<int> _intIterable;
  final Iterable<DateTime> _dateTimeIterable;

  KitchenSinkNonNullable(
      {Iterable iterable,
      Iterable<dynamic> dynamicIterable,
      Iterable<Object> objectIterable,
      Iterable<int> intIterable,
      Iterable<DateTime> dateTimeIterable})
      : _iterable = iterable?.toList() ?? _defaultList(),
        _dynamicIterable = dynamicIterable?.toList() ?? _defaultList(),
        _objectIterable = objectIterable?.toList() ?? _defaultList(),
        _intIterable = intIterable?.toList() ?? _defaultList(),
        _dateTimeIterable = dateTimeIterable?.toList() ?? _defaultList();

  factory KitchenSinkNonNullable.fromJson(Map<String, Object> json) =>
      _$KitchenSinkNonNullableFromJson(json);

  @JsonKey(includeIfNull: false)
  DateTime dateTime = new DateTime(1981, 6, 5);

  @JsonKey(includeIfNull: false)
  Iterable get iterable => _iterable;
  Iterable<dynamic> get dynamicIterable => _dynamicIterable;
  Iterable<Object> get objectIterable => _objectIterable;
  Iterable<int> get intIterable => _intIterable;

  // Added a one-off annotation on a property (not a field)
  @JsonKey(name: 'datetime-iterable')
  Iterable<DateTime> get dateTimeIterable => _dateTimeIterable;

  List list = _defaultList();
  List<dynamic> dynamicList = _defaultList();
  List<Object> objectList = _defaultList();
  List<int> intList = _defaultList();
  @JsonKey(includeIfNull: false)
  List<DateTime> dateTimeList = _defaultList();

  Map map = _defaultMap();
  Map<String, String> stringStringMap = _defaultMap();
  Map<String, int> stringIntMap = _defaultMap();
  Map<String, DateTime> stringDateTimeMap = _defaultMap();

  @JsonKey(includeIfNull: false)
  List<Map<String, Map<String, List<List<DateTime>>>>> crazyComplex =
      _defaultList();

  // Handle fields with names that collide with helper names
  @JsonKey(includeIfNull: false)
  Map<String, bool> val = _defaultMap();
  bool writeNotNull;
  @JsonKey(name: r'$string')
  String string;

  bool operator ==(Object other) => sinkEquals(this, other);
}

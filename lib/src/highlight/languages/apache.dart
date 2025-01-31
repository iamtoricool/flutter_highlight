// GENERATED CODE - DO NOT MODIFY BY HAND

import '../mode.dart';
import '../common_modes.dart';

final apache = Mode(
    refs: {
      '~contains~2~starts~contains~1~contains~1':
          Mode(className: "number", begin: "[\\\$%]\\d+"),
    },
    aliases: ["apacheconf"],
    case_insensitive: true,
    contains: [
      HASH_COMMENT_MODE,
      Mode(className: "section", begin: "</?", end: ">"),
      Mode(
          className: "attribute",
          begin: "\\w+",
          relevance: 0,
          keywords: {
            "nomarkup":
                "order deny allow setenv rewriterule rewriteengine rewritecond documentroot sethandler errordocument loadmodule options header listen serverroot servername"
          },
          starts: Mode(end: "\$", relevance: 0, keywords: {
            "literal": "on off all"
          }, contains: [
            Mode(className: "meta", begin: "\\s\\[", end: "\\]\$"),
            Mode(
                className: "variable",
                begin: "[\\\$%]\\{",
                end: "\\}",
                contains: [
                  Mode(self: true),
                  Mode(ref: '~contains~2~starts~contains~1~contains~1')
                ]),
            Mode(ref: '~contains~2~starts~contains~1~contains~1'),
            QUOTE_STRING_MODE
          ]))
    ],
    illegal: "\\S");

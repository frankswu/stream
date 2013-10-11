//Auto-generated by RSP Compiler
//Source: Issue4.rsp.html
library Issue4_rsp;

import 'dart:async';
import 'dart:io';
import 'package:stream/stream.dart';

/** Template, Issue4, for rendering the view. */
Future Issue4(HttpConnect connect) { //#1
  var _t0_, _cs_ = new List<HttpConnect>();
  HttpRequest request = connect.request;
  HttpResponse response = connect.response;
  if (!Rsp.init(connect, "text/html; charset=utf-8"))
    return new Future.value();
var foo = "test";
render(HttpConnect connect, {more, less}) {
}

  response.write("""


abc/"""); //#5

  response.write(Rsp.nnx(foo)); //#7


  response.write("""

"""); //#7

  return connect.include("${Rsp.nns(foo)}").then((_) { //include#8

    return connect.include("abc/${Rsp.nns(foo)}").then((_) { //include#9

      return Rsp.nnf(render(new HttpConnect.chain(connect), more: "abc/${Rsp.nns(foo)}", less: foo)).then((_) { //include#10

        return new Future.value();
      }); //end-of-include
    }); //end-of-include
  }); //end-of-include
}

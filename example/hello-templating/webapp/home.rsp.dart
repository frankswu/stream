//Auto-generated by RSP Compiler
//Source: ../home.rsp.html
part of hello_templating;

/** Template, home, for rendering the view. */
Future home(HttpConnect connect) { //#2
  var _t0_, _cs_ = new List<HttpConnect>();
  HttpRequest request = connect.request;
  HttpResponse response = connect.response;

  if (!connect.isIncluded)
    response.headers.contentType = ContentType.parse("text/html; charset=utf-8");

  response.write("""<!DOCTYPE html>
<html>
  <head>
    <title>Stream: Hello Templating</title>
    <link href="theme.css" rel="stylesheet" type="text/css" />
  </head>
  <body>
"""); //#2

  var _0 = new StringBuffer(); _cs_.add(connect); //var#10
  connect = new HttpConnect.stringBuffer(connect, _0); response = connect.response;

  return connect.include("/header.html").then((_) { //include#11

    connect = _cs_.removeLast(); response = connect.response;

    response.write("""

"""); //#13

    var _1 = new StringBuffer(); _cs_.add(connect); //var#14
    connect = new HttpConnect.stringBuffer(connect, _1); response = connect.response;

    return Rsp.nnf(sidebar(new HttpConnect.chain(connect))).then((_) { //include#15

      connect = _cs_.removeLast(); response = connect.response;

      response.write("""

"""); //#17

      var _2 = new StringBuffer(); _cs_.add(connect); //var#18
      connect = new HttpConnect.stringBuffer(connect, _2); response = connect.response;

      return connect.include("/footer.html").then((_) { //include#19

        connect = _cs_.removeLast(); response = connect.response;

        response.write("""

"""); //#21

        var _3 = new StringBuffer(); _cs_.add(connect); //var#22
        connect = new HttpConnect.stringBuffer(connect, _3); response = connect.response;

        response.write("""  <h1>Hello Templating</h1>
  <p>In this example, we demostrate how to define the shared layout (aka., the template), define page fragments and assemble them into a complete page. It is based on the so-called *Composite View* pattern.</p>
  <p>For more information, please refer to <a href="http://docs.rikulo.org/stream/latest/RSP/Fundamentals/Templating-_Composite_View_Pattern.html">Templating: Composite View Pattern</a>.</p>
"""); //#23

        connect = _cs_.removeLast(); response = connect.response;

        return Rsp.nnf(classic(new HttpConnect.chain(connect), header: _0.toString(), sidebar: _1.toString(), footer: _2.toString(), body: _3.toString())).then((_) { //include#9

          response.write("""  </body>
</html>
"""); //#28

          return Rsp.nnf();
        }); //end-of-include
      }); //end-of-include
    }); //end-of-include
  }); //end-of-include
}

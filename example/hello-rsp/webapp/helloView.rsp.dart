//Auto-generated by RSP Compiler
//Source: ../helloView.rsp.html
part of hello_rsp;

/** Template, helloView, for rendering the view. */
Future helloView(HttpConnect connect) { //#3
  var _t0_, _cs_ = new List<HttpConnect>();
  HttpRequest request = connect.request;
  HttpResponse response = connect.response;
  if (!Rsp.init(connect, "text/html; charset=utf-8"))
    return new Future.value();

  response.write("""<!DOCTYPE html>
<html>
  <head>
    <title>Stream: Hello RSP</title>
    <link href="theme.css" rel="stylesheet" type="text/css" />
  </head>
  <body>
    <h1>Stream: Hello RSP</h1>
    <p>Now is """); //#3

  response.write(Rsp.nnx(new DateTime.now())); //#11


  response.write(""".</p>
    <p>This page is served by Rikulo Stream """); //#11

  response.write(Rsp.nnx(connect.server.version)); //#12


  response.write(""".</p>
    <p>Please refer to
  <a href="https://github.com/rikulo/stream/tree/master/example/hello-rsp">Github</a> for how it is implemented.</a>
  </body>
</html>
"""); //#12

  return new Future.value();
}

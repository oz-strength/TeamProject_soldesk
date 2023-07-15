<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script>
     /*  var cnt = 1;
      function fn_addFile() {
        $('#d_file').append(
          '<br>' + "<input type='file' name='file" + cnt + "'/>"
        );
        ctn++;
      } */
    </script>
  </head>
  <body>
    <h1>파일 업로드!</h1>
    <form
      method="post"
      action="${contextPath}/upload"
      enctype="multipart/form-data"
    >
      <label for="">아이디:</label>
      <input type="text" name="id" /><br />
      <label for="">이름</label>
      <input type="text" name="name" /><br />

      <input multiple="multiple" type="file" name="file"/>
      <div id="d_file"></div>

      <input type="submit" value="업로드" />
    </form>
  </body>
</html>

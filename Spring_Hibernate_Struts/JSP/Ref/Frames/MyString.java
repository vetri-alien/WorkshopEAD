<html>
<body>
<script>
var m=prompt("Enter a string");
function MyString()
  {
      form.t1.value=m.toUpperCase();
      form.t2.value=m.indexOf("s");
      form.t3.value=m.substring(3,7);
  }
</script>
<form name=f1 method=post>
<input type=text name=t1>
<input type=text name=t2>
<input type=text name=t3>
</form>
</body>
</html>

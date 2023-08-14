<html>
<title>Folder Creation</title>
<form name=f1 onsubmit=add()>
<input type=text name=t1>
<input type=submit value=Add>
</form>
<script>
function add()
{
var fname;
fname=prompt("Enter folder name");
f1.t1.value=fname;
f1.action="FolderServer.jsp";
f1.method="post";
}
</script>
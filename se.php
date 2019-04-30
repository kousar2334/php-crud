<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>JQuery Session</title>
<script type='text/javascript' src='jquery-1.9.1.js'></script>
<script type="text/javascript" src="jquery.session.js"></script>
</head>
<body>
	<p id="click">Click</p>
	<p id="get">get</p>
<script>
	$(document).ready(function(){
                         $('#click').click(function(){
                          // $.session.set("myVar", "Hello World!");   
                          alert("ok");
                        });
                       });
</script>
<script>
	$(document).ready(function(){
                         $('#get').click(function(){
                          alert($.session.get("myVar"));   
                        });
                       });
</script>

</body>
</html>
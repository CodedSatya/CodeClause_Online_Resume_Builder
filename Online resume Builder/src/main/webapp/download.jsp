<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Download</title>
	
	
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous" />

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"crossorigin="anonymous"></script>
    <style type="text/css">
    	.box{
    		height:100vh;
    		width:100vw;
    		display:flex;
    		align-items:center;
    		justify-content:center;
            flex-direction: column;
            background-color: rgb(184, 184, 184);

    	}
    	a{
    	text-decoration:none;
        border: 2px solid rgb(3, 99, 216);
        padding: 10px 40px;
        background-color: white;
        border-radius: 5px;
    	
    	}
    </style>   
       
</head>
<body>
	 <div class="box">
        <a class="" href="download?filename=resume.pdf">Download your Resume ( PDF )</a>
        <br>
        <a class="" href="download?filename=resume.docx">Download your Resume ( DOCX )</a>
    </div>
    
   
</body>
</html>
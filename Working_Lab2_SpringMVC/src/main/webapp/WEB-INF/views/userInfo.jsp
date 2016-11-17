<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>Yahoo!!</title>
</head>
<body>
	<script>
		function deleteFunction() {
			alert("here");
			/*  var deleteurl = 'http://localhost:8080/user/'+${user.id};
			$.ajax({
			    url: deleteurl,
			    type: 'DELETE',
			    
			});  */
			
			 var xmlhttp;
			 var deleteurl = "/user/${user.id}";
			 
			 alert("here" + deleteurl);
		    xmlhttp = new XMLHttpRequest();
		    xmlhttp.open("DELETE", deleteurl,true);
		    
		    xmlhttp.send(); 
			
		}
	</script>
	
	<script>
		function updateFunction() {
			alert("here");
			
			var firstname =  document.getElementById("firstname").value;
			alert(firstname);
			var lastname =  document.getElementById("lastname").value;
			var title =  document.getElementById("title").value;
			var city =  document.getElementById("city").value;
			var state =  document.getElementById("state").value;
			var street =  document.getElementById("street").value;
			var zip =  document.getElementById("zip_code").value;
			
			
			 var xmlhttp;
			 var updateurl = "/user/${user.id}?firstname="+ firstname +
					 "&lastname=" + lastname +
					 "&title="+title+
					 "&city="+ city+
					 "&state="+state +
					 "&street="+street+
					 "&zip_code="+zip;
			 
			alert(updateurl);
		    xmlhttp = new XMLHttpRequest();
		    xmlhttp.open("POST", updateurl,true);
		    
		    xmlhttp.send(); 
			
		}
	</script>
	
	 <form action="/user" method="POST">
	    ID : <input name = "ID" type = "text" value = ${user.id} disabled >
        </br>
        First Name : <input id="firstname" name="firstname" type="text" value = ${user.firstname}> 
        </br>
        Last Name : <input id="lastname" name="lastname" type="text" value = ${user.lastname} >
        </br>
        Title : <input id="title" name="title" type="text" value = ${user.title} >
        </br>
        Address 
        </br>
       	City : <input id="city" name="city" type="text" value = ${user.address.city} >
       	State : <input id="state" name="state" type="text" value = ${user.address.state}>
       	Street : <input id="street" name="street" type="text" value = ${user.address.street}>
       	Zip code : <input id="zip_code" name="zip_code" type="text" value = ${user.address.zip}> 
        
         <!-- <input type="submit" /> -->
    </form>
	
	<!-- <table id="UserInfo" border="1">
		<tr>
			<td>ID</td>
			<td>First Name</td>
			<td>Last Name</td>
			<td>Title</td>
			<td>Street</td>
		</tr> -->
		<%--   <c:forEach items="${AllUsers}" var="user">     --%>
		<%-- <tr>
			<td>${user.id}</td>
			<td>${user.firstname}</td>
			<td>${user.lastname}</td>
			<td>${user.title}</td>
			<td>${user.address.state}</td>
		</tr> --%>
		<%-- </c:forEach> 
	</table>--%>

	<button type = "button" name = "update" onclick="updateFunction();">Update</button>
	
	<button type = "button" name = "delete" onclick="deleteFunction();">Delete</button>
	
</body>
</html>
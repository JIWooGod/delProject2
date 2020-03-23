<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>

        @media (min-width: 1281px) {
            #sidebar{margin-top:300px;}
        }
        
        @media (max-width: 767px) {
             #sidebar{float: none;}
             
        }

    </style>
</head>
<body>
 <!-- Search model -->
	<div class="search-model">
		<div class="h-100 d-flex align-items-center justify-content-center">
			<div class="search-close-switch">+</div>
			<form class="search-model-form">
				<input type="text" id="search-input" placeholder="Search here.....">
			</form>
		</div>
	</div>
	<!-- Search model end -->

   <!-- Header Section Begin -->

    <!-- Header Info End -->
    <!-- Header End -->

    <!-- Sidebar -->
    <div class="secWrap">
    
    <div id="sidebar">
      <!-- Search -->
      <div class="box search">
        <h2>Search by <span></span></h2>
        <div class="box-content">
          <form action="#" method="post">
            <label style="display: block;">Keyword</label>
            <input type="text" class="field" />
            <label style="display: block;">Category</label>
            <select class="field">
              <option value="">-- Select Category --</option>
            </select>
            <div class="inline-field">
              <label>Price</label>
              <select class="field small-field">
                <option value="">$10</option>
              </select>
              <label>to:</label>
              <select class="field small-field">
                <option value="">$50</option>
              </select>
            </div>
            <input type="submit" class="search-submit" value="Search" />
            <p> <a href="#" class="bul">Advanced search</a><br />
              <a href="#" class="bul">Contact Customer Support</a> </p>
          </form>
        </div>
      </div>
      <!-- End Search -->
      <!-- Categories -->
      <div class="box categories">
        <h2>Categories <span></span></h2>
        <div class="box-content">
          <ul>
            <li><a href="#">Category 1</a></li>
            <li><a href="#">Category 2</a></li>
            <li><a href="#">Category 3</a></li>
            <li><a href="#">Category 4</a></li>
            <li class="last"><a href="#">Category 5</a></li>
          </ul>
        </div>
      </div>
      <!-- End Categories -->
    </div>
    <!-- End Sidebar -->

</body>
</html>
   <%@
    	page import = "org.dimigo.vo.UserVO"
     %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <title>BlOG!</title>
    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/css.css">


  </head>

  <body>


    <nav class="navbar navbar-expand-lg navbar-transparency bg-transparency">
      <a class="navbar-brand" href="myblog.html">WATERBUM</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item" >
            <a class="nav-link" href="introduce.html"> Introduce <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item" >
            <a class="nav-link" href="dream.html"> BucketList </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="bucketlist.html"> Dream  </a>
          </li>
        </ul>
        
	   <%
    	UserVO user = (UserVO) session.getAttribute("user");
    	if(user == null){
    %>
        <form class="form-inline my-2 my-lg-0" id="loginForm">
          <input class="form-control mr-sm-2" type="text" placeholder="ID" aria-label="ID" id="id" required>
          <input class="form-control mr-sm-2" type="password" placeholder="PWD" aria-label="PWD" id="pwd" required>
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Sign In</button>
          &nbsp;
          <button class="btn btn-outline-success my-2 my-sm-0" data-toggle="modal" data-target="#signUpModal" type="button">Sign up</button>
        </form>
      </div>
    </nav>
  	<% } else { %>
  	    <ul class="navbar-nav flex-row ml-md-auto d-none d-md-flex">
	    <li class="nav-item dropdown">
	      <a class="nav-item nav-link dropdown-toggle mr-md-2" href="#" id="bd-versions" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	    	<%=user.getName() %>님
	      </a>
	      <div class="dropdown-menu dropdown-menu-right" aria-labelledby="bd-versions">
	      <form action= "/WebClass/logoutservlet" method = "post">
	      	<button type="submit" class="dropdown-item">Sign out</button>
	      </form>
	    </li>
	    </ul>
	    <% } %>

    <!-- 로그인 확인 모달 -->
    <div class="modal" id="myModal">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">Modal title</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
          <div class="modal-body">
            <p></p>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          </div>
        </div>
      </div>
    </div>

  <!--carousel -->

      <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img class="d-block w-100" src="../img/123.jpg" alt="First slide">
          </div>
          <div class="carousel-item">
            <img class="d-block w-100" src="../img/456.jpg" alt="Second slide">
          </div>
          <div class="carousel-item">
            <img class="d-block w-100" src="../img/789.jpg" alt="Third slide">
          </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>

    <h1 class="heading heading__title wow fadeIn">
      Vehicle, Architecture, Machine
    </h1>


    <footer class="footer">
      Copyright ⓒ 2017 Su beom Park. All rights reserved.
    </footer>

    <!-- 회원가입 폼 모달 -->

      <div class="modal" id="signUpModal">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form class="form-control mr-sm-2" id="registerForm">
          <div class="modal-header">
            <h5 class="modal-title">회원가입</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
          <div class="btn-group" data-toggle="buttons">
      <label class="btn btn-primary active">
        <input type="radio" name="grade" value="1">1학년
      </label>
      <label class="btn btn-primary">
        <input type="radio" name="grade" value="2">2학년
      </label>
      <label class="btn btn-primary">
        <input type="radio" name="grade" value="3">3학년
      </label>
    </div>
    <br>
    <br>
      <select class="custom-select" required>
      <option value="">반을 선택하세요.</option>
      <option value="1">1반</option>
      <option value="2">2반</option>
      <option value="3">3반</option>
      <option value="4">4반</option>
      <option value="5">5반</option>
      <option value="6">6반</option>
    </select>
    <br><br>
    <input type="text" id="number" placeholder="번호를 입력하세요." required>
    <input type="text" id="name" placeholder="이름을 입력하세요." required>
    <br><br>

    아이디<input type="text" id="regid" style="margin-left:44px; margin-bottom:5px;" placeholder="ID" required><br>
    비밀번호<input type="password" id="regpwd" style="margin-left:30px" placeholder="PWD" required>
</div>
<div class="modal-footer">
        <button data-toggle="modal" class="btn btn-primary" type="submit">Register</button>
        <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
      </div>
    </form>
</div>
</div>
</div>


<!-- 회원가입 확인 모달 -->
<div class="modal" id="checkModal">
<div class="modal-dialog" role="document">
  <div class="modal-content">
    <div class="modal-header">
      <h5 class="modal-title">Modal title</h5>
      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span>
      </button>
    </div>
      <div class="modal-body">
        <p></p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>

    <script  type="text/javascript" src = "../js/js.js"></script>
  </body>

</html>

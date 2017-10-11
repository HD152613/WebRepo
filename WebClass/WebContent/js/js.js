

      //로그인 확인 모달
      $(document).ready(function() {
        $('#loginForm').submit(function(event) {
          //자동으로 submit되는 걸 막기
          event.preventDefault();

          //id,pwd 값 가져오기
          var id = $('#id').val();
          var pwd = $('#pwd').val();
          console.log(id, pwd);


          //서버로 post 전송(ajax)
          $.post("http://httpbin.org/post",
          		{"id" : id, "pwd" : pwd},
          		function(data){
          		//	alert(data.form.id + '님 로그인 되었습니다.');
          		var myModal = $('#myModal');
          		myModal.modal();
          		myModal.find('.modal-body').text(data.form.id + '님 로그인 되었습니다.');
          		});
        });
      });

      // 회원가입 모달 jquery
      $(document).ready(function() {
        $('#registerForm').submit(function(event) {
          //자동으로 submit되는 걸 막기
          event.preventDefault();

          //id,pwd 값 가져오기
          var id = $('#regid').val();
          var pwd = $('#regpwd').val();
          var name = $('#name').val();
          console.log(regid, regpwd);


          //서버로 post 전송(ajax)
          $.post("http://httpbin.org/post",
              {"id" : id, "pwd" : pwd, "name" : name},
              function(data){
              //	alert(data.form.id + '님 로그인 되었습니다.');
              var myModal = $('#checkModal');
              myModal.modal();
              myModal.find('.modal-body').text(data.form.name + '님 회원가입되었습니다.');
              });
        });
      });

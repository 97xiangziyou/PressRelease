var bver,role="5";
var base="./";
$(document).ready(function () {
  //当光标在表单中的input里面时，按回车键，就执行与点击“登录”相同的操作
    $('#login-form input').keydown(function (e) {
        if (e.keyCode == 13)
        {
            checkUserName();
        }
    });
    $("#login-submit").click(checkUserName);  
});

function checkUserName()//登录前，校验用户信息
{    
      var a=$('#uid').val();
      var b=$('#pwd').val();
      if(a==""){alert("请输入考号");return;      }
      var re=/^\d{4}$|^\d{8}$/;
      if(!re.test(a)){alert("考号格式错误");return;     }
      if(b==""||b==undefined){alert("请输入登录密码");return;}
      $.ajax({
            url : base+"user/doLogin",
      //只封装和传输指定的数据
            data :{"uid":a,"pwd":b},
            type:"POST",
            success : function (res) {
                  if (res.ok) {
                        window.location.href=base+res.msg;
                  }else {alert(res.msg);             }
                  return false;
            },
            error : function(res) {alert("系统错误！");      }
      });
}

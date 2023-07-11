  var userId = $('#userid'),
    userPw = $('#userpw'),
    userName = $('#username'),
    userBirth = $('#userbirth'),
    userGender = $('#usergender'),
    loginBtn = $('#login-btn');

  loginBtn.click(function () {
    if (userId.val() == '') {
      userId.next('span').addClass('warning');
      setTimeout(() => {
        userId.next('span').removeClass('warning');
      }, 1500);
    } else if (userPw.val() == '') {
      userPw.next('span').addClass('warning');
      setTimeout(() => {
        userPw.next('span').removeClass('warning');
      }, 1500);
    } else if (userName.val() == '') {
        userName.next('span').addClass('warning');
        setTimeout(() => {
          userName.next('span').removeClass('warning');
        }, 1500);
      } else if (userBirth.val() == '') {
        userBirth.next('span').addClass('warning');
        setTimeout(() => {
          userBirth.next('span').removeClass('warning');
        }, 1500);
      } else if (userGender.val() == '') {
        userGender.next('span').addClass('warning');
        setTimeout(() => {
          userGender.next('span').removeClass('warning');
        }, 1500);
      }
  });

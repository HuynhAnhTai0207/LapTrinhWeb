<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="img/fav-icon.png" type="image/x-icon" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Cake - Bakery</title>
    <link href='https://fonts.googleapis.com/css?family=Nunito:400,300' rel='stylesheet' type='text/css'>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <link rel="stylesheet" href="css/register-account.css">
    <link rel="stylesheet" href="css/stylelogin.css">

</head>
<body>
<div class="page-content">
    <div class="form-v2-content">
        <form class="form-detail" action="#" method="post" id="myform">
            <h2>Đăng ký</h2>
            <div class="form-row">
                <label>Email</label>
                <input type="text" name="full_name" id="email" class="input-text" placeholder="Nhập email của bạn">
            </div>
            <div class="form-row">
                <label>Tên tài khoản</label>
                <input type="text" name="full_name" id="full_name" class="input-text" placeholder="Nhập tên của bạn">
            </div>
            <div class="form-row">
                <label for="password">Mật khẩu</label>
                <input type="password" name="password" id="password" class="input-text" placeholder="Nhập mật khẩu của bạn">
            </div>
            <div class="form-row">
                <label>Xác nhận mật khẩu</label>
                <input type="password" name="confirm_password" id="confirm_password" class="input-text" placeholder="Nhập mật khẩu của bạn">
            </div>
            <div class="form-row-last">
                <button class="register">
                    <a href="dangnhap.jsp">Đăng ký</a>
                </button>
            </div>
            <div class="form-row-last">
                <p style="margin-top: 20px; margin-bottom: 20px; color: #aaaaaa; text-align: center;">Bạn đã có tài khoản? <a href="" class="login-link">Đăng nhập</a></p>
            </div>
        </form>
    </div>
</div>
</body>
</html>
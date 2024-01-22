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

    <link href="css/register-account.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="/includes/asserts/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css " href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">

</head>
<body>
<div class="page-content">
    <div class="form-v2-content" style="width: 600px">
        <form class="form-detail" action="signup" method="post" id="myform">
            <h2>Đăng ký</h2>
            <p class="text-danger">${mess}</p>
            <legend style="font-size: 24px; font-weight: 600;margin-bottom: 25px; text-align: center">Thông Tin Cá Nhân Của Bạn</legend>
            <div class="form-row">
                <div style="display: flex">
                    <div style="color: #F00;font-weight: bold;margin-right: 3px;">*</div>
                    <label>Họ</label>
                </div>
                <input type="text" name="firstname" id="firstname" class="input-text" placeholder="Nhập họ của bạn">
            </div>
            <div class="form-row">
                <div style="display: flex">
                    <div style="color: #F00;font-weight: bold;margin-right: 3px;">*</div>
                    <label>Tên</label>
                </div>
                <input type="text" name="lastname" id="lastname" class="input-text" placeholder="Nhập tên của bạn">
            </div>
            <div class="form-row">
                <div style="display: flex">
                    <div style="color: #F00;font-weight: bold;margin-right: 3px;">*</div>
                    <label>Email</label>
                </div>
                <input type="text" name="email" id="email" class="input-text" placeholder="Nhập email của bạn">
            </div>
            <div class="form-row">
                <div style="display: flex">
                    <div style="color: #F00;font-weight: bold;margin-right: 3px;">*</div>
                    <label>Điện thoại</label>
                </div>
                <input type="text" name="telephone" id="telephone" class="input-text" placeholder="Nhập số điện thoại của bạn">
            </div>
            <legend style="font-size: 24px; font-weight: 600;margin-bottom: 25px; text-align: center">Mật Khẩu Của Bạn</legend>
            <div class="form-row">
                <div style="display: flex">
                    <div style="color: #F00;font-weight: bold;margin-right: 3px;">*</div>
                    <label>Mật khẩu</label>
                </div>
                <input type="password" name="password" id="password" class="input-text" placeholder="Nhập mật khẩu của bạn">
            </div>
            <div class="form-row">
                <div style="display: flex">
                    <div style="color: #F00;font-weight: bold;margin-right: 3px;">*</div>
                    <label>Xác nhận mật khẩu</label>
                </div>
                <input type="password" name="confirm_password" id="confirm_password" class="input-text" placeholder="Nhập mật khẩu của bạn">
            </div>
            <div class="form-row-last">
                <button class="register" type="submit">Đăng ký</button>
            </div>
            <div class="form-row-last">
                <p style="margin-top: 20px; margin-bottom: 20px; color: #aaaaaa; text-align: center;">Bạn đã có tài khoản? <a href="dangnhap.jsp" class="login-link">Đăng nhập</a></p>
            </div>
        </form>
    </div>
</div>
</body>
</html>
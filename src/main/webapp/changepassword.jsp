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
        <form class="form-detail" action="changePassword" method="post" id="myform">
            <h2>Đổi mật khẩu</h2>
            <p class="text-danger">${mess}</p>
            <div class="form-row">
                <label>Mật khẩu cũ</label>
                <input type="password" name="oldPassword" id="oldPassword" class="input-text" placeholder="Nhập mật khẩu cũ của bạn">
            </div>
            <div class="form-row">
                    <label>Mật khẩu</label>
                <input type="password" name="newPassword" id="newPassword" class="input-text" placeholder="Nhập mật khẩu của bạn">
            </div>
            <div class="form-row">
                    <label>Xác nhận mật khẩu</label>
                <input type="password" name="confirm_password" id="confirm_password" class="input-text" placeholder="Nhập mật khẩu của bạn">
            </div>
            <div class="form-row-last">
                <button style="background: #0e84c6; border: none" class="btn-save" type="submit">Lưu thay đổi</button>
            </div>
        </form>
    </div>
</div>
</body>
</html>
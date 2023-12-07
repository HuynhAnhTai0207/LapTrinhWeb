<%@ page import="vn.edu.hcmuaf.fit.entity.Account" %>
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
    <form class="form-detail" action="editAccount" method="post" id="myform">
      <legend style="font-size: 24px; font-weight: 600;margin-bottom: 25px; text-align: center">Thông Tin Tài Khoản Của Bạn</legend>
      <div class="form-row">
          <label>Họ</label>
        <input type="text" name="firstname" id="firstname" class="input-text" value="<%= ((Account)session.getAttribute("account")).getFirstName() %> " >
      </div>
      <div class="form-row">
          <label>Tên</label>
        <input type="text" name="lastname" id="lastname" class="input-text" value="<%= ((Account)session.getAttribute("account")).getLastName() %>" >
      </div>
      <div class="form-row">
        <label>Họ và Tên</label>
        <input type="text" name="fullname" id="fullname" class="input-text" value="<%= ((Account)session.getAttribute("account")).getFullName() %>" >
      </div>
      <div class="form-row">
          <label>Email</label>
        <input type="text" name="email" id="email" class="input-text" value="<%= ((Account)session.getAttribute("account")).getEmail() %>" >
      </div>
      <div class="form-row">
          <label>Điện thoại</label>
        <input type="text" name="telephone" id="telephone" class="input-text" value="<%= ((Account)session.getAttribute("account")).getPhone() %>" >
      </div>
      <div class="form-row-last">
        <button style="background: #0e84c6; border: none" class="save" type="submit">Lưu</button>
      </div>
    </form>
  </div>
</div>
</body>
</html>
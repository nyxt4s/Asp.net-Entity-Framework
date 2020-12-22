<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Proyecto_Web.Views.Login.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>Login</title>
    <!-- Bootstrap core CSS-->
    <link href="../../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <!-- Custom fonts for this template-->
    <link href="../../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <!-- Page level plugin CSS-->
    <link href="../../vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet"/>
    <!-- Custom styles for this template-->
    <link href="../../css/sb-admin.css" rel="stylesheet"/>
      <!-- Bootstrap core JavaScript-->
  <script src="../../vendor/jquery/jquery.min.js"></script>
  <script src="../../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Core plugin JavaScript-->
  <script src="../../vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
   
</head>
<body class="bg-dark">
  <div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header">Login</div>
      <div class="card-body">
        <form runat="server">
          <div class="form-group">

              <asp:Label Text="Correo" runat="server"></asp:Label>
            <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control"></asp:TextBox>
          </div>
          <div class="form-group">
              <asp:Label Text="Contraseña" ID="lblPassword" runat="server"></asp:Label>
            <asp:TextBox runat="server" ID="txtPass" CssClass="form-control" TextMode="Password"    ></asp:TextBox>
          </div>
          <div class="form-group">
            <div class="form-check">
              <label class="form-check-label"/>
                <asp:CheckBox ID="chkRecordar" runat="server" Text="Desea Recordar su contraseña?" />
            </div>
          </div>
          <asp:Button ID="btnAceptar" runat="server" CssClass="btn btn-primary btn-block" Text="Aceptar" OnClick="btnAceptar_Click" />
        </form>
        <div class="text-center">
          <a class="d-block small mt-3" href="#">Cree una cuenta, aqui!</a>
          <a class="d-block small" href="#">Olvido su contraseña?</a>
        </div>
      </div>
    </div>
  </div>

</body>

</html>

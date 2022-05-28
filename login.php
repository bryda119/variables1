<?php
include("Plantillas/Encabezado.php");
include("Admin/BDD/Conexion.php");
session_start();

$_SESSION["PERMISO"] = false;
$_SESSION["NOMBRE"] = "";
$_SESSION["APELLIDO"] = "";

if ($_SERVER['REQUEST_METHOD'] === "POST" and isset($_POST)) {

    $usuario = $_POST["usuario"];
    $clave = $_POST["clave"];
    $sql = "select * from usuarios where usuario = '$usuario' and clave = '$clave' ";

    $result = $conn->query($sql);

    if ($result->num_rows == 1) {
        $row = $result->fetch_assoc();
        $_SESSION["PERMISO"] = true;
        $_SESSION["NOMBRE"] = $row["nombre"];
        $_SESSION["APELLIDO"] = $row["apellido"];
        $_SESSION["USUARIO"] = $row["usuario"];

        echo '<script>
  
    window.location.href= "index.php";
    </script>';
    } else {
        echo "<script>alert ('Intente nuevamente');</script> ";
    }
}
?>

<div class="container">
    <div class="row">
        <div class="col-md-4">
            <form method="POST">
                <h1><label class="form-label">Bienvenidos</label><br></h1>
              <h6> </Style> <label class="form-label">Ingrese su usuario</label></h6>
                <input type="text" name="usuario" class="form-control" placeholder="Ingrese su usuario" />
              <h6>  <label class="form-label">Ingrese su clave</label></h6>
                <input type="password"" name="clave" class="form-control" placeholder="Ingrese su clave" />
               
                <br>
                <input type="submit" name="enviarLogin" class="btn btn-primary" value="Ingresar " />

            </form>
            <form>

                <br>
             
                    <a class="btn btn-primary" href=" registro.php">Registrar</a>

                </li>
            </form>

        </div>
    </div>
</div>
<?php include("Plantillas/pie.php") ?>
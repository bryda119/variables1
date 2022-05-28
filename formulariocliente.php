<?php
include("Plantillas/Encabezado.php");
include("Admin/BDD/Conexion.php");


$id = "";
$nombre = " ";
$apellido = " ";
$fecha = " ";
$detalle = " ";
$usuario = " ";
$clave = " ";


if ($_SERVER['REQUEST_METHOD'] === "POST" and isset($_POST) and $_POST["Enviar"] === "Actualizar") {
    $id = $_POST["id"];
    $sql = "select * from clientes where id=$id";

    $result = $conn->query($sql);
    $row = $result->fetch_assoc();
    //  $id = $row["id"];
    $nombre = $row["nombre"];
    $apellido = $row["apellido"];
    $fecha = $row["fnacimiento"];
    $detalle = $row["detalle"];
    $usuario = $row["usr"];
    $clave = $row["pasword"];
}


?>
<div class="container">
    <div class="row">

        <div class="col-md-4">
            <form action="crudcliente.php" method="POST" enctype="multipart/form-data">
              <h2>  <label class="from-label">Formulario Cliente</label></h2>
              
                <input type="hidden" name="id" value="<?php echo $id ?>"/><br>

             <h6>   <label class="from-label">Ingrese Nombre</label><br></h6>
                <input type="text" name="nombre" class="from-control" placeholder="Ingrese Nombre" value="<?php echo $nombre ?>" /><br>

              <h6>  <label class="from-label1">Ingrese el Apellido </label><br></h6>
                <input type="text" name="apellido" class="from-control" placeholder="Ingrese Apellido" value="<?php echo $apellido ?>" /><br>


              <h6>  <label class="from-label1">Ingrese la fecha de naciemiento </label><br></h6>
                <input type="date" name="fnacimiento" class="from-control" placeholder="Ingrese la fecha" value="<?php echo $fecha ?>" /><br>


               <h6> <label class="from-label1">Ingrese el detalle </label><br></h6>
                <input type="text" name="detalle" class="from-control" placeholder="Ingrese el detalle" value="<?php echo $detalle ?>" /><br>

               <h6> <label class="from-label1">Ingrese el usuario </label><br></h6>
                <input type="text" name="usuario" class="from-control" placeholder="Ingrese el detalle" value="<?php echo $usuario ?>" /><br>

               <h6> <label class="from-label1">Ingrese la clave </label><br></h6>
                <input type="text" name="clave" class="from-control" placeholder="Ingrese el detalle" value="<?php echo $clave ?>" /><br>

                <br>

                <button type="submit" class="byn btn-primay" name="Enviar" value="Guardar">Guardar </button>
            </form>
        </div>
    </div>
</div>

<?php
include("Plantillas/Pie.php");
?>
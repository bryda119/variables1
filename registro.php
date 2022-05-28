<?php

include("Plantillas/Encabezado.php");
include("Admin/BDD/Conexion.php");

$id = "";
$nombre = " ";
$apellido = " ";
$usuario= " ";
$contraseña = " ";

if($_SERVER['REQUEST_METHOD']==="POST" AND isset($_POST) and $_POST["Enviar"]==="Actualizar") {
    $id = $_POST["id"];
    $sql = "select * from usuarios where idu=$id";

    $result = $conn->query($sql);
    $row = $result->fetch_assoc();
    //$id = $row["id"];
    $nombre = $row["nombres"];
    $apellido = $row["apellidos"];
    $usuario  = $row["usuario"];
    $contraseña = $row["contraseña"];
    
}
?>
<div class="container">
    <div class="row">

        <div class="col-md-3">
            <form action="crudregistro.php" method="POST" enctype="multipart/form-data">
             <h2>   <label class="from-label">Registro</label></h2>
                <br>

                <input type="hidden" name="id" value="<?php echo $id?>" /><br>

              <h6>  <label class="from-label">Ingrese Nombre</label><br></h6>
                <input type="text" name="nombre" class="form-control" placeholder="Ingrese Nombre" <?php echo $nombre?>/>

              <h6>  <label class="from-label1">Ingrese Apellido</label></h6>
           
                <input type="text" name="apellido" class="form-control" placeholder="Ingrese su Apellido"<?php echo $apellido?> />
               

               <h6> <label class="from-label1">Ingrese Usuario</label><br></h6>
                <input type="text" name="usuario" class="form-control" placeholder="Ingrese el Usuario" <?php echo $usuario?>/>


               <h6> <label class="from-label1">Ingrese Contraseña </label></h6>
                <input type="text" name="clave" class="form-control" placeholder="Ingrese la clave" <?php echo $contraseña?>/>


              

               
                <br>

                <button type="submit" class="byn btn-primay" name="Enviar" value="Guardar">Guardar </button>
            </form>
        </div>
    </div>
</div>

<?php 
include("Plantillas/Pie.php");
?>
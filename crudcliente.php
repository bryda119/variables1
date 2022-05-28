<?php
include("Admin/BDD/Conexion.php");

if (isset($_POST["Enviar"]) && $_POST["Enviar"] === "Guardar") {
    
    $id = $_POST['id'];
    $nombres = $_POST['nombre'];
    $apellidos = $_POST['apellido'];
    $fechas = $_POST['fnacimiento'];
    $detalles = $_POST['detalle'];
    $usuario = $_POST['usuario'];
    $clave = $_POST['clave'];
    
    
    
    if (empty($id)) {
        $sql = "insert into clientes(id, nombre, apellido, fnacimiento, detalle, usr,pasword)
    values ('$id','$nombres','$apellidos','$fechas','$detalles','$usuario','$clave');";
    } else {
       
     $sql ="update clientes SET  nombre='$nombres',apellido='$apellidos',fnacimiento='$fechas',detalle='$detalles',usr='$usuario', pasword='$clave' WHERE id='$id'; ";
    }

    if ($conn->query($sql)) {
        echo "Datos guardados correctamente";
    } else {
        echo " Error al guardar";
    }

    $conn->close();
} else if (isset($_POST["Enviar"]) && $_POST["Enviar"] === "Eliminar") {
    $id = $_POST["id"];
    $sql = "delete from clientes where id=$id";
    if ($conn->query($sql)) {
        echo "Datos eliminados correctamente";
    } else {
        echo "Error al eliminar";
    }
    $conn->close();
}
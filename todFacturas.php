<?php
include("Plantillas/Encabezado.php");
include("Admin/BDD/Conexion.php");
$sql = "select d.idd, d.cantidad,d.precioventa, d.importe,f.IVA,f.subtotal,f.total
from facturas f, detalles d
where f.idf = d.idfactura ";
$result = $conn->query($sql);
/*if($_SESSION['PERMISO'] ){
    $sql="select *from productos";
    $result=$conn->query($sql);

//}else{
  //  header("Location: login.php");
}

*/

?>
<div class="container">
    <div class="row">
        <table class="table table-striped table-inverse table-responsive">
            <thead class="thead-inverse">
                <tr>
                    <th>Id</th>
                    <th>Cantidad</th>
                    <th>Precio</th>
                    <th>Importe</th>
                    <th>Iva</th>
                    <th>SubTotal</th>
                    <th>Total</th>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <?php while ($r = $result->fetch_assoc()) { ?>
                    <tr>

                        <td><?php echo $r['idd']; ?> </td>
                        <td><?php echo $r['cantidad']; ?></td>
                        <td><?php echo $r['importe']; ?></td>
                        <td><?php echo $r['precioventa']; ?></td>
                        <td> <?php echo $r['IVA']; ?></td>
                        <td> <?php echo $r['subtotal']; ?></td>
                        <td> <?php echo $r['total']; ?></td>
                       
             
                        <td>
                           
                        </td>
                        <td>

                            <form action="factura.php" method="POST">
                                <input type="hidden" name="id" value="<?php echo $r['idd']; ?>">

                                <button type="submit" class="btn btn-success" name="Enviar" value="Actualizar">PDF </button>

                            </form>
                        </td>
                        </td>
                    </tr>
                <?php
                }
                $conn->close();
                ?>
            </tbody>
        </table>

    </div>
</div>
<?php 
//LLamamos los datos de conexion
include ('../core/conexion.php');

if(isset($_POST["userId"])){

    $userId = $_POST['userId'];

    $sql = "DELETE FROM usuario WHERE Id_usuario='$userId'";
    $query = mysqli_query($conexion,$sql);

    header('Location: ../views/usuarios.php');

    echo "ID del boton recivido: $userId";
}else{
    echo "ID del boton no recivido";

}


?>
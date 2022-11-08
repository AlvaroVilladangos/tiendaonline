<?php

require '/auxiliar.php';

function insertar_departamento($codigo, $descrpicion, $precio)
{
    $pdo = conectar();
    $sent = $pdo->prepare("INSERT
                             INTO departamentos (codigo, descrpicion, precio)
                           VALUES (:codigo, :descrpicion, :precio)");
    $sent->execute([
        ':codigo' => $codigo,
        ':descrpicion' => $descrpicion,
        ':precio' => $precio,
    ]);
}

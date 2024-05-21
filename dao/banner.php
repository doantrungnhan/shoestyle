<?php 

require_once 'pdo.php' ;

function banner_insert($name, $img, $type) 
{ 
    $sql = "INSERT INTO banner ( name, img, type) VALUES ( ?, ?, ?)";
    pdo_execute($sql, $name, $img, $type);
}

function banner_update( $name, $img, $type,$id)
{
    $sql = "UPDATE banner SET name = ?, img = ?, type = ? WHERE id=?";
    pdo_execute($sql, $name, $img, $type,$id);
}

function banner_delete($id)
{
    $sql = "delete from banner where id=?";
    pdo_execute($sql, $id);
}

function banner_select_all()
{
    $sql = "select * from banner order by id desc";
    return pdo_query($sql);
}

function banner_select_by_id($id)
{
    $sql = "select * from banner where id = ?";
    return pdo_query_one($sql,$id);
}
function banner_select_by_type($type)
{
    $sql = "select * from banner where type = ?";
    return pdo_query_all($sql,$type);
}


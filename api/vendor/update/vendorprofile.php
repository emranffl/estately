<?php
require __DIR__ . '/../../../resources/DB/ORM/instance.php';

if (isset(getallheaders()['password']) && isset(getallheaders()['password']) && isset(getallheaders()['mobile'])) {
    $vendor = getallheaders()['email'];
    $password = getallheaders()['password'];
    $mobile = getallheaders()['mobile'];
    $sql = "
        UPDATE
            vendor
        SET 
            password = '$password',
            mobile_no = '$mobile'
        WHERE
            email = '$vendor'
    ";


    try {
        // fetch here
        echo R::exec($sql) ?
            json_encode(
                array(
                    'success' => true,
                )
            )
            :  json_encode(
                array(
                    'error' => 'Server-side error!',
                )
            );
    } catch (PDOException $e) {
        echo json_encode(array('error' => $e->getMessage()), JSON_FORCE_OBJECT);
    }

    // close connection
    R::close();
} else {
    echo json_encode(array('error' => "Invalid request!"), JSON_FORCE_OBJECT);
}

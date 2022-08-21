<?php
require __DIR__ . '/../../../resources/DB/ORM/instance.php';


// echo array(
//     'success' =>
//     print_r(file_get_contents('php://input'))
// );

if (isset($getallheaders()['property']) && isset($getallheaders()['address'])) {
    $property = $getallheaders()['property'];
    $address = $getallheaders()['address'];
    $apartment = isset($getallheaders()['apartment']) ? $getallheaders()['apartment'] : null;
    $studio = isset($getallheaders()['studio']) ? $getallheaders()['studio'] : null;
    $rentInfo = isset($getallheaders()['rentInfo']) ? $getallheaders()['rentInfo'] : null;
    $leaseInfo = isset($getallheaders()['leaseInfo']) ? $getallheaders()['leaseInfo'] : null;

    // $sql = "
    //     UPDATE
    //         vendor
    //     SET 
    //         password = '$password',
    //         mobile_no = '$mobile'
    //     WHERE
    //         email = '$vendor'
    // ";


    try {
        // fetch here
        // echo R::exec($sql) ?
        //     json_encode(
        //         array(
        //             'success' => true,
        //         )
        //     )
        //     :  json_encode(
        //         array(
        //             'error' => 'Server-side error!',
        //         )
        //     );
        json_encode(
            array(
                'data' => $property,
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

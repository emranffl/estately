<?php
require __DIR__ . '/../../../resources/DB/ORM/instance.php';

if (isset(getallheaders()['offset'])) {
    $type = getallheaders()['type'] != 'null' ? getallheaders()['type'] : null;
    $limit = 4;
    $sql = "
        SELECT
        p.id AS 'id',
        name,
        type,
       -- vendor_email,
       -- description,
        enlisted_for,
       -- street_address,
        district,
        division,
       -- latitude,
       -- longitude,
        ac_type,
        elevator,
        gym,
        laundry,
        microwave,
        parking,
        pharmacy,
        prayer_area,
        refrigerator,
        tv,
        wheelchair,
        wifi
    FROM
        property p
    JOIN address a ON
        p.id = a.id
    JOIN amenity am ON
        p.id = am.id
    WHERE
        p.availability_status = 'vacant' 
    AND 
        p.post = 'public'";

    $type ? ($sql .= " AND type = '$type'") : null;
    $sql .= " LIMIT $limit OFFSET " . getallheaders()['offset'];

    try {
        // fetch here
        $retrievedData = R::getAll($sql);
    } catch (PDOException $e) {
        echo json_encode(array('error' => $e->getMessage()), JSON_FORCE_OBJECT);
    }

    // close connection
    R::close();

    require __DIR__ . '/../../../components/app/propertycard.php';

    echo json_encode(array(
        'data' => getPropertyCards($retrievedData),
        'eoq' => sizeof($retrievedData) < $limit,
    ), JSON_HEX_QUOT | JSON_HEX_TAG | JSON_UNESCAPED_SLASHES);
} else {
    echo json_encode(array('error' => "Invalid query!"), JSON_FORCE_OBJECT);
}

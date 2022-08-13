<?php
require __DIR__ . '/../../../resources/DB/ORM/instance.php';

if (isset(getallheaders()['offset'])) {
    $query = getallheaders()['query'] != 'null' ? getallheaders()['query'] : null;
    $location = getallheaders()['district'] != 'null' ? getallheaders()['district'] : null;
    $type = getallheaders()['type'] != 'null' ? getallheaders()['type'] : null;
    $enlisted = getallheaders()['enlisted'] != 'null' ? getallheaders()['enlisted'] : null;
    $limit = 4;
    $sql = "
        SELECT
        p.id AS 'id',
        name,
        type,
        enlisted_for,
        district,
        division,
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
        wifi,
        ROUND(
            6371 * ACOS(
                COS(RADIANS(23.7984949)) * COS(RADIANS(latitude)) * COS(RADIANS(longitude) 
                - RADIANS(90.3839492)) 
                + SIN(RADIANS(23.7984949)) * SIN(RADIANS(latitude)
            ) 
        ),
        2
    ) AS distance
    FROM
        property p
    JOIN address a ON
        p.id = a.id
    JOIN amenity am ON
        p.id = am.id
    LEFT JOIN application ap ON
        p.id = ap.id AND ap.status != 'Pending'
    WHERE
        p.availability_status = 'vacant' 
    AND 
        p.post = 'public'";

    $query ? ($sql .= " AND name LIKE '%$query%'") : null;
    $location ? ($sql .= " AND district = '$location'") : null;
    $type ? ($sql .= " AND type = '$type'") : null;
    $enlisted ? ($sql .= " AND type = '$enlisted'") : null;
    $sql .= " ORDER BY distance ASC LIMIT $limit OFFSET " . getallheaders()['offset'];

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

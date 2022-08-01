<?php

/**
 * Function to get current client's login status.
 * 
 * @param {$clientType} user (default) | vendor | admin
 */
function isClientLoggedIn($clientType = 'user')
{
    $clientType == 'user' ? $clientType = '' : null;
    return isset($_SESSION[$clientType . 'name']) && isset($_COOKIE[$clientType . 'name']);
}

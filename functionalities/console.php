<?php

/**
 * A global function to print as log in browser console.
 *
 * @param {$data} value to print
 */
function consoleLog($data)
{
    if (is_array($data)) {
        $js = json_encode($data);
        echo "<script>console.log($js)</script>";
        return;
    }
    echo "<script>console.log(`$data`)</script>";
}

/**
 * A global function to print as warn in browser console.
 *
 * @param {$data} value to print
 */
function consoleWarn($data)
{
    if (is_array($data)) {
        $js = json_encode($data);
        echo "<script>console.warn($js)</script>";
        return;
    }
    echo "<script>console.warn(`$data`)</script>";
}

/**
 * A global function to print as error in browser console.
 *
 * @param {$data} value to print
 */
function consoleError($data)
{
    if (is_array($data)) {
        $js = json_encode($data);
        echo "<script>console.error($js)</script>";
        return;
    }
    echo "<script>console.error(`$data`)</script>";
}

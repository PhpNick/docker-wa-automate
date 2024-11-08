<?php
$url = 'http://192.168.25.100:3000/send-message'; // Node.js server URL
$data = [
    'number' => '79002006001@c.us', // ID чата (то есть уже заранее должен быть чат)
    'message' => 'Hello from PHP!'
];

$options = [
    'http' => [
        'header'  => "Content-type: application/json\r\n",
        'method'  => 'POST',
        'content' => json_encode($data),
    ],
];

$context  = stream_context_create($options);
$result = file_get_contents($url, false, $context);

if ($result === FALSE) {
    die('Error');
}

echo $result;
?>

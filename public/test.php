<?php
$servername = "34.124.174.151";
$username = "boss";
$password = "abc123456";

// Create connection
$conn = new mysqli($servername, $username, $password);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";

phpinfo();

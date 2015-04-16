<?php

// Wegen fehlender Freigabe kann hier nicht der echte Programmcode von chefkoch verwendet werden

header('Cache-Control: private');

?>
<html>
  <head>
     <meta charset="utf-8">
     <title>chefkoch</title>
  </head>
  <body>
    <h1>chefkoch</h1>
    <p>search backend is <?php print @file_get_contents('http://search:8080') ? 'available' : 'not available'; ?></p>
    <p>database backend is <?php

    try {
      $database = new PDO('mysql:host=database', 'root', 'root');
      $database->query('SELECT 1');
      print 'available';
    } catch (PDOException $e) {
      print 'not available';
    }
    
    ?></p>
    <p>cache backend is <?php print @fsockopen('cache', 6379) ? 'available' : 'not available'; ?></p>
  </body>
</html>

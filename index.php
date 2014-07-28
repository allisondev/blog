<?php

//Connect to MySQL
$connection = mysql_connect('localhost', 'root', '');

//Select the 'allison_blog' database
mysql_select_db('allison_blog');

//Check connection
if(!$connection){
  die('Failed to connect to MySQL: ' . mysql_connect_error());
}

//$result = mysql_query('SELECT id, title, author, body FROM articles');
//$result = mysql_query('');
$result = mysql_query('SELECT articles.id, articles.title, authors.author_name, authors.author_email_address, articles.body FROM articles LEFT JOIN authors ON articles.author_id = authors.author_id ORDER BY id DESC');
?>
<!DOCTYPE HTML>
<html>
  <head>
    <title>
      Pirates Blog 
    </title>
    <link rel="stylesheet" type="text/css" href="style.css"/> 
  </head>

  <body>
    <h1>Welcome to The Pirate Blog<br/> Arrr... Matey!!</h1>

    <?php

      //Loops through each row from the query result
      while($row = mysql_fetch_array($result)){

        print '<article>';

        //Prints an h2 with link for each article
        print '<h2><a href="/day-5-exercises/article.php?id=' . $row['id'] . '">'  . $row['title'] . '</a></h2>';

        //Prints the author name with mailto link
        print '<em>By: <a href="mailto: ' . $row['author_email_address']  . '">' . $row['author_name'] . '</a></em>';

        //Prints the body
        print '<p>' . $row['body'] . '</p>';

        print '</article>';
      }

    ?>

  </body>





</html>

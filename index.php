<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/main.css">
    <title>Contact Form</title>
</head>
<body>
    <form action="data/contact.php" method="post" class="contact">
        <h1>Contact Us</h1>
        <label for="name-field">Name</label><br>
        <input id="name-field" name="name" type="text" placeholder="Name"><br><br>
        <label for="email-field">Email</label><br>
        <input id="email-field" name="email" type="email" placeholder="Email"><br><br>
        <label for="subject-field">Subject</label><br>
        <input id="subject-field" name="subject" type="text" placeholder="Subject"><br><br>
        <label for="message-field">Message</label><br>
        <textarea id="message-field" name="message"></textarea><br><br>
        <button type="submit">Submit</button>
    </form>
</body>

</html>
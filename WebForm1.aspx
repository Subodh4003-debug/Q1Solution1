<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Assignments.WebForm1" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Image Gallery</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
        }

        .image-container {
            display: flex;
            flex-direction: column; /* Default to vertical */
            gap: 20px;
            align-items: center;
        }

        .image-wrapper {
            text-align: center;
            width: 100%;
        }

        .image-wrapper img {
            width: 100%;
           /* max-width: 400px;*/
            height: auto;
            display: block;
            margin: 0 auto;
        }

        .image-wrapper p {
            margin-top: 5px;
            font-size: 16px;
            font-weight: bold;
        }

        /* Desktop Mode */
        @media (min-width: 768px) {
            .image-container {
                flex-direction: row; /* Display in row on desktop */
                justify-content: space-between;
            }

            .image-wrapper img {
                width: 100%; /* Use full width in desktop row */
            }
        }
    </style>
</head>
<body>

    <h2>Collections</h2>
    
    <div class="image-container">
    <div class="image-wrapper">
        <a href="https://www.anilaa.in/collections/banarasi-sarees">  <img src="images/1.jpg"  alt="Banarasi"></a>
    <a href="https://www.anilaa.in/collections/banarasi-sarees"> <p>BANARASI &rarr;</p></a>
       
    </div>
    <div class="image-wrapper">
        <a href="https://www.anilaa.in/collections/chanderi-sarees"> <img src="images/2.jpg"  alt="Chanderi"></a>
       
        <a href="https://www.anilaa.in/collections/chanderi-sarees"> <p>CHANDERI &rarr;</p></a>
       
    </div>
    <div class="image-wrapper">
        <a href="https://www.anilaa.in/collections/maheshwari-sarees"><img src="images/3.jpg"  alt="Maheshwari"></a>
        
        <a href="https://www.anilaa.in/collections/maheshwari-sarees"> <p>MAHESHWARI &rarr;</p></a>
       
    </div>
</div>

</body>
</html>


﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="Assignments.WebForm3" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive Image Gallery</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
        }

        .container {
            display: flex;
            gap: 10px;
            justify-content: space-between;
            overflow: hidden;
            width: 100%;
        }

        .image-wrapper {
            text-align: center;
            flex: 1;
            position: relative;
            height: auto; /* Allow dynamic height */
        }

            .image-wrapper img {
                width: 100%;
                height: auto;
                object-fit: cover; /* Ensures image fits without distortion */
            }

            .image-wrapper p {
                margin-top: 5px;
                font-size: 16px;
                font-weight: bold;
                position: absolute;
                bottom: 10px; /* Positions text at the bottom */
                left: 0;
                right: 0;
                width: 98%;
                color: white; /* Optional, for better visibility on images */
                background: rgba(0, 0, 0, 0.5); /* Optional, for readability */
                padding: 5px;
            }

        /* Mobile Mode */
        @media (max-width: 768px) {
            .container {
                flex-wrap: nowrap;
                overflow-x: auto;
                scroll-snap-type: x mandatory;
                -webkit-overflow-scrolling: touch;
                scroll-behavior: smooth;
            }

            .image-wrapper {
                flex: 0 0 100%;
                scroll-snap-align: center;
                padding: 10px;
                box-sizing: border-box;
                height: auto; /* Allows flexibility for mobile */
            }

                .image-wrapper img {
                    width: 100%;
                    max-width: 500px;
                    height: auto;
                }

                .image-wrapper p {
                   
                    width: 91%;
                    left:9px;
                }
        }
    </style>



</head>
<body>

    <h2>Collections</h2>

    <div class="container">
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

    <script>
      
        // Auto-scroll effect for mobile view
        function autoScroll() {
            const container = document.querySelector('.container');
            const scrollStep = container.clientWidth; // Width of one image

            let scrollAmount = 0;
            const scrollInterval = 5000; // Scroll every 2.5 seconds

            // Function to handle the scroll behavior
            function scroll() {
                // If we reach the end of the container, reset to the start
                if (scrollAmount + scrollStep >= container.scrollWidth) {
                    container.scrollLeft = 0; // Reset to the first image
                    scrollAmount = 0; // Reset the scroll amount
                } else {
                    container.scrollBy({ left: scrollStep, behavior: 'smooth' }); // Scroll by one image width
                    scrollAmount += scrollStep; // Update the scroll amount
                }
            }

            // Start the scroll loop
            setInterval(scroll, scrollInterval);
        }

        // Trigger auto-scroll for small screen sizes
        if (window.innerWidth < 768) {
            autoScroll(); // Start auto-scrolling for mobile
        }

        // Recheck window size on resize and start/stop auto-scroll accordingly
        window.addEventListener('resize', () => {
            if (window.innerWidth < 768) {
                autoScroll(); // Start the scroll again if the screen size is below 768px
            }
        });
    </script>

</body>
</html>


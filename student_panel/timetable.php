
<?php include("../assets/noSessionRedirect.php"); ?>
<?php include("./verifyRoleRedirect.php"); ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GENERATION NT</title>
    <link rel="shortcut icon" href="../Generation Nt/GNT.jpg">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Sharp" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="../css/oranbyte-google-translator.css">
    <script src="../js/oranbyte-google-translator.js"></script>
</head>
<body>
   <header>
        <div class="logo" title="University Management System">
            <!--<img src="./images/SCHOOL-LOGO.webp" alt="">-->
            <h2 translate="no"><span class="danger1"> GENERATION </span> <br><span class="danger">      NT</span></h2>
        </div>
        <div class="navbar">
            <a href="index.php">
                <span class="material-icons-sharp" translate="no">home</span>
                <h3 translate="no">Home</h3>
            </a>
            <a href="timetable.php" onclick="timeTableAll()">
                <span class="material-icons-sharp" translate="no">today</span>
                <h3 translate="no" translate="no">Time Table</h3>
            </a>
            <a href="exam.php">
                <span class="material-icons-sharp" translate="no">grid_view</span>
                <h3 translate="no">Examination</h3>
            </a>
            <a href="workspace.php">
                <span class="material-icons-sharp" translate="no">description</span>
                <h3 translate="no">Workspace</h3>
            </a>
            <a href="password.php">
                <span class="material-icons-sharp" translate="no">password</span>
                <h3 translate="no">Change Password</h3>
            </a>
            <a href="logout.php">
                <span class="material-icons-sharp" onclick="" translate="no">logout</span>
                <h3 translate="no">Logout</h3>
            </a>
            
        </div>
        <div id="profile-btn">
            <span class="material-icons-sharp" translate="no">person</span>
        </div>
        <div class="theme-toggler">
            <span class="material-icons-sharp active" translate="no">light_mode</span>
            <span class="material-icons-sharp" translate="no">dark_mode</span>
        </div>

    </header>

    <main style="margin: 0;">
        <div class="timetable active" id="timetable">
            <div>
                <span id="prevDay">&lt;</span>
                <h2>Today's Timetable</h2>
                <span id="nextDay">&gt;</span>
            </div>
            <table>
                <thead>
                    <tr>
                        <th>Start Time</th>
                        <th>End Time</th>
                        <th>Subject</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody></tbody>
            </table>
        </div>
    </main>

</body>

<script src="timeTable.js"></script>
<script src="app.js"></script>
</html>
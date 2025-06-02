<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>5iiddharth.com</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f2f2f2;
      scroll-behavior: smooth;
    }

    header {
      background-color: #4CAF50;
      color: white;
      padding: 20px;
      text-align: center;
    }

    nav {
      background-color: #333;
      overflow: hidden;
      position: sticky;
      top: 0;
      z-index: 1000;
    }

    nav a {
      float: left;
      display: block;
      color: #f2f2f2;
      padding: 14px 16px;
      text-decoration: none;
    }

    nav a:hover {
      background-color: #ddd;
      color: black;
    }

    main {
      padding: 20px;
    }

    section {
      margin-bottom: 40px;
    }

    .profile {
      display: flex;
      align-items: center;
      gap: 20px;
      background: white;
      padding: 20px;
      border-radius: 10px;
    }

    .profile img {
      border-radius: 50%;
      width: 120px;
      height: 120px;
    }

    button {
      padding: 10px 20px;
      font-size: 16px;
      cursor: pointer;
      margin-top: 10px;
    }

    footer {
      background-color: #4CAF50;
      color: white;
      text-align: center;
      padding: 10px;
      position: fixed;
      bottom: 0;
      width: 100%;
    }

    #backToTop {
      position: fixed;
      bottom: 60px;
      right: 20px;
      display: none;
      background-color: #4CAF50;
      color: white;
      border: none;
      padding: 10px 15px;
      border-radius: 5px;
    }
  </style>
</head>
<body>

  <header>
    <h1>Welcome to 5iiddharth.com</h1>
    <p id="greeting"></p>
  </header>

  <nav>
    <a href="#home">Home</a>
    <a href="#about">About</a>
    <a href="#contact">Contact</a>
  </nav>

  <main>
    <section id="home">
      <h2>Hello!</h2>
      <p>This is a simple website made with HTML, CSS, and JavaScript.</p>
      <button onclick="sayHello()">Click Me</button>
      <p id="message"></p>
    </section>

    <section id="about" class="profile">
      <img src="https://via.placeholder.com/120" alt="Profile Picture">
      <div>
        <h3>About Me</h3>
        <p>Hi, I'm Siddharth! I'm learning web development and building my first site. Stay tuned for updates and cool features.</p>
      </div>
    </section>

    <section id="contact">
      <h3>Contact</h3>
      <p>You can reach me at <a href="mailto:contact@5iiddharth.com">contact@5iiddharth.com</a>.</p>
    </section>
  </main>

  <button id="backToTop" onclick="scrollToTop()">↑ Top</button>

  <footer>
    &copy; 2025 5iiddharth.com
  </footer>

  <script>
    function sayHello() {
      document.getElementById('message').innerText = 'Thanks for clicking!';
    }

    function scrollToTop() {
      window.scrollTo({ top: 0, behavior: 'smooth' });
    }

    window.onscroll = function () {
      document.getElementById('backToTop').style.display = window.scrollY > 200 ? 'block' : 'none';
    };

    // Time-based greeting
    window.onload = function () {
      const greeting = document.getElementById("greeting");
      const hour = new Date().getHours();
      let msg;
      if (hour < 12) msg = "Good morning!";
      else if (hour < 18) msg = "Good afternoon!";
      else msg = "Good evening!";
      greeting.innerText = msg;
    };
  </script>

</body>
</html>

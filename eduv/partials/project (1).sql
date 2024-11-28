-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2024 at 07:36 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `blog_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`blog_id`, `title`, `description`, `created_at`) VALUES
(1, 'Science', '<article>\r\n                <h3>The Fundamentals of Physics</h3>\r\n                <p>Physics explores the principles governing the universe, from the tiniest particles to massive galaxies. Classical mechanics, developed by Isaac Newton, explains the motion of objects and introduces concepts like force, mass, and acceleration. Quantum mechanics, on the other hand, dives into the behavior of particles at an atomic level, revealing counterintuitive phenomena that challenge our everyday understanding of reality. These two branches of physics provide a foundation for technological advancements, from electricity generation to space exploration.</p>\r\n                <p>Other important topics include thermodynamics, which studies heat and energy transfer, and electromagnetism, which combines electricity and magnetism to explain phenomena like light and radiation. Understanding these fundamentals gives us insight into how energy powers everything around us.</p>\r\n            </article>\r\n\r\n            <article>\r\n                <h3>The Building Blocks of Chemistry</h3>\r\n                <p>Chemistry studies matter, its composition, and the reactions that transform it. The periodic table organizes elements based on their properties, providing a roadmap for understanding chemical behavior. Concepts such as atomic structure, bonding, and reactions explain how substances interact. For example, water (H₂O) forms when hydrogen and oxygen atoms bond in a fixed ratio, a principle that extends to countless compounds.</p>\r\n                <p>Organic chemistry focuses on carbon-based compounds, crucial for life, while inorganic chemistry explores metals, minerals, and other non-organic substances. Chemistry not only explains natural processes like digestion but also enables innovations in medicine, agriculture, and materials science.</p>\r\n            </article>\r\n\r\n            <article>\r\n                <h3>Biology: The Science of Life</h3>\r\n                <p>Biology examines living organisms, from single-celled bacteria to complex human beings. The cell is the basic unit of life, and genetics explains how traits are passed through DNA. Charles Darwin’s theory of evolution describes how species adapt to their environments over generations, a concept fundamental to our understanding of biodiversity.</p>\r\n                <p>Major branches of biology include ecology, which studies ecosystems and their interactions, and physiology, which examines bodily functions. Advances in biology, such as genetic engineering and biotechnology, are expanding our potential to address challenges in healthcare, environmental conservation, and agriculture.</p>\r\n            </article>\r\n\r\n            <article>\r\n                <h3>Earth and Space Science</h3>\r\n                <p>Earth science explores our planet’s physical structure, atmosphere, and processes. Topics such as plate tectonics, the water cycle, and climate systems help us understand natural phenomena like earthquakes and weather patterns. Space science expands this perspective, studying celestial bodies and the universe as a whole.</p>\r\n                <p>With space exploration, we’ve gained knowledge of planets, stars, and galaxies. Key discoveries, such as the Big Bang theory and black holes, deepen our understanding of cosmic origins and mysteries. This field not only satisfies human curiosity but also drives innovation in areas like satellite technology and environmental monitoring.</p>\r\n            </article>', '2024-11-28 16:55:49'),
(2, 'PHP', '<article>\r\n                <h3>Introduction to PHP</h3>\r\n                <p>PHP is a server-side scripting language designed for web development but also used as a general-purpose language. It powers many dynamic websites and applications across the internet.</p>\r\n            </article>\r\n\r\n            <article>\r\n                <h3>How PHP Works with HTML</h3>\r\n                <p>PHP can be embedded within HTML to create dynamic content. Here\'s a basic example of using PHP within HTML to display text:</p>\r\n                <pre><code>&lt;?php echo \"Hello, World!\"; ?&gt;</code></pre>\r\n            </article>\r\n\r\n            <article>\r\n                <h3>Basic Syntax</h3>\r\n                <p>PHP code starts with <code>&lt;?php</code> and ends with <code>?&gt;</code>. Statements end with a semicolon, and comments can be written using <code>//</code> or <code>/* */</code>.</p>\r\n            </article>\r\n\r\n            <article>\r\n                <h3>Variables and Data Types</h3>\r\n                <p>PHP variables start with a <code>$</code> symbol and are loosely typed. Common data types include <strong>strings</strong>, <strong>integers</strong>, <strong>booleans</strong>, and <strong>arrays</strong>.</p>\r\n                <pre><code>$name = \"EduVentures\"; // string\r\n$age = 20; \r\n$isStudent = true; \r\n$subjects = array(\"PHP\", \"HTML\", \"CSS\"); </code></pre>\r\n            </article>\r\n\r\n            <article>\r\n                <h3>Control Structures</h3>\r\n                <p>PHP uses common control structures like <strong>if</strong>, <strong>else</strong>, <strong>switch</strong>, and <strong>loops</strong> for handling conditions and iterations:</p>\r\n                <pre><code>if ($age &gt;= 18) {\r\n    echo \"You are an adult.\";\r\n} else {\r\n    echo \"You are a minor.\";\r\n}</code></pre>\r\n            </article>\r\n\r\n            <article>\r\n                <h3>Functions</h3>\r\n                <p>Functions allow you to create reusable blocks of code. Here’s an example:</p>\r\n                <pre><code>function greet($name) {\r\n    return \"Hello, \" . $name . \"!\";\r\n}\r\necho greet(\"EduVentures\");</code></pre>\r\n            </article>\r\n\r\n            <article>\r\n                <h3>Form Validation Basics</h3>\r\n                <p>Form validation is essential for securing and managing user input. A typical function for sanitizing data looks like this:</p>\r\n                <pre><code>function test_input($data) {\r\n    $data = trim($data);\r\n    $data = stripslashes($data);\r\n    $data = htmlspecialchars($data);\r\n    return $data;\r\n}</code></pre>\r\n                <p>This function removes whitespace, slashes, and converts special characters to prevent XSS attacks.</p>\r\n            </article>\r\n\r\n            <article>\r\n                <h3>Connecting to a Database</h3>\r\n                <p>PHP often interacts with databases, especially MySQL, for storing and retrieving data. You can connect using:</p>\r\n                <pre><code>$conn = new mysqli(\"localhost\", \"username\", \"password\", \"database\");\r\nif ($conn->connect_error) {\r\n    die(\"Connection failed: \" . $conn->connect_error);\r\n}</code></pre>\r\n                <p>Always handle connection errors to improve your app\'s stability.</p>\r\n            </article>\r\n\r\n            <article>\r\n                <h3>Using Sessions in PHP</h3>\r\n                <p>Sessions store user-specific information across pages. Start a session with <code>session_start()</code> and use session variables to track user data.</p>\r\n                <pre><code>session_start();\r\n$_SESSION[\"username\"] = \"EduVenturesUser\";</code></pre>\r\n            </article>', '2024-11-28 16:58:29'),
(3, 'General Knowledge', '<article>\n                <h2><u>The Rise and Fall of Ancient Civilizations</u></h2>\n                <br><br>\n                <h3>Introduction to Ancient Civilizations</h3>\n                <br>\n                <p>Ancient civilizations laid the foundation of human advancement by shaping governance, culture, and technology. These societies, including Mesopotamia, Egypt, the Indus Valley, and ancient China, influenced modern governance, art, and science.</p>\n                <br>\n                <h3>Key Contributions</h3>\n                <br>\n                <p>Mesopotamia introduced cuneiform, one of the first writing systems, and codified laws like Hammurabi\'s Code. Egypt amazed the world with its architectural feats, such as pyramids and hieroglyphs. The Indus Valley civilization excelled in urban planning and trade networks, while ancient China gave us silk, paper, and advanced tools. These achievements revolutionized daily life and inspired future generations.</p><br>\n                <h3>Economic and Trade Systems</h3><br>\n                <p>Trade networks like the Silk Road and maritime routes enabled cultural and economic exchanges among ancient civilizations. These systems promoted the spread of goods, technology, and ideas, creating interconnected economies that sustained their growth.</p><br>\n\n                <h3>Decline and Lessons</h3><br>\n                <p>Despite their achievements, ancient civilizations faced decline due to factors such as invasions, natural disasters, and internal conflicts. Understanding their downfall highlights the importance of sustainable governance and resource management.</p><br>\n\n                <h3>Legacy</h3><br>\n                <p>These civilizations left a legacy of innovation and wisdom. Their contributions to language, law, art, and science continue to shape modern society. Understanding their rise and fall offers valuable insights into human resilience and creativity.</p>\n            </article><br>\n\n            <article><br>\n                <h2><u>Medieval Times: Kings, Castles, and Conflicts</u></h2><br>\n                <h3>Society and Power Structures</h3><br>\n                <p>The medieval era was characterized by feudal hierarchies, where lords governed lands, and vassals served them in exchange for protection. Castles became centers of power and defense, ensuring safety during conflicts. This structure shaped medieval governance and social systems.</p><br>\n\n                <h3>Religion and Culture</h3><br>\n                <p>Religious influence was profound during this time, with the Catholic Church dominating spiritual and political life in Europe. The Crusades, a series of religious wars, fostered cultural exchanges between Europe and the Middle East. Meanwhile, Gothic cathedrals emerged as architectural marvels, symbolizing the era\'s artistic achievements.</p><br>\n\n                <h3>Technological Advances</h3><br>\n                <p>The medieval period witnessed innovations such as the heavy plow, windmills, and advancements in metallurgy. These technologies improved agricultural output and warfare capabilities, driving economic and societal progress.</p><br>\n                <h3>War and Diplomacy</h3><br>\n                <p>Territorial wars, such as the Hundred Years\' War, redefined political boundaries and alliances. Simultaneously, diplomacy evolved, with treaties and marriages used to secure peace and expand influence.</p><br>\n\n                <h3>Intellectual and Political Evolution</h3><br>\n                <p>Medieval times saw the rise of universities that became hubs of knowledge and intellectual growth. This period also witnessed territorial conflicts that redefined political boundaries and alliances, laying the groundwork for modern nation-states.</p>\n            </article><br>\n\n            <article><br>\n                <h2><u>Modern History: Revolutions and Innovations</u></h2><br>\n                <h3>Industrial and Scientific Transformations</h3><br>\n                <p>The Industrial Revolution marked a shift from agrarian economies to mechanized industries. Innovations in machinery, transportation, and manufacturing drove urbanization and redefined global trade. Meanwhile, scientific advancements in electricity and medicine transformed daily life.</p><br>\n\n                <h3>Political Revolutions</h3><br>\n                <p>Modern history also witnessed pivotal political movements. The French Revolution emphasized democracy, equality, and individual rights, inspiring reforms worldwide. These movements reshaped governance and societal values, establishing the foundation for modern democracies.</p><br>\n\n                <h3>Social Changes</h3><br>\n                <p>Urbanization and industrialization brought significant social transformations. Class dynamics shifted, and the rise of the middle class paved the way for changes in labor rights, education, and gender roles.</p><br>\n\n                <h3>Global Conflicts</h3><br>\n                <p>Modern history was also marked by global conflicts, including World Wars I and II. These events reshaped geopolitical landscapes, introducing concepts like international alliances and global peacekeeping bodies.</p><br>\n\n                <h3>Global Interactions</h3><br>\n                <p>The modern era saw increasing global interactions through trade, colonization, and cultural exchanges. This period fostered nationalism and technological progress, ultimately leading to the interconnected world we live in today.</p>\n            </article><br>\n\n            <article><br>\n                <h2><u>India\'s Road to Independence</u></h2><br>\n                <h3>Colonial Struggles</h3><br>\n                <p>India’s fight for independence was marked by unity and resilience against British colonial rule. Movements like the Swadeshi Movement and the Dandi March demonstrated the power of non-violence and civil disobedience, led by visionaries like Mahatma Gandhi.</p><br>\n\n                <h3>Nationalist Awakening</h3><br>\n                <p>Events like the Jallianwala Bagh massacre fueled nationalistic fervor, uniting people across different backgrounds. Leaders like Subhas Chandra Bose and Jawaharlal Nehru mobilized the masses, demanding self-rule and sovereignty.</p><br>\n\n                <h3>Role of Women in Independence</h3><br>\n                <p>Women played a vital role in India\'s freedom struggle. Figures like Sarojini Naidu and Kasturba Gandhi participated in protests, campaigns, and leadership roles, showcasing their unwavering spirit and commitment to independence.</p><br>\n\n                <h3>Challenges to Unity</h3><br>\n                <p>The independence movement faced challenges such as religious divisions and regional disparities. However, leaders worked tirelessly to maintain unity and achieve a common goal of freedom from colonial rule.</p><br>\n\n                <h3>Freedom and Legacy</h3><br>\n                <p>On August 15, 1947, India achieved independence after decades of struggle. This victory not only ended British domination but also inspired other nations to seek freedom, marking a turning point in global decolonization movements.</p>\n            </article><br>', '2024-11-28 16:59:37'),
(4, 'History', '<article>\n                <h2><u>The Rise and Fall of Ancient Civilizations</u></h2>\n                <br><br>\n                <h3>Introduction to Ancient Civilizations</h3>\n                <br>\n                <p>Ancient civilizations laid the foundation of human advancement by shaping governance, culture, and technology. These societies, including Mesopotamia, Egypt, the Indus Valley, and ancient China, influenced modern governance, art, and science.</p>\n                <br>\n                <h3>Key Contributions</h3>\n                <br>\n                <p>Mesopotamia introduced cuneiform, one of the first writing systems, and codified laws like Hammurabi\'s Code. Egypt amazed the world with its architectural feats, such as pyramids and hieroglyphs. The Indus Valley civilization excelled in urban planning and trade networks, while ancient China gave us silk, paper, and advanced tools. These achievements revolutionized daily life and inspired future generations.</p><br>\n                <h3>Economic and Trade Systems</h3><br>\n                <p>Trade networks like the Silk Road and maritime routes enabled cultural and economic exchanges among ancient civilizations. These systems promoted the spread of goods, technology, and ideas, creating interconnected economies that sustained their growth.</p><br>\n\n                <h3>Decline and Lessons</h3><br>\n                <p>Despite their achievements, ancient civilizations faced decline due to factors such as invasions, natural disasters, and internal conflicts. Understanding their downfall highlights the importance of sustainable governance and resource management.</p><br>\n\n                <h3>Legacy</h3><br>\n                <p>These civilizations left a legacy of innovation and wisdom. Their contributions to language, law, art, and science continue to shape modern society. Understanding their rise and fall offers valuable insights into human resilience and creativity.</p>\n            </article><br>\n\n            <article><br>\n                <h2><u>Medieval Times: Kings, Castles, and Conflicts</u></h2><br>\n                <h3>Society and Power Structures</h3><br>\n                <p>The medieval era was characterized by feudal hierarchies, where lords governed lands, and vassals served them in exchange for protection. Castles became centers of power and defense, ensuring safety during conflicts. This structure shaped medieval governance and social systems.</p><br>\n\n                <h3>Religion and Culture</h3><br>\n                <p>Religious influence was profound during this time, with the Catholic Church dominating spiritual and political life in Europe. The Crusades, a series of religious wars, fostered cultural exchanges between Europe and the Middle East. Meanwhile, Gothic cathedrals emerged as architectural marvels, symbolizing the era\'s artistic achievements.</p><br>\n\n                <h3>Technological Advances</h3><br>\n                <p>The medieval period witnessed innovations such as the heavy plow, windmills, and advancements in metallurgy. These technologies improved agricultural output and warfare capabilities, driving economic and societal progress.</p><br>\n                <h3>War and Diplomacy</h3><br>\n                <p>Territorial wars, such as the Hundred Years\' War, redefined political boundaries and alliances. Simultaneously, diplomacy evolved, with treaties and marriages used to secure peace and expand influence.</p><br>\n\n                <h3>Intellectual and Political Evolution</h3><br>\n                <p>Medieval times saw the rise of universities that became hubs of knowledge and intellectual growth. This period also witnessed territorial conflicts that redefined political boundaries and alliances, laying the groundwork for modern nation-states.</p>\n            </article><br>\n\n            <article><br>\n                <h2><u>Modern History: Revolutions and Innovations</u></h2><br>\n                <h3>Industrial and Scientific Transformations</h3><br>\n                <p>The Industrial Revolution marked a shift from agrarian economies to mechanized industries. Innovations in machinery, transportation, and manufacturing drove urbanization and redefined global trade. Meanwhile, scientific advancements in electricity and medicine transformed daily life.</p><br>\n\n                <h3>Political Revolutions</h3><br>\n                <p>Modern history also witnessed pivotal political movements. The French Revolution emphasized democracy, equality, and individual rights, inspiring reforms worldwide. These movements reshaped governance and societal values, establishing the foundation for modern democracies.</p><br>\n\n                <h3>Social Changes</h3><br>\n                <p>Urbanization and industrialization brought significant social transformations. Class dynamics shifted, and the rise of the middle class paved the way for changes in labor rights, education, and gender roles.</p><br>\n\n                <h3>Global Conflicts</h3><br>\n                <p>Modern history was also marked by global conflicts, including World Wars I and II. These events reshaped geopolitical landscapes, introducing concepts like international alliances and global peacekeeping bodies.</p><br>\n\n                <h3>Global Interactions</h3><br>\n                <p>The modern era saw increasing global interactions through trade, colonization, and cultural exchanges. This period fostered nationalism and technological progress, ultimately leading to the interconnected world we live in today.</p>\n            </article><br>\n\n            <article><br>\n                <h2><u>India\'s Road to Independence</u></h2><br>\n                <h3>Colonial Struggles</h3><br>\n                <p>India’s fight for independence was marked by unity and resilience against British colonial rule. Movements like the Swadeshi Movement and the Dandi March demonstrated the power of non-violence and civil disobedience, led by visionaries like Mahatma Gandhi.</p><br>\n\n                <h3>Nationalist Awakening</h3><br>\n                <p>Events like the Jallianwala Bagh massacre fueled nationalistic fervor, uniting people across different backgrounds. Leaders like Subhas Chandra Bose and Jawaharlal Nehru mobilized the masses, demanding self-rule and sovereignty.</p><br>\n\n                <h3>Role of Women in Independence</h3><br>\n                <p>Women played a vital role in India\'s freedom struggle. Figures like Sarojini Naidu and Kasturba Gandhi participated in protests, campaigns, and leadership roles, showcasing their unwavering spirit and commitment to independence.</p><br>\n\n                <h3>Challenges to Unity</h3><br>\n                <p>The independence movement faced challenges such as religious divisions and regional disparities. However, leaders worked tirelessly to maintain unity and achieve a common goal of freedom from colonial rule.</p><br>\n\n                <h3>Freedom and Legacy</h3><br>\n                <p>On August 15, 1947, India achieved independence after decades of struggle. This victory not only ended British domination but also inspired other nations to seek freedom, marking a turning point in global decolonization movements.</p>\n            </article><br>', '2024-11-28 17:09:23'),
(5, 'Mathematics', '  <article>\n                <h2><u>Algebra Basics</u></h2>\n                <br><br>\n                <p>Algebra forms the foundation of many mathematical concepts, involving symbols, equations, and the rules that govern them. Mastering the basics of variables, expressions, and linear equations is crucial for solving complex problems in academics and real-world scenarios.</p>\n                <br>\n                <h3>Introduction</h3><br>\n                <p>Geometry studies the properties and relationships of shapes, sizes, and spaces. It helps us understand the structure of our surroundings, from basic shapes to complex patterns.</p>\n                <br>\n                <h3>Core Topics</h3><br>\n                <ul>\n                    <li><strong>Angles:</strong> Acute, obtuse, and right angles.</li>\n                    <li><strong>Shapes:</strong> Triangles, circles, squares, and polygons.</li>\n                    <li><strong>Properties:</strong> Perimeter, area, and volume.</li>\n                </ul>\n                <br>\n                <h3>Applications</h3><br>\n                <ul>\n                    <li><strong>Architecture:</strong> Designing buildings and bridges.</li>\n                    <li><strong>Nature:</strong> Understanding the symmetry of flowers and shells.</li>\n                    <li><strong>Art and Design:</strong> Creating patterns and proportions in visual media.</li>\n                </ul>\n                <br>\n                <h3>Real-World Importance</h3><br>\n                <p>Geometry helps in navigation, map reading, and designing objects with precision. For example, determining the best layout for furniture in a room involves geometric thinking.</p>\n                <br>\n                <h3>Why It Matters</h3><br>\n                <p>Beyond academic use, geometry fosters spatial reasoning and analytical skills, which are critical in engineering, robotics, and various creative fields.</p>\n            </article>\n            <article>\n                <h2><u>Geometry and Shapes</u></h2>\n                <br><br>\n                <p>Geometry studies the properties and relationships of shapes, sizes, and spaces. It helps us understand the structure of our surroundings, from basic shapes to complex patterns.Geometry is the study of shapes, sizes, and the properties of space. Dive into the fundamentals of angles, triangles, circles, and polygons. This knowledge extends beyond theory, applying to art, architecture, and even nature. Learning the relationships between different shapes helps in understanding symmetry, proportions, and how objects fit together in space, making it essential for fields like design and construction.</p>\n                <br>\n                <h3>Introduction</h3><br>\n                <p>Geometry explores spatial properties and relationships between different shapes, aiding our understanding of both simple and complex structures in the world around us.</p>\n                <br>\n                <h3>Core Topics</h3><br>\n                <ul>\n                    <li><strong>Angles:</strong> Acute, obtuse, and right angles.</li>\n                    <li><strong>Shapes:</strong> Triangles, circles, squares, and polygons.</li>\n                    <li><strong>Properties:</strong> Perimeter, area, and volume.</li>\n                </ul>\n                <br>\n                <h3>Applications</h3><br>\n                <ul>\n                    <li><strong>Architecture:</strong> Designing buildings and bridges.</li>\n                    <li><strong>Nature:</strong> Understanding symmetry in natural formations like flowers and shells.</li>\n                    <li><strong>Art and Design:</strong> Crafting patterns and proportions in various media.</li>\n                </ul>\n                <br>\n                <h3>Real-World Importance</h3><br>\n                <p>Geometry is vital for navigation, map reading, and designing with precision. For example, arranging furniture efficiently in a room involves geometric principles.</p>\n                <br>\n                <h3>Why It Matters</h3><br>\n                <p>It fosters spatial reasoning and analytical skills, essential for fields like engineering, robotics, and design.</p>\n            </article>\n\n            <article>\n                <h2><u>Calculus Concepts</u></h2>\n                <br><br>\n                <p>Calculus focuses on studying change and motion, offering tools for analyzing dynamic systems like growth, motion, and accumulation.Calculus explores change, motion, and rates of change through derivatives and integrals. Discover how calculus provides tools to analyze dynamic systems, from the growth of populations to the speed of falling objects. Differential calculus focuses on rates of change, while integral calculus covers accumulation of quantities, both of which have applications in physics, economics, and engineering.</p>\n                <br>\n                <h3>Introduction</h3><br>\n                <p>Calculus is the mathematical study of continuous change, encompassing derivatives and integrals, with applications across various scientific disciplines.</p>\n                <br>\n                <h3>Core Topics</h3><br>\n                <ul>\n                    <li><strong>Derivatives:</strong> Measure rates of change (e.g., speed of a car).</li>\n                    <li><strong>Integrals:</strong> Represent accumulation of quantities (e.g., total distance traveled).</li>\n                    <li><strong>Limits:</strong> Foundation for understanding continuity and change.</li>\n                </ul>\n                <br>\n                <h3>Applications</h3><br>\n                <ul>\n                    <li><strong>Physics:</strong> Analyzing motion, gravity, and energy.</li>\n                    <li><strong>Economics:</strong> Predicting trends and maximizing profit.</li>\n                    <li><strong>Engineering:</strong> Designing systems and structures.</li>\n                </ul>\n                <br>\n                <h3>Real-World Importance</h3><br>\n                <p>Calculus enables the analysis of phenomena involving change, from population growth to energy systems, in a wide range of real-life applications.</p>\n                <br>\n                <h3>Why It Matters</h3><br>\n                <p>It connects mathematics to real-world problems, making it indispensable in fields like machine learning, physics, and data science.</p>\n            </article>\n\n            <article>\n                <h2><u>Trigonometry</u></h2>\n                <br><br>\n                <p>Trigonometry studies relationships between angles and sides in triangles, with critical applications in engineering, physics, and computer graphics.Trigonometry delves into the relationships between angles and sides of triangles, fundamental in fields such as engineering, physics, and computer graphics. Learn about sine, cosine, and tangent, and how these functions apply to real-life scenarios like navigation, sound waves, and construction. Trigonometry is key to understanding periodic patterns and circular motion.</p>\n                <br>\n                <h3>Introduction</h3><br>\n                <p>Trigonometry focuses on understanding the relationships between triangle dimensions and their angles, using trigonometric functions like sine, cosine, and tangent.</p>\n                <br>\n                <h3>Core Topics</h3><br>\n                <ul>\n                    <li><strong>Trigonometric Ratios:</strong> Sine, cosine, tangent, and their inverses.</li>\n                    <li><strong>Unit Circle:</strong> A tool to define trigonometric functions.</li>\n                    <li><strong>Wave Properties:</strong> Representation of periodic phenomena.</li>\n                </ul>\n                <br>\n                <h3>Applications</h3><br>\n                <ul>\n                    <li><strong>Engineering:</strong> Calculating forces in structures and bridges.</li>\n                    <li><strong>Navigation:</strong> Determining directions and distances.</li>\n                    <li><strong>Physics:</strong> Analyzing wave patterns and vibrations.</li>\n                </ul>\n                <br>\n                <h3>Real-World Importance</h3><br>\n                <p>Trigonometry helps solve problems in motion, sound, and design, critical for technology development and scientific research.</p>\n                <br>\n                <h3>Why It Matters</h3><br>\n                <p>Its role in understanding periodic and circular phenomena makes it fundamental in diverse domains, including astronomy and signal processing.</p>\n            </article>\n\n            <article>\n                <h2><u>Statistics and Probability</u></h2>\n                <br><br>\n                <p>Statistics and probability provide tools to interpret data and predict outcomes, forming the foundation for decision-making under uncertainty.Statistics and probability allow us to interpret data and make predictions. Learn how to calculate averages, understand distributions, and apply probability to assess risks. These skills are vital in data science, research, and everyday decision-making, such as understanding trends, forecasting outcomes, or evaluating the likelihood of certain events.</p>\n                <br>\n                <h3>Introduction</h3><br>\n                <p>These disciplines focus on analyzing data and assessing risks, helping us understand trends and likelihoods in everyday life and scientific contexts.</p>\n                <br>\n                <h3>Core Topics</h3><br>\n                <ul>\n                    <li><strong>Measures of Central Tendency:</strong> Mean, median, and mode.</li>\n                    <li><strong>Probability:</strong> Evaluating event likelihoods.</li>\n                    <li><strong>Data Distributions:</strong> Understanding variability and patterns.</li>\n                </ul>\n                <br>\n                <h3>Applications</h3><br>\n                <ul>\n                    <li><strong>Data Science:</strong> Interpreting trends and patterns.</li>\n                    <li><strong>Risk Analysis:</strong> Evaluating financial or medical risks.</li>\n                    <li><strong>Sports:</strong> Predicting game outcomes.</li>\n                </ul>\n                <br>\n                <h3>Real-World Importance</h3><br>\n                <p>Statistics and probability are indispensable for informed decision-making in research, business, and everyday problem-solving.</p>\n                <br>\n                <h3>Why It Matters</h3><br>\n                <p>They provide a foundation for analyzing uncertainty, making them critical in science, engineering, and policy-making.</p>\n            </article>\n\n            <article>\n                <h2><u>Mathematical Proofs</u></h2>\n                <br><br>\n                <p>Mathematical proofs validate concepts and theorems through logical reasoning, forming the backbone of mathematics.Proofs are the backbone of mathematics, providing logical explanations to validate concepts and theorems. Explore methods of deduction, induction, and contradiction to build airtight arguments. This skill fosters a rigorous, systematic approach to problem-solving, which is valuable in fields that require precise thinking, such as computer science, philosophy, and law.</p>\n                <br>\n                <h3>Introduction</h3><br>\n                <p>Proofs ensure the consistency and accuracy of mathematical concepts, fostering rigorous and logical thinking.</p>\n                <br>\n                <h3>Core Topics</h3><br>\n                <ul>\n                    <li><strong>Deduction:</strong> Using known facts to derive conclusions.</li>\n                    <li><strong>Induction:</strong> Proving statements for all cases systematically.</li>\n                    <li><strong>Contradiction:</strong> Demonstrating the impossibility of the opposite.</li>\n                </ul>\n                <br>\n                <h3>Applications</h3><br>\n                <ul>\n                    <li><strong>Computer Science:</strong> Validating algorithms and security systems.</li>\n                    <li><strong>Philosophy:</strong> Building logical arguments.</li>\n                    <li><strong>Cryptography:</strong> Securing digital communications.</li>\n                </ul>\n                <br>\n                <h3>Real-World Importance</h3><br>\n                <p>Proofs foster precision and clarity, valuable for fields like technology, law, and advanced problem-solving.</p>\n                <br>\n                <h3>Why It Matters</h3><br>\n                <p>They strengthen logical reasoning, a vital skill for success in diverse academic and professional areas.</p>\n            </article>', '2024-11-28 17:03:51'),
(6, 'JavaScript', '<article>\r\n                <h3>Introduction to JavaScript</h3>\r\n                <p>JavaScript is a versatile, high-level programming language primarily used for web development. It allows developers to create dynamic and interactive web applications.</p>\r\n            </article>\r\n\r\n            <article>\r\n                <h3>JavaScript Syntax</h3>\r\n                <p>JavaScript syntax is the set of rules that define a correctly structured JavaScript program. Code statements end with a semicolon, and you can use braces to define code blocks.</p>\r\n                <pre><code>if (condition) {\r\n    // code to be executed\r\n}</code></pre>\r\n            </article>\r\n\r\n            <article>\r\n                <h3>Variables and Data Types</h3>\r\n                <p>Variables in JavaScript can be declared using <code>var</code>, <code>let</code>, or <code>const</code>. JavaScript has dynamic typing, meaning variables can hold any type of data:</p>\r\n                <pre><code>let name = \"EduVentures\"; // string\r\nconst age = 20; // number\r\nvar isStudent = true; // boolean</code></pre>\r\n            </article>\r\n\r\n            <article>\r\n                <h3>Control Structures</h3>\r\n                <p>JavaScript uses control structures like <strong>if</strong>, <strong>else</strong>, and loops (<strong>for</strong>, <strong>while</strong>) to control the flow of execution:</p>\r\n                <pre><code>if (age &gt;= 18) {\r\n    console.log(\"You are an adult.\");\r\n} else {\r\n    console.log(\"You are a minor.\");\r\n}</code></pre>\r\n            </article>\r\n\r\n            <article>\r\n                <h3>Functions</h3>\r\n                <p>Functions are reusable blocks of code that can take parameters and return values. You can define a function as follows:</p>\r\n                <pre><code>function greet(name) {\r\n    return \"Hello, \" + name + \"!\";\r\n}\r\nconsole.log(greet(\"EduVentures\"));</code></pre>\r\n            </article>\r\n\r\n            <article>\r\n                <h3>Event Handling</h3>\r\n                <p>JavaScript can respond to user events such as clicks and keyboard input. You can add event listeners to elements:</p>\r\n                <pre><code>document.getElementById(\"myButton\").addEventListener(\"click\", function() {\r\n    alert(\"Button clicked!\");\r\n});</code></pre>\r\n            </article>\r\n\r\n            <article>\r\n                <h3>Working with Arrays</h3>\r\n                <p>Arrays in JavaScript are used to store multiple values in a single variable. You can access array elements using their index:</p>\r\n                <pre><code>let fruits = [\"Apple\", \"Banana\", \"Cherry\"];\r\nconsole.log(fruits[0]); // Output: Apple</code></pre>\r\n            </article>\r\n\r\n            <article>\r\n                <h3>JSON: JavaScript Object Notation</h3>\r\n                <p>JSON is a lightweight data interchange format that is easy to read and write. It is commonly used to send data between a server and a client:</p>\r\n                <pre><code>let jsonData = \'{\"name\": \"EduVentures\", \"age\": 20}\';\r\nlet obj = JSON.parse(jsonData);\r\nconsole.log(obj.name); // Output: EduVentures</code></pre>\r\n            </article>\r\n\r\n            <article>\r\n                <h3>Asynchronous JavaScript: Promises and Fetch API</h3>\r\n                <p>JavaScript handles asynchronous operations using promises. The Fetch API is used to make network requests:</p>\r\n                <pre><code>fetch(\"https://api.example.com/data\")\r\n    .then(response => response.json())\r\n    .then(data => console.log(data))\r\n    .catch(error => console.error(\"Error:\", error));</code></pre>\r\n            </article>', '2024-11-28 17:08:36');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_questions`
--

CREATE TABLE `quiz_questions` (
  `question_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `option1` varchar(100) NOT NULL,
  `option2` varchar(100) NOT NULL,
  `option3` varchar(100) NOT NULL,
  `option4` varchar(100) NOT NULL,
  `correct_option` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz_questions`
--

INSERT INTO `quiz_questions` (`question_id`, `blog_id`, `question`, `option1`, `option2`, `option3`, `option4`, `correct_option`) VALUES
(1, 1, 'What is the primary source of energy for the Earth?', 'The Sun', 'The Moon', 'The Stars', 'The Oceans', 1),
(2, 1, 'Which gas is most abundant in the Earth’s atmosphere?', 'Oxygen', 'Hydrogen', 'Nitrogen', 'Carbon Dioxide', 3),
(3, 1, 'What is H2O commonly known as?', 'Salt', 'Water', 'Oxygen', 'Hydrogen', 2),
(4, 1, 'Which planet is known as the Red Planet?', 'Earth', 'Mars', 'Jupiter', 'Venus', 2),
(5, 1, 'What is the symbol for Iron?', 'Ir', 'In', 'Fe', 'I', 3),
(6, 1, 'Who is known as the father of physics?', 'Isaac Newton', 'Albert Einstein', 'Galileo Galilei', 'Nikola Tesla', 1),
(7, 1, 'What is the chemical formula for Carbon Dioxide?', 'CO', 'CO2', 'C2O', 'O2', 2),
(8, 1, 'Which process do plants use to make their food?', 'Photosynthesis', 'Respiration', 'Digestion', 'Evaporation', 1),
(9, 1, 'What is the boiling point of water at sea level?', '90°C', '100°C', '110°C', '120°C', 2),
(10, 1, 'How many bones are there in a typical human adult?', '204', '206', '208', '210', 2),
(11, 2, 'What does PHP stand for?', 'Personal Home Page', 'PHP: Hypertext Preprocessor', 'Private Home Page', 'Programming Home Page', 2),
(12, 2, 'Which of the following is a valid variable name in PHP?', '1st_variable', '_variable1', 'variable-1', 'variable 1', 2),
(13, 2, 'How do you create an array in PHP?', '$arr = array();', '$arr = [];', 'Both of the above', 'None of the above', 3),
(14, 2, 'Which of the following functions is used to include files in PHP?', 'include()', 'require()', 'include_once()', 'All of the above', 4),
(15, 2, 'What is the correct way to comment in PHP?', '// Comment', '/* Comment */', '# Comment', 'All of the above', 4),
(16, 2, 'Which superglobal array in PHP is used to access form data?', '$_GET', '$_POST', '$_REQUEST', 'All of the above', 4),
(17, 2, 'What will be the output of the following PHP code: echo \"10 apples\";?', '15', '510', 'Error', '10 apples', 4),
(18, 2, 'How can you start a session in PHP?', 'session_start();', 'start_session();', 'begin_session();', 'session();', 1),
(19, 2, 'Which of the following is used to connect to a MySQL database?', 'mysqli_connect()', 'mysql_connect()', 'pdo_connect()', 'All of the above', 1),
(20, 2, 'What is the purpose of the isset() function in PHP?', 'To check if a variable is set', 'To check if a variable is empty', 'To check if a variable is null', 'None of the above', 1),
(21, 3, 'What is the capital of France?', 'Berlin', 'Madrid', 'Paris', 'Lisbon', 3),
(22, 3, 'Who wrote the play \"Romeo and Juliet\"?', 'Charles Dickens', 'William Shakespeare', 'Mark Twain', 'Jane Austen', 2),
(23, 3, 'Which planet is known as the Blue Planet?', 'Mars', 'Earth', 'Venus', 'Jupiter', 2),
(24, 3, 'What is the largest ocean on Earth?', 'Indian Ocean', 'Atlantic Ocean', 'Arctic Ocean', 'Pacific Ocean', 4),
(25, 3, 'Who was the first President of the United States?', 'Abraham Lincoln', 'George Washington', 'Thomas Jefferson', 'John Adams', 2),
(26, 3, 'Who was the first woman Prime Minister of India?', 'Indira Gandhi', 'Sarojini Naidu', 'Pratibha Patil', 'Sonia Gandhi', 1),
(27, 3, 'What is the smallest planet in our solar system?', 'Earth', 'Mars', 'Mercury', 'Venus', 3),
(28, 3, 'Who is the author of the Indian National Anthem?', 'Rabindranath Tagore', 'Bankim Chandra Chatterjee', 'Sarojini Naidu', 'Mahatma Gandhi', 1),
(29, 3, 'In which year did India gain independence?', '1945', '1947', '1950', '1952', 2),
(30, 3, 'Which river is known as the longest river in India?', 'Ganges', 'Brahmaputra', 'Yamuna', 'Godavari', 1),
(31, 4, 'Who discovered America?', 'Christopher Columbus', 'Leif Erikson', 'Amerigo Vespucci', 'James Cook', 1),
(32, 4, 'In which year did World War II end?', '1943', '1944', '1945', '1946', 3),
(33, 4, 'Who was the first emperor of the Roman Empire?', 'Julius Caesar', 'Augustus', 'Nero', 'Caligula', 2),
(34, 4, 'What was the name of the ship on which the Pilgrims traveled to America?', 'The Mayflower', 'The Santa Maria', 'The Beagle', 'The Nina', 1),
(35, 4, 'Who was the first female Prime Minister of the United Kingdom?', 'Margaret Thatcher', 'Queen Elizabeth I', 'Theresa May', 'Angela Merkel', 1),
(36, 4, 'What ancient civilization built the pyramids?', 'The Romans', 'The Greeks', 'The Egyptians', 'The Mesopotamians', 3),
(37, 4, 'Who was known as the \"Iron Chancellor\"?', 'Otto von Bismarck', 'Napoleon Bonaparte', 'Winston Churchill', 'Mao Zedong', 1),
(38, 4, 'In which year did the French Revolution begin?', '1787', '1788', '1789', '1790', 3),
(39, 4, 'What was the ancient name of Iraq?', 'Persia', 'Babylon', 'Mesopotamia', 'Byzantium', 3),
(40, 4, 'Who was the author of the Communist Manifesto?', 'Karl Marx', 'Vladimir Lenin', 'Friedrich Engels', 'Joseph Stalin', 1),
(41, 5, 'What is the value of pi (π) to two decimal places?', '3.14', '3.15', '3.16', '3.17', 1),
(42, 5, 'What is the square root of 144?', '10', '11', '12', '13', 3),
(43, 5, 'What is the formula for the area of a circle?', 'πr^2', '2πr', 'πd', 'πr', 1),
(44, 5, 'What is 15% of 200?', '25', '30', '35', '40', 2),
(45, 5, 'What is the result of 9 * 9?', '72', '81', '89', '90', 2),
(46, 5, 'Solve for x: 2x + 6 = 14', 'x = 3', 'x = 4', 'x = 5', 'x = 6', 2),
(47, 5, 'What is 2 raised to the power of 5?', '10', '16', '32', '64', 3),
(48, 5, 'If a triangle has sides 3, 4, and 5, it is a:', 'Scalene triangle', 'Right triangle', 'Isosceles triangle', 'Equilateral triangle', 2),
(49, 5, 'What is the sum of the angles in a triangle?', '90°', '180°', '270°', '360°', 2),
(50, 5, 'Which property is used in the equation a(b + c) = ab + ac?', 'Distributive property', 'Associative property', 'Commutative property', 'Identity property', 1),
(51, 6, 'What is the correct syntax to output \"Hello World\" in JavaScript?', 'console.log(\"Hello World\");', 'print(\"Hello World\");', 'echo \"Hello World\";', 'document.write(\"Hello World\");', 1),
(52, 6, 'Which of the following is a JavaScript data type?', 'String', 'Number', 'Boolean', 'All of the above', 4),
(53, 6, 'How do you create a function in JavaScript?', 'function myFunction() {}', 'create myFunction() {}', 'function:myFunction() {}', 'myFunction() = function {}', 1),
(54, 6, 'Which symbol is used for comments in JavaScript?', '//', '#', '/*', '*/', 1),
(55, 6, 'What will the following code output: console.log(typeof NaN);', 'number', 'NaN', 'undefined', 'error', 1),
(56, 6, 'Which method is used to convert a JSON string into a JavaScript object?', 'JSON.parse()', 'JSON.stringify()', 'JSON.convert()', 'JSON.object()', 1),
(57, 6, 'Which event occurs when the user clicks on an HTML element?', 'onclick', 'onchange', 'onmouseover', 'onkeypress', 1),
(58, 6, 'How can you declare a variable in JavaScript?', 'var myVar;', 'dim myVar;', 'let myVar;', 'All of the above', 4),
(59, 6, 'What does the \"this\" keyword refer to in JavaScript?', 'The current object', 'The previous object', 'The global object', 'The function itself', 1),
(60, 6, 'Which of the following is not a JavaScript framework?', 'Angular', 'React', 'Django', 'Vue', 3);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `result_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `quiz_title` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `total_questions` int(11) NOT NULL,
  `quiz_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`result_id`, `user_id`, `quiz_title`, `score`, `total_questions`, `quiz_date`) VALUES
(1, 1, 'Mathematics', 0, 10, '2024-11-28 17:17:22'),
(2, 1, 'Mathematics', 2, 10, '2024-11-28 17:17:45'),
(5, 1, 'Mathematics', 1, 10, '2024-11-28 17:34:42'),
(6, 2, 'Mathematics', 2, 10, '2024-11-28 17:37:15'),
(7, 2, 'History', 1, 10, '2024-11-28 17:49:32'),
(8, 3, 'Mathematics', 1, 10, '2024-11-28 17:56:36'),
(9, 3, 'Mathematics', 1, 10, '2024-11-28 17:56:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'sid', '$2y$10$zVinQrDeEKxVgRtzyrhx7.kf82M5FfCdJYWRDgCCNuJNHyF7Xqq06', '2024-11-28 17:15:24'),
(2, 'yash', '$2y$10$nlALdoZtbydIr5XoeZKAoumZ8JpNKi5RzMBIA4ey39NUsYZoABeAC', '2024-11-28 17:36:02'),
(3, 'disha', '$2y$10$by9XwxnDrihFZbYDwrDWuu84cEPA7oERNGW2WW2tyehQJS4JNk8im', '2024-11-28 17:55:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  ADD PRIMARY KEY (`question_id`),
  ADD KEY `blog_id` (`blog_id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`result_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `result_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  ADD CONSTRAINT `quiz_questions_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`blog_id`) ON DELETE CASCADE;

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

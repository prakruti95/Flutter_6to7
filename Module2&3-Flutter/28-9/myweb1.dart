import 'package:flutter/material.dart';

class MyWeb1 extends StatefulWidget {
  const MyWeb1({super.key});

  @override
  State<MyWeb1> createState() => _MyWeb1State();
}

class _MyWeb1State extends State<MyWeb1> {
  // IT Technologies list
  final List<Map<String, dynamic>> technologies = [
    {
      'title': 'Flutter & Dart',
      'icon': Icons.flutter_dash,
      'color': Colors.blue,
      'description': 'Cross-platform mobile & web app development.'
    },
    {
      'title': 'Python & Data Science',
      'icon': Icons.code,
      'color': Colors.green,
      'description': 'Machine Learning, AI, Data Analysis & Django.'
    },
    {
      'title': 'Java Full Stack',
      'icon': Icons.coffee,
      'color': Colors.orange,
      'description': 'Spring Boot, Microservices & Frontend frameworks.'
    },
    {
      'title': 'Web Development',
      'icon': Icons.language,
      'color': Colors.purple,
      'description': 'HTML5, CSS3, JavaScript, React & Node.js.'
    },
    {
      'title': 'Cyber Security',
      'icon': Icons.security,
      'color': Colors.red,
      'description': 'Ethical Hacking, Network Security & Pen Testing.'
    },
    {
      'title': 'Cloud Computing',
      'icon': Icons.cloud,
      'color': Colors.lightBlue,
      'description': 'AWS, Azure, DevOps & Cloud Infrastructure.'
    },
    {
      'title': 'Android Development',
      'icon': Icons.android,
      'color': Colors.lightGreen,
      'description': 'Native Android development using Kotlin & Java.'
    },
    {
      'title': 'Software Testing',
      'icon': Icons.bug_report,
      'color': Colors.teal,
      'description': 'Manual & Automated Testing with Selenium.'
    },
    {
      'title': 'UI / UX Design',
      'icon': Icons.design_services,
      'color': Colors.pink,
      'description': 'Figma, Adobe XD, Prototyping & User Research.'
    },
    {
      'title': 'Artificial Intelligence',
      'icon': Icons.psychology,
      'color': Colors.deepPurple,
      'description': 'Deep Learning, NLP & Computer Vision.'
    },
    {
      'title': 'C & C++ Programming',
      'icon': Icons.memory,
      'color': Colors.indigo,
      'description': 'Core programming fundamentals & Data Structures.'
    },
    {
      'title': 'Digital Marketing',
      'icon': Icons.campaign,
      'color': Colors.amber,
      'description': 'SEO, Social Media Marketing & Google Ads.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth < 700;

    // Calculate dynamic crossAxisCount based on screen width
    int crossAxisCount = 4;
    if (screenWidth < 600) {
      crossAxisCount = 1;
    } else if (screenWidth < 900) {
      crossAxisCount = 2;
    } else if (screenWidth < 1200) {
      crossAxisCount = 3;
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: Container(
          color: const Color(0xFF0D47A1), // TOPS Deep Blue
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Header Brand / Logo
              Row(
                children: [
                  const Icon(Icons.school, color: Colors.amber, size: 32),
                  const SizedBox(width: 10),
                  Text(
                    'TOPS Technologies',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: isMobile ? 18 : 22,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ),
                  ),
                ],
              ),
              // Navigation Options
              if (isMobile)
                PopupMenuButton<String>(
                  icon: const Icon(Icons.menu, color: Colors.white),
                  onSelected: (value) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Navigating to $value')),
                    );
                  },
                  itemBuilder: (BuildContext context) => [
                    const PopupMenuItem(value: 'Home', child: Text('Home')),
                    const PopupMenuItem(value: 'About', child: Text('About Us')),
                    const PopupMenuItem(value: 'Contact', child: Text('Contact Us')),
                  ],
                )
              else
                Row(
                  children: [
                    _navButton(context, 'Home'),
                    _navButton(context, 'About Us'),
                    _navButton(context, 'Contact Us'),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Enroll Now Clicked')),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text('Enroll Now', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Banner / Hero Section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.blue.shade900,
                    Colors.indigo.shade600,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                children: [
                  Text(
                    'Welcome to TOPS Technologies',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: isMobile ? 24 : 34,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Master Modern IT Technologies with Industry Experts',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: isMobile ? 14 : 18,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),

            // IT Technologies Grid View Section
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Explore IT Technologies',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0D47A1),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    height: 4,
                    width: 60,
                    color: Colors.amber,
                  ),
                  const SizedBox(height: 20),

                  // Responsive GridView
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: crossAxisCount,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      childAspectRatio: isMobile ? 1.3 : 1.2,
                    ),
                    itemCount: technologies.length,
                    itemBuilder: (context, index) {
                      final item = technologies[index];
                      return Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 28,
                                backgroundColor: (item['color'] as Color).withAlpha(38),
                                child: Icon(
                                  item['icon'] as IconData,
                                  color: item['color'] as Color,
                                  size: 30,
                                ),
                              ),
                              const SizedBox(height: 12),
                              Text(
                                item['title'] as String,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                item['description'] as String,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey.shade600,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),

            // Footer Section
            Container(
              color: const Color(0xFF1E293B),
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Column(
                children: [
                  isMobile
                      ? Column(
                          children: [
                            _footerBrandSection(),
                            const SizedBox(height: 20),
                            _footerLinksSection(context),
                            const SizedBox(height: 20),
                            _footerContactSection(),
                          ],
                        )
                      : Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(child: _footerBrandSection()),
                            Expanded(child: _footerLinksSection(context)),
                            Expanded(child: _footerContactSection()),
                          ],
                        ),
                  const Divider(color: Colors.white24, height: 40),
                  const Text(
                    '© 2025 TOPS Technologies. All Rights Reserved.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white54, fontSize: 13),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _navButton(BuildContext context, String title) {
    return TextButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('$title clicked')),
        );
      },
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _footerBrandSection() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.school, color: Colors.amber, size: 28),
            SizedBox(width: 8),
            Text(
              'TOPS Technologies',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Text(
          'Leading IT Training & Placement Institute providing hands-on training in cutting-edge technologies.',
          style: TextStyle(color: Colors.white70, fontSize: 13),
        ),
      ],
    );
  }

  Widget _footerLinksSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Quick Links',
          style: TextStyle(
            color: Colors.amber,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        InkWell(
          onTap: () {},
          child: const Text('Home', style: TextStyle(color: Colors.white70, fontSize: 13)),
        ),
        const SizedBox(height: 6),
        InkWell(
          onTap: () {},
          child: const Text('About Us', style: TextStyle(color: Colors.white70, fontSize: 13)),
        ),
        const SizedBox(height: 6),
        InkWell(
          onTap: () {},
          child: const Text('Contact Us', style: TextStyle(color: Colors.white70, fontSize: 13)),
        ),
      ],
    );
  }

  Widget _footerContactSection() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Contact Us',
          style: TextStyle(
            color: Colors.amber,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Row(
          children: [
            Icon(Icons.email, color: Colors.white70, size: 16),
            SizedBox(width: 8),
            Text('info@topstechnologies.com', style: TextStyle(color: Colors.white70, fontSize: 13)),
          ],
        ),
        SizedBox(height: 6),
        Row(
          children: [
            Icon(Icons.phone, color: Colors.white70, size: 16),
            SizedBox(width: 8),
            Text('+91 98765 43210', style: TextStyle(color: Colors.white70, fontSize: 13)),
          ],
        ),
        SizedBox(height: 6),
        Row(
          children: [
            Icon(Icons.location_on, color: Colors.white70, size: 16),
            SizedBox(width: 8),
            Text('Ahmedabad, Gujarat, India', style: TextStyle(color: Colors.white70, fontSize: 13)),
          ],
        ),
      ],
    );
  }
}

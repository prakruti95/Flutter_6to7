import 'package:flutter/material.dart';

class MyWeb2 extends StatefulWidget {
  const MyWeb2({super.key});

  @override
  State<MyWeb2> createState() => _MyWeb2State();
}

class _MyWeb2State extends State<MyWeb2> {
  int cartItemCount = 0;
  String selectedCategory = 'All';

  final List<String> categories = [
    'All',
    'Pizza',
    'Burgers',
    'Pasta',
    'Asian',
    'Desserts',
    'Drinks'
  ];

  final List<Map<String, dynamic>> foodItems = [
    {
      'name': 'Pepperoni Feast Pizza',
      'category': 'Pizza',
      'price': '\$14.99',
      'rating': 4.9,
      'icon': Icons.local_pizza,
      'color': Colors.deepOrange,
      'description': 'Loaded with extra pepperoni, mozzarella, and house sauce.'
    },
    {
      'name': 'Double Cheese Burger',
      'category': 'Burgers',
      'price': '\$9.99',
      'rating': 4.8,
      'icon': Icons.lunch_dining,
      'color': Colors.amber.shade800,
      'description': 'Juicy beef patty, cheddar cheese, crisp lettuce & tomatoes.'
    },
    {
      'name': 'Creamy Alfredo Pasta',
      'category': 'Pasta',
      'price': '\$12.49',
      'rating': 4.7,
      'icon': Icons.ramen_dining,
      'color': Colors.orange,
      'description': 'Fettuccine pasta in rich garlic parmesan cream sauce.'
    },
    {
      'name': 'Fresh Salmon Sushi',
      'category': 'Asian',
      'price': '\$18.99',
      'rating': 4.9,
      'icon': Icons.set_meal,
      'color': Colors.redAccent,
      'description': 'Premium Norwegian salmon nigiri with wasabi & ginger.'
    },
    {
      'name': 'Spicy Mexican Tacos',
      'category': 'Asian',
      'price': '\$8.99',
      'rating': 4.6,
      'icon': Icons.dinner_dining,
      'color': Colors.brown,
      'description': 'Crispy taco shells with seasoned beef, salsa & guacamole.'
    },
    {
      'name': 'Fresh Garden Salad',
      'category': 'All',
      'price': '\$7.99',
      'rating': 4.5,
      'icon': Icons.eco,
      'color': Colors.green,
      'description': 'Mixed greens, cherry tomatoes, cucumbers & olive dressing.'
    },
    {
      'name': 'Chocolate Lava Cake',
      'category': 'Desserts',
      'price': '\$6.49',
      'rating': 4.9,
      'icon': Icons.cake,
      'color': Colors.deepOrangeAccent,
      'description': 'Warm chocolate cake with molten center & vanilla ice cream.'
    },
    {
      'name': 'Tropical Fruit Smoothie',
      'category': 'Drinks',
      'price': '\$4.99',
      'rating': 4.8,
      'icon': Icons.local_cafe,
      'color': Colors.pinkAccent,
      'description': 'Blend of mango, passionfruit, banana & fresh coconut water.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth < 750;

    // Responsive grid column count
    int crossAxisCount = 4;
    if (screenWidth < 600) {
      crossAxisCount = 1;
    } else if (screenWidth < 900) {
      crossAxisCount = 2;
    } else if (screenWidth < 1200) {
      crossAxisCount = 3;
    }

    // Filter items based on selected category
    final filteredFood = selectedCategory == 'All'
        ? foodItems
        : foodItems.where((item) => item['category'] == selectedCategory).toList();

    return Scaffold(
      backgroundColor: const Color(0xFFFAF9F6),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: Container(
          color: const Color(0xFF1E1E1E), // Dark Charcoal
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Logo & Brand Name
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(Icons.fastfood, color: Colors.white, size: 24),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    'TastyBites 🍔',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: isMobile ? 20 : 24,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ),
                  ),
                ],
              ),

              // Navigation Links or Mobile Menu
              if (isMobile)
                Row(
                  children: [
                    _cartBadge(),
                    const SizedBox(width: 10),
                    PopupMenuButton<String>(
                      icon: const Icon(Icons.menu, color: Colors.white),
                      onSelected: (value) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Navigating to $value')),
                        );
                      },
                      itemBuilder: (BuildContext context) => [
                        const PopupMenuItem(value: 'Home', child: Text('Home')),
                        const PopupMenuItem(value: 'Menu', child: Text('Menu')),
                        const PopupMenuItem(value: 'Offers', child: Text('Special Offers')),
                        const PopupMenuItem(value: 'About', child: Text('About Us')),
                        const PopupMenuItem(value: 'Contact', child: Text('Contact')),
                      ],
                    ),
                  ],
                )
              else
                Row(
                  children: [
                    _navLink('Home'),
                    _navLink('Menu'),
                    _navLink('Offers'),
                    _navLink('About Us'),
                    _navLink('Contact'),
                    const SizedBox(width: 15),
                    _cartBadge(),
                    const SizedBox(width: 15),
                    ElevatedButton.icon(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Order Online clicked!')),
                        );
                      },
                      icon: const Icon(Icons.delivery_dining, size: 20),
                      label: const Text('Order Now', style: TextStyle(fontWeight: FontWeight.bold)),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
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
            // Hero / Banner Section
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                vertical: isMobile ? 30 : 50,
                horizontal: isMobile ? 20 : 40,
              ),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFFFF5722), Color(0xFFFF8F00)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                children: [
                  Text(
                    'Delicious Food Delivered To Your Doorstep',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: isMobile ? 26 : 38,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Freshly prepared meals from top master chefs using 100% organic ingredients.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: isMobile ? 14 : 18,
                      color: Colors.white.withAlpha(230),
                    ),
                  ),
                  const SizedBox(height: 25),

                  // Search Bar inside Hero Banner
                  Container(
                    constraints: const BoxConstraints(maxWidth: 600),
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.search, color: Colors.grey),
                        const SizedBox(width: 10),
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search pizza, burgers, sushi...',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepOrange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          child: const Text('Search', style: TextStyle(color: Colors.white)),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Key Highlights / Features Section
            Container(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
              color: Colors.white,
              child: Wrap(
                spacing: 30,
                runSpacing: 20,
                alignment: WrapAlignment.spaceAround,
                children: [
                  _featureCard(Icons.electric_scooter, 'Fast 30-Min Delivery', 'Hot & fresh at your door'),
                  _featureCard(Icons.eco, 'Fresh Organic Food', '100% healthy & fresh items'),
                  _featureCard(Icons.restaurant, 'Master Chefs', 'Crafted by top culinary experts'),
                  _featureCard(Icons.thumb_up, 'Best Prices', 'Unbeatable deals & offers'),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Category Filter Pills
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Explore Our Menu 🍕',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1E1E1E),
                    ),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    height: 45,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        final cat = categories[index];
                        final isSelected = selectedCategory == cat;
                        return Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: ChoiceChip(
                            label: Text(cat),
                            selected: isSelected,
                            selectedColor: Colors.deepOrange,
                            labelStyle: TextStyle(
                              color: isSelected ? Colors.white : Colors.black87,
                              fontWeight: FontWeight.bold,
                            ),
                            backgroundColor: Colors.grey.shade200,
                            onSelected: (selected) {
                              setState(() {
                                selectedCategory = cat;
                              });
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Food Items GridView
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: 18,
                  mainAxisSpacing: 18,
                  childAspectRatio: isMobile ? 0.95 : 0.88,
                ),
                itemCount: filteredFood.length,
                itemBuilder: (context, index) {
                  final item = filteredFood[index];
                  return Card(
                    elevation: 3,
                    shadowColor: Colors.black12,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Food Icon / Visual representation
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: (item['color'] as Color).withAlpha(30),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                child: Icon(
                                  item['icon'] as IconData,
                                  size: 60,
                                  color: item['color'] as Color,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 12),

                          // Rating badge & Price
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                decoration: BoxDecoration(
                                  color: Colors.amber.shade100,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Row(
                                  children: [
                                    const Icon(Icons.star, color: Colors.amber, size: 16),
                                    const SizedBox(width: 4),
                                    Text(
                                      '${item['rating']}',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                item['price'] as String,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.deepOrange,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),

                          // Dish Title
                          Text(
                            item['name'] as String,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 4),

                          // Description
                          Text(
                            item['description'] as String,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey.shade600,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 12),

                          // Add to Cart Button
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton.icon(
                              onPressed: () {
                                setState(() {
                                  cartItemCount++;
                                });
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text('${item['name']} added to cart!'),
                                    duration: const Duration(seconds: 1),
                                  ),
                                );
                              },
                              icon: const Icon(Icons.add_shopping_cart, size: 16),
                              label: const Text('Add to Cart'),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepOrange,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 40),

            // Promo Offer Banner Section
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: const Color(0xFF1E1E1E),
                borderRadius: BorderRadius.circular(20),
              ),
              child: isMobile
                  ? Column(
                      children: [
                        _promoTextSection(),
                        const SizedBox(height: 20),
                        _promoButton(),
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _promoTextSection(),
                        _promoButton(),
                      ],
                    ),
            ),

            const SizedBox(height: 50),

            // Footer Section
            Container(
              color: const Color(0xFF18181B),
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              child: Column(
                children: [
                  isMobile
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _footerBrand(),
                            const SizedBox(height: 25),
                            _footerLinks(),
                            const SizedBox(height: 25),
                            _footerOpeningHours(),
                            const SizedBox(height: 25),
                            _footerContact(),
                          ],
                        )
                      : Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(child: _footerBrand()),
                            Expanded(child: _footerLinks()),
                            Expanded(child: _footerOpeningHours()),
                            Expanded(child: _footerContact()),
                          ],
                        ),
                  const Divider(color: Colors.white24, height: 50),
                  const Text(
                    '© 2025 TastyBites Restaurant. All Rights Reserved. Crafted with Flutter.',
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

  Widget _navLink(String title) {
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
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _cartBadge() {
    return Stack(
      children: [
        IconButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Cart contains $cartItemCount items.')),
            );
          },
          icon: const Icon(Icons.shopping_bag, color: Colors.white, size: 28),
        ),
        if (cartItemCount > 0)
          Positioned(
            right: 4,
            top: 4,
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              constraints: const BoxConstraints(minWidth: 18, minHeight: 18),
              child: Text(
                '$cartItemCount',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
      ],
    );
  }

  Widget _featureCard(IconData icon, String title, String subtitle) {
    return SizedBox(
      width: 220,
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.deepOrange.shade50,
            radius: 24,
            child: Icon(icon, color: Colors.deepOrange, size: 26),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _promoTextSection() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '🎉 Special Offer: Get 20% OFF!',
          style: TextStyle(
            color: Colors.amber,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Text(
          'Use promo code FOODIE20 on your first order. Offer valid today only!',
          style: TextStyle(color: Colors.white70, fontSize: 14),
        ),
      ],
    );
  }

  Widget _promoButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.amber,
        foregroundColor: Colors.black,
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: const Text(
        'Claim Offer Now',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      ),
    );
  }

  Widget _footerBrand() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.fastfood, color: Colors.deepOrange, size: 28),
            SizedBox(width: 8),
            Text(
              'TastyBites 🍔',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(height: 12),
        Text(
          'Serving mouthwatering gourmet meals with speed & love since 2018.',
          style: TextStyle(color: Colors.white70, fontSize: 13),
        ),
      ],
    );
  }

  Widget _footerLinks() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Quick Links',
          style: TextStyle(color: Colors.deepOrange, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        InkWell(onTap: () {}, child: const Text('Home', style: TextStyle(color: Colors.white70, fontSize: 13))),
        const SizedBox(height: 6),
        InkWell(onTap: () {}, child: const Text('Full Menu', style: TextStyle(color: Colors.white70, fontSize: 13))),
        const SizedBox(height: 6),
        InkWell(onTap: () {}, child: const Text('Special Offers', style: TextStyle(color: Colors.white70, fontSize: 13))),
        const SizedBox(height: 6),
        InkWell(onTap: () {}, child: const Text('Privacy Policy', style: TextStyle(color: Colors.white70, fontSize: 13))),
      ],
    );
  }

  Widget _footerOpeningHours() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Opening Hours',
          style: TextStyle(color: Colors.deepOrange, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text('Mon - Fri: 10:00 AM - 11:00 PM', style: TextStyle(color: Colors.white70, fontSize: 13)),
        SizedBox(height: 6),
        Text('Sat - Sun: 09:00 AM - 11:30 PM', style: TextStyle(color: Colors.white70, fontSize: 13)),
      ],
    );
  }

  Widget _footerContact() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Contact Us',
          style: TextStyle(color: Colors.deepOrange, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Icon(Icons.location_on, color: Colors.white70, size: 16),
            SizedBox(width: 8),
            Text('123 Food Street, Tasty City', style: TextStyle(color: Colors.white70, fontSize: 13)),
          ],
        ),
        SizedBox(height: 6),
        Row(
          children: [
            Icon(Icons.phone, color: Colors.white70, size: 16),
            SizedBox(width: 8),
            Text('+1 800 123 4567', style: TextStyle(color: Colors.white70, fontSize: 13)),
          ],
        ),
        SizedBox(height: 6),
        Row(
          children: [
            Icon(Icons.email, color: Colors.white70, size: 16),
            SizedBox(width: 8),
            Text('order@tastybites.com', style: TextStyle(color: Colors.white70, fontSize: 13)),
          ],
        ),
      ],
    );
  }
}

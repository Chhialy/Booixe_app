import 'package:flutter/material.dart';
import 'research.dart';
import 'donate_page.dart';
import 'community_page.dart';
import 'profile_page.dart';
import 'product_detail_page.dart';
import 'book_category_page.dart';
import 'chat_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAF8),
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              color: Colors.white,
              child: Row(
                children: [
                  // Logo
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE8F5E9),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/logo.png',
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) =>
                            const Icon(
                          Icons.menu_book,
                          color: Color(0xFF4CAF50),
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  // Booxie text
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Booxie',
                        style: TextStyle(
                          color: Color(0xFF00A63E),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'សៀវភៅប្រើរួច',
                        style: TextStyle(
                          color: Color(0xFF6F6F6F),
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  // Points badge
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFE082),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: const [
                        Icon(Icons.star, color: Color(0xFFFF9800), size: 14),
                        SizedBox(width: 2),
                        Text(
                          '59 ពិន្ទុ',
                          style: TextStyle(
                            color: Color(0xFF6F6F6F),
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  // Cart icon
                  Stack(
                    children: [
                      const Icon(Icons.shopping_cart_outlined,
                          color: Color(0xFF00A63E), size: 26),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: Container(
                          width: 16,
                          height: 16,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          child: const Center(
                            child: Text(
                              '2',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Main content
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 16),

                    // Title
                    const Text(
                      'ទិញ លក់ និង បរិច្ចាគ សៀវភៅ',
                      style: TextStyle(
                        color: Color(0xFF016630),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),

                    // Subtitle
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Text(
                        'ផ្លែតហ្វមដំបូងគេនៅកម្ពុជា សម្រាប់ការសិក្សាប្រកបដោយនិរន្តរភាព។\nសន្សំសំចៃថវិកា កាត់បន្ថយសំណល់ និងគាំទ្រដល់សិស្ស\nនិស្សិតដូចគ្នា។',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Color(0xFF6F6F6F),
                          fontSize: 12,
                          height: 1.5,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Search bar
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Container(
                        height: 44,
                        decoration: BoxDecoration(
                          color: const Color(0xFFECECEC),
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                              color: const Color(0xFFB9F8CF), width: 2),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 12),
                            const Icon(Icons.search,
                                color: Color(0xFF858585), size: 20),
                            const SizedBox(width: 8),
                            const Expanded(
                              child: Text(
                                'ស្វែងរកសៀវភៅសិក្សា ប្រធានបទ ឬថ្នាក់...',
                                style: TextStyle(
                                  color: Color(0xFF858585),
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Research()),
                                );
                              },
                              child: Container(
                                margin: const EdgeInsets.all(4),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF00A63E),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Text(
                                  'ស្វែងរក',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Category buttons 2x2
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const BookCategoryPage(),
                                      ),
                                    );
                                  },
                                  child: _CategoryButton(
                                    icon: Icons.menu_book,
                                    label: 'ប្រភេទសៀវភៅ',
                                    color: const Color(0xFF00A63E),
                                    bgColor: const Color(0xFFE8F5E9),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const DonatePage(),
                                      ),
                                    );
                                  },
                                  child: _CategoryButton(
                                    icon: Icons.volunteer_activism,
                                    label: 'បរិច្ចាគសៀវភៅ',
                                    color: const Color(0xFF155DFC),
                                    bgColor: const Color(0xFFE3F2FD),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Row(
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const CommunityPage(),
                                      ),
                                    );
                                  },
                                  child: _CategoryButton(
                                    icon: Icons.people,
                                    label: 'សហគមន៍',
                                    color: const Color(0xFF9810FA),
                                    bgColor: const Color(0xFFF3E5F5),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const ChatPage(),
                                      ),
                                    );
                                  },
                                  child: _CategoryButton(
                                    icon: Icons.chat_bubble_outline,
                                    label: 'សារ',
                                    color: const Color(0xFFF54A00),
                                    bgColor: const Color(0xFFFFF3E0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Product cards
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const ProductDetailPage(
                                      productName: 'ជំនាញទាក់ទងបង្កើតស្នេហ៍',
                                      productPrice: '១០,០០០រ',
                                    ),
                                  ),
                                );
                              },
                              child: _ProductCard(
                                imageUrl:
                                    'https://m.media-amazon.com/images/I/51K60kw5-WL._SX376_BO1,204,203,200_.jpg',
                                title: 'ជំនាញទាក់ទងបង្កើតស្នេហ៍',
                                seller: 'លី សារុង',
                                rating: 5.0,
                                reviews: 1,
                                price: '១០,០០០រ',
                                oldPrice: '២០,០០០រ',
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const ProductDetailPage(
                                      productName: 'គណិតវិទ្យាថ្នាក់១២',
                                      productPrice: '៥,០០០រ',
                                    ),
                                  ),
                                );
                              },
                              child: _ProductCard(
                                imageUrl:
                                    'https://images-na.ssl-images-amazon.com/images/I/71hXmF2PHJL.jpg',
                                title: 'គណិតវិទ្យាថ្នាក់១២',
                                seller: 'បាវ សៀវហេង',
                                rating: 0.0,
                                reviews: 0,
                                price: '៥,០០០រ',
                                oldPrice: '២០,០០០រ',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),

                    // News & Events section
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'ដំណឹង & ព្រឹត្តិការណ៍',
                            style: TextStyle(
                              color: Color(0xFF2D3748),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Container(
                            width: double.infinity,
                            height: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              gradient: const LinearGradient(
                                colors: [Color(0xFF1E88E5), Color(0xFF42A5F5)],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.all(6),
                                            decoration: BoxDecoration(
                                              color:
                                                  Colors.white.withOpacity(0.2),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: const Text(
                                              'កម្ពុជា',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10),
                                            ),
                                          ),
                                          const SizedBox(width: 8),
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8, vertical: 4),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Row(
                                              children: [
                                                Image.network(
                                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/KSHRD.png/220px-KSHRD.png',
                                                  width: 16,
                                                  height: 16,
                                                  errorBuilder: (c, e, s) =>
                                                      const Icon(Icons.school,
                                                          size: 16),
                                                ),
                                                const SizedBox(width: 4),
                                                const Text(
                                                  'High School\nReadathon',
                                                  style: TextStyle(
                                                      fontSize: 6,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 8),
                                      const Text(
                                        'កម្មវិធីអូនតូចអានច្រើន\nសហការផ្តល់ជូន\nវិញ្ញាបនបត្រមិច ២០២៥',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          height: 1.4,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  right: 8,
                                  bottom: 8,
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1546410531-bb4caa6b424d?w=100&h=100&fit=crop',
                                    width: 80,
                                    height: 80,
                                    fit: BoxFit.cover,
                                    errorBuilder: (c, e, s) => Container(
                                      width: 80,
                                      height: 80,
                                      color: Colors.white24,
                                      child: const Icon(Icons.emoji_events,
                                          color: Colors.white, size: 40),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 100),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: SafeArea(
          top: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Home
                _NavBarItem(
                  icon: Icons.home_outlined,
                  label: 'ទំព័រដើម',
                  isSelected: true,
                ),
                // Search
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Research()),
                    );
                  },
                  child: _NavBarItem(
                    icon: Icons.search,
                    label: 'ស្វែងរក',
                    isSelected: false,
                  ),
                ),
                // Donate - Center circle with +
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DonatePage()),
                    );
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.black87,
                            width: 2,
                          ),
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Colors.black87,
                          size: 24,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        'បរិច្ចាគ',
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
                // Community
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CommunityPage()),
                    );
                  },
                  child: _NavBarItem(
                    icon: Icons.people_outline,
                    label: 'សហគមន៍',
                    isSelected: false,
                  ),
                ),
                // Account
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfilePage()),
                    );
                  },
                  child: _NavBarItem(
                    icon: Icons.person_outline,
                    label: 'គណនី',
                    isSelected: false,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      // Floating chat button with notification badge
      floatingActionButton: Stack(
        children: [
          Container(
            width: 56,
            height: 56,
            margin: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: const Color(0xFF00A63E),
              borderRadius: BorderRadius.circular(28),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF00A63E).withOpacity(0.3),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: const Icon(Icons.chat_bubble_outline,
                color: Colors.white, size: 26),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: const Center(
                child: Text(
                  '!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Navigation bar item widget
class _NavBarItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;

  const _NavBarItem({
    required this.icon,
    required this.label,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 24,
          color: isSelected ? const Color(0xFF00A63E) : Colors.black87,
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 11,
            color: isSelected ? const Color(0xFF00A63E) : Colors.black87,
          ),
        ),
      ],
    );
  }
}

// Category button widget
class _CategoryButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  final Color bgColor;

  const _CategoryButton({
    required this.icon,
    required this.label,
    required this.color,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: color.withOpacity(0.3), width: 1),
      ),
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: Colors.white, size: 26),
          ),
          const SizedBox(height: 10),
          Text(
            label,
            style: TextStyle(
              color: color,
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

// Product card widget
class _ProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String seller;
  final double rating;
  final int reviews;
  final String price;
  final String oldPrice;

  const _ProductCard({
    required this.imageUrl,
    required this.title,
    required this.seller,
    required this.rating,
    required this.reviews,
    required this.price,
    required this.oldPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xFFE0E3E7)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(14)),
            child: Image.network(
              imageUrl,
              height: 120,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                height: 120,
                color: Colors.grey.shade200,
                child: const Center(
                  child: Icon(Icons.book, size: 40, color: Colors.grey),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Text(
                  title,
                  style: const TextStyle(
                    color: Color(0xFF2D3748),
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2),
                // Seller
                Text(
                  seller,
                  style: const TextStyle(
                    color: Color(0xFF718096),
                    fontSize: 10,
                  ),
                ),
                const SizedBox(height: 4),
                // Rating
                Row(
                  children: [
                    const Icon(Icons.star, color: Color(0xFFFFB800), size: 14),
                    const SizedBox(width: 2),
                    Text(
                      rating > 0 ? rating.toString() : '0.0',
                      style: const TextStyle(
                        color: Color(0xFF2D3748),
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                // Price row
                Row(
                  children: [
                    Text(
                      price,
                      style: const TextStyle(
                        color: Color(0xFF00A63E),
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      oldPrice,
                      style: const TextStyle(
                        color: Color(0xFF718096),
                        fontSize: 10,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                // Add to cart button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFE8F5E9),
                      foregroundColor: const Color(0xFF00A63E),
                      elevation: 0,
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'ដាក់ក្នុងកន្រ្រក',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

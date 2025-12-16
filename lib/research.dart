import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'donate_page.dart';
import 'community_page.dart';
import 'profile_page.dart';
import 'product_detail_page.dart';

class Research extends StatelessWidget {
  const Research({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Header with title
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.arrow_back_ios, size: 20),
                  ),
                  const SizedBox(width: 8),
                  Image.asset(
                    'assets/images/logo.png',
                    width: 32,
                    height: 32,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE8F5E9),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(Icons.book,
                            color: Color(0xFF00A63E), size: 20),
                      );
                    },
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'ស្វែងរកសៀវភៅសិក្សា',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),

            // Subtitle
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'ស្វែងរកសៀវភៅដែលអ្នកចូលចិត្តជាមួយ Booxie',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),

            // Search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                height: 44,
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: const Color(0xFFB9F8CF), width: 2),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 12),
                    const Icon(Icons.search,
                        color: Color(0xFF858585), size: 20),
                    const SizedBox(width: 8),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'ស្វែងរកសៀវភៅសិក្សា ប្រធានបទ ឬថ្នាក់...',
                          hintStyle: TextStyle(
                            color: Color(0xFF858585),
                            fontSize: 12,
                          ),
                          border: InputBorder.none,
                          isDense: true,
                          contentPadding: EdgeInsets.zero,
                        ),
                      ),
                    ),
                    Container(
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
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),

            // Category filter buttons
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  _FilterChip(label: 'រកមើលសៀវភៅ', isSelected: true),
                  const SizedBox(width: 8),
                  _FilterChip(label: 'សៀវភៅសិក្សា', isSelected: false),
                  const SizedBox(width: 8),
                  _FilterChip(label: 'ប្រលោមលោក​រឿង', isSelected: false),
                  const SizedBox(width: 8),
                  _FilterChip(label: 'អង់គ្លេស', isSelected: false),
                  const SizedBox(width: 8),
                  _FilterChip(label: 'សៀវភៅថ្មី', isSelected: false),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Product grid
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    // Row 1
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ProductDetailPage(
                                    productName:
                                        'វិញ្ញាសាប្រឡងចាក់ផ្កុល( គណិតវិទ្យា )',
                                    productPrice: '5,000៛',
                                  ),
                                ),
                              );
                            },
                            child: _BookCard(
                              imageAsset: 'assets/images/book1.png',
                              title: 'វិញ្ញាសាប្រឡងចាក់ផ្កុល( គណិតវិទ្យា )',
                              author: 'សារុន',
                              price: '5,000៛',
                              originalPrice: '6,000៛',
                              rating: '4.0',
                              badgeText: 'ថ្មី១៥!',
                              badgeColor: const Color(0xFF00A63E),
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
                                  builder: (context) => const ProductDetailPage(
                                    productName: 'សាដារបស់របង់រ៉ែ',
                                    productPrice: '៛១',
                                  ),
                                ),
                              );
                            },
                            child: _BookCard(
                              imageAsset: 'assets/images/book2.png',
                              title: 'សាដារបស់របង់រ៉ែ',
                              author: 'Sovan pech',
                              price: '៛១',
                              originalPrice: '១០,០០០៛',
                              rating: '4.8',
                              badgeText: null,
                              badgeColor: null,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),

                    // Row 2
                    Row(
                      children: [
                        Expanded(
                          child: _BookCard(
                            imageAsset: 'assets/images/book3.png',
                            title: 'Before the coffee gets cold',
                            author: 'លោក ណា',
                            price: '៥០,០០០៛',
                            originalPrice: '៤៨,០០០៛',
                            rating: '4.8',
                            badgeText: '១០!',
                            badgeColor: const Color(0xFF00A63E),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: _BookCard(
                            imageAsset: 'assets/images/book4.png',
                            title: 'English Grammer',
                            author: 'នីតា សុភា',
                            price: '៦,០០០៛',
                            originalPrice: '១២,០០០៛',
                            rating: '4.0',
                            badgeText: 'ថ្មី១៥!',
                            badgeColor: const Color(0xFF00A63E),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),

                    // Row 3
                    Row(
                      children: [
                        Expanded(
                          child: _BookCard(
                            imageAsset: 'assets/images/book5.png',
                            title: 'ធ្វេះស្ទួយរហ័រស',
                            author: 'សង់ សារ៉ា',
                            price: '៩,០០០៛',
                            originalPrice: '១២,០០០៛',
                            rating: '4.0',
                            badgeText: 'ថ្មី១៥!',
                            badgeColor: const Color(0xFF00A63E),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: _BookCard(
                            imageAsset: 'assets/images/book6.png',
                            title: 'កុលាបប៉ៃលិន',
                            author: 'នីតា​ សុភា',
                            price: '៦,០០០៛',
                            originalPrice: '១២,០០០៛',
                            rating: '4.0',
                            badgeText: 'ថ្មី១៥!',
                            badgeColor: const Color(0xFF00A63E),
                          ),
                        ),
                      ],
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
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: _NavBarItem(
                icon: Icons.home_outlined,
                label: 'ទំព័រដើម',
                isSelected: false,
              ),
            ),
            _NavBarItem(
              icon: Icons.search,
              label: 'ស្វែងរក',
              isSelected: true,
            ),
            // Donate - Center circle with +
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const DonatePage()),
                );
              },
              child: Column(
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
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
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
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
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

      // Floating chat button
      floatingActionButton: Container(
        width: 50,
        height: 50,
        margin: const EdgeInsets.only(bottom: 70),
        decoration: BoxDecoration(
          color: const Color(0xFF00A63E),
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF00A63E).withOpacity(0.3),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: const Icon(Icons.chat_bubble_outline,
            color: Colors.white, size: 24),
      ),
    );
  }
}

// Filter chip widget
class _FilterChip extends StatelessWidget {
  final String label;
  final bool isSelected;

  const _FilterChip({
    required this.label,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFF00A63E) : Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: isSelected ? const Color(0xFF00A63E) : const Color(0xFFE0E0E0),
        ),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 12,
          color: isSelected ? Colors.white : Colors.black87,
          fontWeight: isSelected ? FontWeight.w500 : FontWeight.normal,
        ),
      ),
    );
  }
}

// Book card widget
class _BookCard extends StatelessWidget {
  final String imageAsset;
  final String title;
  final String author;
  final String price;
  final String originalPrice;
  final String rating;
  final String? badgeText;
  final Color? badgeColor;

  const _BookCard({
    required this.imageAsset,
    required this.title,
    required this.author,
    required this.price,
    required this.originalPrice,
    required this.rating,
    this.badgeText,
    this.badgeColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
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
          // Image with favorite icon and badge
          Stack(
            children: [
              ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(12)),
                child: Image.asset(
                  imageAsset,
                  height: 140,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      height: 140,
                      color: const Color(0xFFF5F5F5),
                      child: const Center(
                        child: Icon(Icons.book,
                            size: 50, color: Color(0xFFCCCCCC)),
                      ),
                    );
                  },
                ),
              ),
              // Favorite icon
              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child:
                      const Icon(Icons.favorite, color: Colors.red, size: 16),
                ),
              ),
            ],
          ),

          // Content
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2),

                // Author
                Text(
                  author,
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
                const SizedBox(height: 6),

                // Badge and Rating row
                Row(
                  children: [
                    if (badgeText != null)
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6, vertical: 2),
                        decoration: BoxDecoration(
                          color: badgeColor ?? const Color(0xFF00A63E),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          badgeText!,
                          style: const TextStyle(
                            fontSize: 9,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    if (badgeText != null) const SizedBox(width: 6),
                    const Icon(Icons.star, color: Color(0xFFFFB800), size: 12),
                    const SizedBox(width: 2),
                    Text(
                      rating,
                      style: const TextStyle(
                        fontSize: 11,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 6),

                // Price
                Row(
                  children: [
                    Text(
                      price,
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF00A63E),
                      ),
                    ),
                  ],
                ),

                // Original price (strikethrough)
                Text(
                  originalPrice,
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.red.withOpacity(0.7),
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                const SizedBox(height: 8),

                // Add to cart button
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    color: const Color(0xFF00A63E),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: Text(
                      'ដាក់ក្នុងកន្រ្រក',
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
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

import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'donate_page.dart';
import 'community_page.dart';
import 'profile_page.dart';
import 'product_detail_page.dart';

class BookCategoryPage extends StatefulWidget {
  const BookCategoryPage({super.key});

  @override
  State<BookCategoryPage> createState() => _BookCategoryPageState();
}

class _BookCategoryPageState extends State<BookCategoryPage> {
  // Selected categories
  Set<String> selectedCategories = {'សៀវភៅពណ៌អុក'};
  Set<String> selectedSubCategories = {'រឿងស្នេហ៍'};

  // Filter values
  String? selectedStyle;
  String? selectedLocation;
  String? selectedClass;
  String? selectedYear;
  String? selectedSort;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.arrow_back_ios, size: 20),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'ប្រភេទសៀវភៅ',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'កេសៀវភៅតាមប្រភេទ និងប្លាក់',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Bunny mascot
                  Image.asset(
                    'assets/images/bunny_mascot.png',
                    width: 60,
                    height: 60,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE8F5E9),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Icon(Icons.pets,
                            color: Color(0xFF00A63E), size: 30),
                      );
                    },
                  ),
                ],
              ),
            ),

            // Main category chips
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  _CategoryChip(
                    label: 'សៀវភៅពណ៌អុក',
                    isSelected: selectedCategories.contains('សៀវភៅពណ៌អុក'),
                    onTap: () => _toggleCategory('សៀវភៅពណ៌អុក'),
                  ),
                  const SizedBox(width: 8),
                  _CategoryChip(
                    label: 'បាក់ឌុបថី2',
                    isSelected: selectedCategories.contains('បាក់ឌុបថី2'),
                    onTap: () => _toggleCategory('បាក់ឌុបថី2'),
                  ),
                  const SizedBox(width: 8),
                  _CategoryChip(
                    label: 'នីតិមទ្រី៥',
                    isSelected: selectedCategories.contains('នីតិមទ្រី៥'),
                    onTap: () => _toggleCategory('នីតិមទ្រី៥'),
                  ),
                  const SizedBox(width: 8),
                  _CategoryChip(
                    label: 'វិញ្ញាសាប្រឡង់',
                    isSelected: selectedCategories.contains('វិញ្ញាសាប្រឡង់'),
                    onTap: () => _toggleCategory('វិញ្ញាសាប្រឡង់'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),

            // Sub category chips
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  _CategoryChip(
                    label: 'រឿងស្នេហ៍',
                    isSelected: selectedSubCategories.contains('រឿងស្នេហ៍'),
                    onTap: () => _toggleSubCategory('រឿងស្នេហ៍'),
                  ),
                  const SizedBox(width: 8),
                  _CategoryChip(
                    label: 'រឿងសាស្រ្តសង្គម',
                    isSelected:
                        selectedSubCategories.contains('រឿងសាស្រ្តសង្គម'),
                    onTap: () => _toggleSubCategory('រឿងសាស្រ្តសង្គម'),
                  ),
                  const SizedBox(width: 8),
                  _CategoryChip(
                    label: 'សៀវភៅអង់គ្លេស',
                    isSelected: selectedSubCategories.contains('សៀវភៅអង់គ្លេស'),
                    onTap: () => _toggleSubCategory('សៀវភៅអង់គ្លេស'),
                  ),
                  const SizedBox(width: 8),
                  _CategoryChip(
                    label: 'ប្រលោមលោក',
                    isSelected: selectedSubCategories.contains('ប្រលោមលោក'),
                    onTap: () => _toggleSubCategory('ប្រលោមលោក'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),

            // Filter dropdowns
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  _FilterDropdown(
                    label: 'រូបរាង',
                    value: selectedStyle,
                    onChanged: (val) => setState(() => selectedStyle = val),
                  ),
                  const SizedBox(width: 8),
                  _FilterDropdown(
                    label: 'ទីតាំង',
                    value: selectedLocation,
                    onChanged: (val) => setState(() => selectedLocation = val),
                  ),
                  const SizedBox(width: 8),
                  _FilterDropdown(
                    label: 'ថ្នាក់',
                    value: selectedClass,
                    onChanged: (val) => setState(() => selectedClass = val),
                  ),
                  const SizedBox(width: 8),
                  _FilterDropdown(
                    label: 'ឆ្នាំ',
                    value: selectedYear,
                    onChanged: (val) => setState(() => selectedYear = val),
                  ),
                  const SizedBox(width: 8),
                  _FilterDropdown(
                    label: 'រៀងប្រេវត្ត',
                    value: selectedSort,
                    onChanged: (val) => setState(() => selectedSort = val),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Book grid
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
                                    productName: 'ស្នេហ៍អស់ពីបេះដូង',
                                    productPrice: '១៥,០០០៛',
                                  ),
                                ),
                              );
                            },
                            child: _BookCard(
                              imageAsset: 'assets/images/love_book1.png',
                              title: 'ស្នេហ៍អស់ពីបេះដូង',
                              author: 'សំណាង',
                              price: '១៥,០០០៛',
                              originalPrice: '២៥,០០០៛',
                              rating: '4.5',
                              badgeText: 'ផ្សព្វប្រី',
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
                                    productName: 'សូរិន',
                                    productPrice: '១៥,០០០៛',
                                  ),
                                ),
                              );
                            },
                            child: _BookCard(
                              imageAsset: 'assets/images/sorin_book.png',
                              title: 'សូរិន',
                              author: 'ចាន់វីរ៉ា',
                              price: '១៥,០០០៛',
                              originalPrice: '២៥,០០០៛',
                              rating: '4.6',
                              badgeText: 'ថ្មី',
                              badgeColor: const Color(0xFF2196F3),
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
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ProductDetailPage(
                                    productName: 'រឿងស្នេហ៍',
                                    productPrice: '១២,០០០៛',
                                  ),
                                ),
                              );
                            },
                            child: _BookCard(
                              imageAsset: 'assets/images/love_story.png',
                              title: 'រឿងស្នេហ៍',
                              author: 'សុខ សារ៉ាវី',
                              price: '១២,០០០៛',
                              originalPrice: '១៨,០០០៛',
                              rating: '4.2',
                              badgeText: null,
                              badgeColor: null,
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
                                    productName: 'ទឹកក្រពើ Dream Wither',
                                    productPrice: '២០,០០០៛',
                                  ),
                                ),
                              );
                            },
                            child: _BookCard(
                              imageAsset: 'assets/images/dream_wither.png',
                              title: 'ទឹកក្រពើ Dream Wither',
                              author: 'វណ្ណ សារ៉ា',
                              price: '២០,០០០៛',
                              originalPrice: '២៨,០០០៛',
                              rating: '4.8',
                              badgeText: null,
                              badgeColor: null,
                            ),
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
    );
  }

  void _toggleCategory(String category) {
    setState(() {
      if (selectedCategories.contains(category)) {
        selectedCategories.remove(category);
      } else {
        selectedCategories.add(category);
      }
    });
  }

  void _toggleSubCategory(String category) {
    setState(() {
      if (selectedSubCategories.contains(category)) {
        selectedSubCategories.remove(category);
      } else {
        selectedSubCategories.add(category);
      }
    });
  }
}

// Category chip widget
class _CategoryChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _CategoryChip({
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF00A63E) : Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: const Color(0xFF00A63E),
            width: 1.5,
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.white : const Color(0xFF00A63E),
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

// Filter dropdown widget
class _FilterDropdown extends StatelessWidget {
  final String label;
  final String? value;
  final Function(String?) onChanged;

  const _FilterDropdown({
    required this.label,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFE0E0E0)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 12,
            ),
          ),
          const SizedBox(width: 4),
          const Icon(Icons.keyboard_arrow_down,
              size: 18, color: Colors.black54),
        ],
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
          // Image with badge and favorite
          Stack(
            children: [
              ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(12)),
                child: Image.asset(
                  imageAsset,
                  height: 160,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      height: 160,
                      color: const Color(0xFFF5F5F5),
                      child: const Center(
                        child: Icon(Icons.book, size: 50, color: Colors.grey),
                      ),
                    );
                  },
                ),
              ),
              // Favorite button
              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.favorite_border,
                    size: 18,
                    color: Colors.grey,
                  ),
                ),
              ),
              // Badge
              if (badgeText != null)
                Positioned(
                  top: 8,
                  left: 8,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: badgeColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      badgeText!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
                Text(
                  author,
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
                const SizedBox(height: 6),
                // Rating row
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE8F5E9),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        badgeText ?? 'ថ្មី',
                        style: const TextStyle(
                          fontSize: 9,
                          color: Color(0xFF00A63E),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(width: 6),
                    const Icon(Icons.star, size: 12, color: Colors.amber),
                    const SizedBox(width: 2),
                    Text(
                      rating,
                      style:
                          const TextStyle(fontSize: 11, color: Colors.black54),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                // Price row
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          price,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF00A63E),
                          ),
                        ),
                        Text(
                          originalPrice,
                          style: const TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 6),
                      decoration: BoxDecoration(
                        color: const Color(0xFF00A63E),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Text(
                        'ដាក់ក្នុងកន្រ្តក់',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 9,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
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
          color: isSelected ? const Color(0xFF00A63E) : Colors.black54,
          size: 24,
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 11,
            color: isSelected ? const Color(0xFF00A63E) : Colors.black54,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
      ],
    );
  }
}

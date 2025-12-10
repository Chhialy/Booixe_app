import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5FBF7),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                child: Column(
                  children: [
                    const SizedBox(height: 8),

                    // Logo circle at top
                    Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE8F5E9),
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: const Color(0xFF81C784), width: 3),
                      ),
                      child: ClipOval(
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Image.asset(
                            'assets/images/logo.png',
                            fit: BoxFit.contain,
                            errorBuilder: (context, error, stackTrace) =>
                                const Icon(
                              Icons.menu_book,
                              size: 44,
                              color: Color(0xFF4CAF50),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),

                    // App title
                    const Text(
                      'Booxie',
                      style: TextStyle(
                        color: Color(0xFF2196F3),
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),

                    // Khmer subtitle
                    const Text(
                      'ទីផ្សារសៀវភៅ និងសម្ភារៈ សម្រាប់និស្សិតនៅកម្ពុជា',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Banner image (bookstore photo)
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Container(
                        width: double.infinity,
                        height: 140,
                        color: Colors.grey.shade200,
                        child: Image.asset(
                          'assets/images/banner.png',
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) =>
                              Image.network(
                            'https://images.unsplash.com/photo-1524995997946-a1c2e315a42f?w=800&h=400&fit=crop',
                            fit: BoxFit.cover,
                            errorBuilder: (ctx, err, st) => const Center(
                              child: Icon(Icons.store,
                                  size: 48, color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // 2x2 Feature cards grid - Row 1
                    Row(
                      children: [
                        Expanded(
                          child: _FeatureCard(
                            icon: Icons.handshake,
                            iconBgColor: const Color(0xFFFFA726),
                            title: 'តម្លៃល្អបំផុត',
                            subtitle: 'សន្សំលុយលើសៀវភៅ និងសម្ភារៈសិក្សា',
                            borderColor: const Color(0xFFFFE082),
                            bgColor: const Color(0xFFFFFDE7),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: _FeatureCard(
                            icon: Icons.favorite,
                            iconBgColor: const Color(0xFFE91E63),
                            title: 'បរិច្ចាគ និងរកប្រាក់',
                            subtitle: 'គាំទ្រសិស្ស និងទទួលបានពិន្ទុរង្វាន់',
                            borderColor: const Color(0xFFF8BBD9),
                            bgColor: const Color(0xFFFCE4EC),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),

                    // 2x2 Feature cards grid - Row 2
                    Row(
                      children: [
                        Expanded(
                          child: _FeatureCard(
                            icon: Icons.people,
                            iconBgColor: const Color(0xFF42A5F5),
                            title: 'សហគមន៍',
                            subtitle:
                                'ចែករំលែកបទពិសោធន៍ និងមិត្តភក្តិស្រឡាញ់សៀវភៅ',
                            borderColor: const Color(0xFF90CAF9),
                            bgColor: const Color(0xFFE3F2FD),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: _FeatureCard(
                            icon: Icons.auto_awesome,
                            iconBgColor: const Color(0xFF7E57C2),
                            title: 'ជំនួយការ AI',
                            subtitle:
                                'ទទួលបានការណែនាំសៀវភៅតាមបំណងប្រាថ្នារបស់អ្នក',
                            borderColor: const Color(0xFFCE93D8),
                            bgColor: const Color(0xFFF3E5F5),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),

                    // Section title
                    const Text(
                      'ហេតុអ្វីជ្រើសរើស Booxie?',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 14),

                    // Benefits 2x2 grid with checkmarks
                    Row(
                      children: const [
                        Expanded(
                          child: _BenefitItem(
                            title: 'អ្នកលក់ដែលបានផ្ទៀងផ្ទាត់',
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: _BenefitItem(
                            title: 'ការទូទាត់សុវត្ថិភាព',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: const [
                        Expanded(
                          child: _BenefitItem(
                            title: 'កាលីទំនាក់ទំនង',
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: _BenefitItem(
                            title: 'ស្វែងរក',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),

            // Bottom button
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              decoration: BoxDecoration(
                color: const Color(0xFFF5FBF7),
              ),
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to next screen or login
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF4CAF50),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 0,
                ),
                child: const Text(
                  'ចាប់ផ្តើម',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Feature card widget
class _FeatureCard extends StatelessWidget {
  final IconData icon;
  final Color iconBgColor;
  final String title;
  final String subtitle;
  final Color borderColor;
  final Color bgColor;

  const _FeatureCard({
    required this.icon,
    required this.iconBgColor,
    required this.title,
    required this.subtitle,
    required this.borderColor,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: borderColor, width: 1.5),
      ),
      child: Column(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: iconBgColor,
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: Colors.white, size: 22),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}

// Benefit item widget with checkmark (compact version for 2x2 grid)
class _BenefitItem extends StatelessWidget {
  final String title;

  const _BenefitItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 20,
          height: 20,
          decoration: const BoxDecoration(
            color: Color(0xFF4CAF50),
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.check, color: Colors.white, size: 14),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}

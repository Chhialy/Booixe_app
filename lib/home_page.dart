import 'package:flutter/material.dart';
import 'home_screen.dart';

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
                    const SizedBox(height: 20),

                    // Mascot logo with circular background
                    Container(
                      width: 180,
                      height: 180,
                      decoration: const BoxDecoration(
                        color: Color(0xFFD5F5E3),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/images/logo.png',
                          width: 160,
                          height: 160,
                          fit: BoxFit.contain,
                          errorBuilder: (context, error, stackTrace) =>
                              const Icon(
                            Icons.auto_stories,
                            size: 80,
                            color: Color(0xFF00A67E),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // App title - Booxie
                    const Text(
                      'Booxie',
                      style: TextStyle(
                        color: Color(0xFF00A67E),
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),

                    // Khmer subtitle
                    const Text(
                      'ទីផ្សារសៀវភៅ និងសម្ភារះសិក្សានៅបរិវេណសាកលវិទ្យាល័យ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Banner image (bookstore photo)
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Container(
                        width: double.infinity,
                        height: 160,
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
                    const SizedBox(height: 24),

                    // Section title
                    const Text(
                      'ហេតុអ្វីជ្រើសរើស Booxie ?',
                      style: TextStyle(
                        color: Color(0xFF2D3748),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 6),

                    // Section subtitle
                    const Text(
                      'អ្វីៗគ្រប់យ៉ាងដែលអ្នកត្រូវការសម្រាប់ដំណើរសិក្សារបស់អ្នក',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF718096),
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Benefits 2x2 grid with colored checkmarks
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Expanded(
                          child: _BenefitItem(
                            checkColor: Color(0xFF9F7AEA), // Purple
                            title: 'អ្នកលក់ដែលបានផ្ទៀងផ្ទាត់',
                            subtitle: 'ទិញដោយទំនុកចិត្តពីអ្នកលក់',
                          ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: _BenefitItem(
                            checkColor: Color(0xFFE53E3E), // Red
                            title: 'ការទូទាត់សុវត្ថិភាព',
                            subtitle: 'ការបញ្ជលវត្ថារបស់ធនាគារ ABA និង ACLEDA',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Expanded(
                          child: _BenefitItem(
                            checkColor: Color(0xFF38A169), // Green
                            title: 'ការដឹកជញ្ជូនលឿន',
                            subtitle:
                                'ភាពជាដៃគូជាមួយ J&T Express ជាមួយការបញ្ជុះតម្លៃពិសេស',
                          ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: _BenefitItem(
                            checkColor: Color(0xFF3182CE), // Blue
                            title: 'ពិន្ទុរង្វាន់',
                            subtitle:
                                'ទទួលបានពិន្ទុលើការទិញ និងការបញ្ចុះតំាងអស់',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),

            // Bottom button
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
              decoration: const BoxDecoration(
                color: Color(0xFFF5FBF7),
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF68D391),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 0,
                ),
                child: const Text(
                  'ចាប់ផ្ដើម',
                  style: TextStyle(
                    fontSize: 18,
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

// Benefit item widget with colored checkmark
class _BenefitItem extends StatelessWidget {
  final Color checkColor;
  final String title;
  final String subtitle;

  const _BenefitItem({
    required this.checkColor,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            color: checkColor,
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.check, color: Colors.white, size: 16),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Color(0xFF2D3748),
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                subtitle,
                style: const TextStyle(
                  color: Color(0xFF718096),
                  fontSize: 11,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

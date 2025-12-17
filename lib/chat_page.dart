import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'donate_page.dart';
import 'community_page.dart';
import 'profile_page.dart';
import 'research.dart';

class ChatPage extends StatefulWidget {
  final String? sellerName;
  final String? sellerAvatar;

  const ChatPage({
    super.key,
    this.sellerName,
    this.sellerAvatar,
  });

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _searchController = TextEditingController();

  // Sample user data for horizontal scroll
  final List<Map<String, String>> users = [
    {'name': 'និងអ្នកផ្សេងក្រី៥', 'avatar': 'assets/images/user3.png'},
    {'name': 'ពៅ សៀងហួរ', 'avatar': 'assets/images/user2.png'},
    {'name': 'សំ​ សុវណ្ណ', 'avatar': 'assets/images/user3.png'},
  ];

  // Sample conversation data
  final List<Map<String, dynamic>> conversations = [
    {
      'name': 'ជំនួយ Booxie AI',
      'subtitle': 'ជំនួយអតិថិជន Booxie AI',
      'message':
          'សួស្ដី! ខ្ញុំជាជំនួយការ AI របស់ Booxie។ តើខ្ញុំអាចជួយអ្វីបានទេ។',
      'avatar': 'assets/images/booxie_ai.png',
      'isAI': true,
      'isVerified': true,
    },
    {
      'name': 'សំ​ សុវណ្ណ',
      'subtitle': 'វេយ្យាករណ៍អង់គ្លេស់',
      'message':
          'ជំរាបសួរ! សូមអរគុណសម្រាប់ការចាប់អារម្មណ៍លើ "វេយ្យាករណ៍អង់គ្លេស"។',
      'avatar': 'assets/images/user3.png',
      'isAI': false,
      'isVerified': false,
    },
    {
      'name': 'ពៅ សៀងហួរ',
      'subtitle': 'គណិតវិទ្យាថ្នាក់១២ ថ្នាក់១២',
      'message':
          'សួស្ដី! សូមអរគុណសម្រាប់ការចាប់អារម្មណ៍លើ "គណិតវិទ្យា ថ្នាក់១២"។',
      'avatar': 'assets/images/user2.png',
      'isAI': false,
      'isVerified': false,
    },
  ];

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
                  // Booxie mascot avatar
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE8F5E9),
                      shape: BoxShape.circle,
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/logo.png',
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(Icons.pets,
                              color: Color(0xFF00A63E), size: 30);
                        },
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  // Title
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Booxie',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF00A63E),
                          ),
                        ),
                        Text(
                          'សៀវភៅប្រៀប',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Edit icon
                  IconButton(
                    onPressed: () {},
                    icon:
                        const Icon(Icons.edit_outlined, color: Colors.black54),
                  ),
                ],
              ),
            ),

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
                    Expanded(
                      child: TextField(
                        controller: _searchController,
                        decoration: const InputDecoration(
                          hintText: 'ស្វែងរកសៀវភៅស្រែក ប្រធានបទ ឬថ្នាក់...',
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
            const SizedBox(height: 16),

            // Horizontal user scroll with tags
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: users.length + 1, // +1 for current user
                itemBuilder: (context, index) {
                  if (index == 0) {
                    // Current user with add button
                    return Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: const Color(0xFF00A63E),
                                    width: 2,
                                  ),
                                ),
                                child: ClipOval(
                                  child: Image.asset(
                                    'assets/images/user_avatar.png',
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, error, stackTrace) {
                                      return Container(
                                        color: const Color(0xFFE8F5E9),
                                        child: const Icon(Icons.person,
                                            color: Color(0xFF00A63E), size: 30),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 2),
                            decoration: BoxDecoration(
                              color: const Color(0xFFE8F5E9),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Text(
                              'សុទ្ធភាពដី១៥',
                              style: TextStyle(
                                fontSize: 9,
                                color: Color(0xFF00A63E),
                              ),
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            'និងអ្នកផ្សេងក្រី១០០០',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                        ],
                      ),
                    );
                  }

                  final user = users[index - 1];
                  return Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.grey.shade300,
                              width: 2,
                            ),
                          ),
                          child: ClipOval(
                            child: Image.asset(
                              user['avatar']!,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  color: Colors.grey.shade200,
                                  child: const Icon(Icons.person,
                                      color: Colors.grey, size: 30),
                                );
                              },
                            ),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 2),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            index == 1 ? 'មហាវិទ្យល្ល័យល័រ៍​' : 'សុភ្គ',
                            style: TextStyle(
                              fontSize: 9,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          user['name']!,
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const Divider(height: 1),

            // Conversation list
            Expanded(
              child: ListView.builder(
                itemCount: conversations.length,
                itemBuilder: (context, index) {
                  final conversation = conversations[index];
                  return _ConversationTile(
                    name: conversation['name'],
                    subtitle: conversation['subtitle'],
                    message: conversation['message'],
                    avatar: conversation['avatar'],
                    isAI: conversation['isAI'],
                    isVerified: conversation['isVerified'],
                    onTap: () {
                      // Navigate to chat detail
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChatDetailPage(
                            name: conversation['name'],
                            avatar: conversation['avatar'],
                            isAI: conversation['isAI'],
                          ),
                        ),
                      );
                    },
                  );
                },
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
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Research()),
                );
              },
              child: _NavBarItem(
                icon: Icons.search,
                label: 'ស្វែងរក',
                isSelected: true,
              ),
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
                    'លក់',
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
}

// Conversation tile widget
class _ConversationTile extends StatelessWidget {
  final String name;
  final String subtitle;
  final String message;
  final String avatar;
  final bool isAI;
  final bool isVerified;
  final VoidCallback onTap;

  const _ConversationTile({
    required this.name,
    required this.subtitle,
    required this.message,
    required this.avatar,
    required this.isAI,
    required this.isVerified,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Avatar
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isAI ? const Color(0xFFE8F5E9) : Colors.grey.shade200,
              ),
              child: ClipOval(
                child: isAI
                    ? const Icon(Icons.smart_toy,
                        color: Color(0xFF00A63E), size: 28)
                    : Image.asset(
                        avatar,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Icon(Icons.person,
                              color: Colors.grey.shade400, size: 28);
                        },
                      ),
              ),
            ),
            const SizedBox(width: 12),
            // Content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                      ),
                      if (isVerified || isAI) ...[
                        const SizedBox(width: 4),
                        Icon(
                          Icons.verified,
                          size: 14,
                          color: isAI ? const Color(0xFF00A63E) : Colors.blue,
                        ),
                        if (isAI) ...[
                          const SizedBox(width: 4),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 6, vertical: 2),
                            decoration: BoxDecoration(
                              color: const Color(0xFFE8F5E9),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: const Text(
                              'AI',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF00A63E),
                              ),
                            ),
                          ),
                        ],
                      ],
                    ],
                  ),
                  const SizedBox(height: 2),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    message,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey.shade500,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
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

// Chat detail page
class ChatDetailPage extends StatefulWidget {
  final String name;
  final String avatar;
  final bool isAI;

  const ChatDetailPage({
    super.key,
    required this.name,
    required this.avatar,
    required this.isAI,
  });

  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  final TextEditingController _messageController = TextEditingController();
  final List<Map<String, dynamic>> messages = [];

  @override
  void initState() {
    super.initState();
    // Add initial messages like in the design
    messages.add({
      'text':
          'សួស្ដី! សូមអរគុណសម្រាប់ការចាប់អារម្មណ៍លើ "គណិតវិទ្យាថ្នាក់១២"។\nតើខ្ញុំអាចជួយអ្វីបានទេ?',
      'isMe': false,
      'time': '10:36 PM',
      'showAvatar': true,
    });
    messages.add({
      'text': 'តម្លៃប៉ុន្មាន?',
      'isMe': true,
      'time': '10:36 PM',
      'showAvatar': false,
    });
    messages.add({
      'text': '៤,០០០រ បង',
      'isMe': false,
      'time': '10:36 PM',
      'showAvatar': true,
    });
  }

  void _sendMessage() {
    if (_messageController.text.trim().isEmpty) return;

    setState(() {
      messages.add({
        'text': _messageController.text,
        'isMe': true,
        'time': 'Now',
        'showAvatar': false,
      });
    });
    _messageController.clear();

    // Simulate reply after delay
    Future.delayed(const Duration(seconds: 1), () {
      if (mounted) {
        setState(() {
          messages.add({
            'text': 'អរគុណសម្រាប់សារ! ខ្ញុំនឹងឆ្លើយតបក្នុងពេលឆាប់ៗ។',
            'isMe': false,
            'time': 'Now',
            'showAvatar': true,
          });
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Custom Header
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  // Back button
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios,
                        color: Color(0xFF00A63E), size: 22),
                    onPressed: () => Navigator.pop(context),
                  ),
                  // Avatar
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade200,
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        widget.avatar,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: Colors.grey.shade300,
                            child: Icon(Icons.person,
                                color: Colors.grey.shade600, size: 28),
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  // Name and status
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.name,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          'សកម្ម ១ នាទីមុន',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Call button
                  IconButton(
                    icon: const Icon(Icons.call,
                        color: Color(0xFF00A63E), size: 24),
                    onPressed: () {},
                  ),
                  // Video call button
                  IconButton(
                    icon: const Icon(Icons.videocam,
                        color: Color(0xFF00A63E), size: 26),
                    onPressed: () {},
                  ),
                ],
              ),
            ),

            // Messages
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  final message = messages[index];
                  return _ChatBubble(
                    text: message['text'],
                    isMe: message['isMe'],
                    time: message['time'],
                    showAvatar: message['showAvatar'] ?? false,
                    avatar: widget.avatar,
                  );
                },
              ),
            ),

            // Input area
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
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
              child: Row(
                children: [
                  // Camera button
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xFF00A63E),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Icon(Icons.camera_alt,
                        color: Colors.white, size: 22),
                  ),
                  const SizedBox(width: 10),
                  // Text input
                  Expanded(
                    child: Container(
                      height: 44,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF5F5F5),
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: TextField(
                        controller: _messageController,
                        decoration: const InputDecoration(
                          hintText: 'វាយសារ...',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(vertical: 12),
                        ),
                        onSubmitted: (_) => _sendMessage(),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  // Attachment button
                  IconButton(
                    icon: Icon(Icons.attach_file,
                        color: Colors.grey.shade600, size: 24),
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(
                      minWidth: 36,
                      minHeight: 36,
                    ),
                  ),
                  // Image button
                  IconButton(
                    icon: Icon(Icons.image_outlined,
                        color: Colors.grey.shade600, size: 24),
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(
                      minWidth: 36,
                      minHeight: 36,
                    ),
                  ),
                  // Microphone button
                  IconButton(
                    icon: Icon(Icons.mic_none,
                        color: Colors.grey.shade600, size: 24),
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(
                      minWidth: 36,
                      minHeight: 36,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Chat bubble widget matching the design
class _ChatBubble extends StatelessWidget {
  final String text;
  final bool isMe;
  final String time;
  final bool showAvatar;
  final String avatar;

  const _ChatBubble({
    required this.text,
    required this.isMe,
    required this.time,
    required this.showAvatar,
    required this.avatar,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment:
            isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // Avatar for received messages
          if (!isMe && showAvatar)
            Container(
              width: 32,
              height: 32,
              margin: const EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.shade200,
              ),
              child: ClipOval(
                child: Image.asset(
                  avatar,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Icon(Icons.person,
                        color: Colors.grey.shade400, size: 20);
                  },
                ),
              ),
            )
          else if (!isMe)
            const SizedBox(width: 40), // Placeholder for alignment

          // Message bubble
          Column(
            crossAxisAlignment:
                isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Container(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.65,
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                decoration: BoxDecoration(
                  color: isMe ? const Color(0xFF00A63E) : Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(18),
                    topRight: const Radius.circular(18),
                    bottomLeft: Radius.circular(isMe ? 18 : 4),
                    bottomRight: Radius.circular(isMe ? 4 : 18),
                  ),
                  border: isMe ? null : Border.all(color: Colors.grey.shade200),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 14,
                    color: isMe ? Colors.white : Colors.black87,
                    height: 1.4,
                  ),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                time,
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey.shade500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

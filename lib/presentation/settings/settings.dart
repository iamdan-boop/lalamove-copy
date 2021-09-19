import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: const Text(
          'Settings',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          _SettingsTile(
            onTap: () {},
            title: 'Change Password',
            subtitle: 'if you have already set a password, click here to\n'
                'change the password,',
          ),
          const SizedBox(height: 10),
          _SettingsTile(
            onTap: () {},
            title: 'Saved Routes',
          ),
          const SizedBox(height: 10),
          _SettingsTile(
            onTap: () {},
            title: 'Receive E-receipts',
          ),
          const SizedBox(height: 10),
          _SettingsTile(
            onTap: () {},
            title: 'Enable digital signaturer',
            subtitle: 'Delivery requires receipt to sign in',
          ),
          const SizedBox(height: 10),
          _SettingsTile(
            onTap: () {},
            title: 'Language',
            subtitle: 'English',
          ),
          const SizedBox(height: 10),
          _SettingsTile(
            onTap: () {},
            title: 'User Agreement',
          ),
          const Divider(
            height: 1,
          ),
          _SettingsTile(
            onTap: () {},
            title: 'Privacy Policy',
          ),
          const Divider(
            height: 1,
          ),
          _SettingsTile(
            onTap: () {},
            title: 'Standard Rules',
          ),
          const SizedBox(height: 10),
          _SettingsTile(
            onTap: () {},
            trailing: const Text('v 105.1.1'),
            title: 'About Lalamove',
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 55,
        width: double.infinity,
        child: TextButton(
          onPressed: () {},
          child: const Text(
            'SIGN OUT',
            style: TextStyle(
              fontSize: 18,
              color: Colors.deepOrange,
            ),
          ),
        ),
      ),
    );
  }
}

class _SettingsTile extends StatelessWidget {
  const _SettingsTile({
    Key? key,
    required this.title,
    this.subtitle,
    required this.onTap,
    this.trailing,
  }) : super(key: key);

  final String title;
  final String? subtitle;
  final Widget? trailing;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                subtitle != null
                    ? Text(
                        subtitle!,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      )
                    : const SizedBox.shrink(),
              ],
            ),
            const Spacer(),
            trailing ?? const SizedBox.shrink(),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

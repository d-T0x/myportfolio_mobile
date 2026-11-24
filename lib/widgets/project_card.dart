import 'package:flutter/material.dart';
import 'package:myportofolio_mobile/screens/project_form.dart';
import 'package:myportofolio_mobile/screens/experience_form.dart';
import 'package:myportofolio_mobile/screens/project_list_screen.dart';
import 'package:myportofolio_mobile/widgets/auth_guard.dart';
import 'package:myportofolio_mobile/services/auth_state.dart';
import 'package:provider/provider.dart';

class ItemHomepage {
  final String name;
  final IconData icon;
  final Color color;

  ItemHomepage(this.name, this.icon, this.color);
}

class ItemCard extends StatelessWidget {
  final ItemHomepage item;

  const ItemCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      // Menggunakan warna sekunder dari skema tema aplikasi.
      color: item.color,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        // Aksi ketika kartu ditekan oleh pengguna.
        onTap: () async {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!"),
              ),
            );

          // Navigate ke halaman yang sesuai
          if (item.name == "Tambah Proyek") {
            final ok = await ensureLoggedIn(context);
            if (!ok || !context.mounted) return;
            Navigator.push(
              context,
              MaterialPageRoute<void>(builder: (_) => const ProjectFormPage()),
            );
          }
          if (item.name == "Tambah Pengalaman") {
            final ok = await ensureLoggedIn(context);
            if (!ok || !context.mounted) return;
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (_) => const ExperienceFormPage(),
              ),
            );
            return;
          }

          if (item.name == 'Logout') {
            final authState = context.read<AuthState>();
            if (!authState.isLoggedIn) {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  const SnackBar(content: Text('You are not logged in.')),
                );
              return;
            }
            await authState.logout();
            if (!context.mounted) return;
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                const SnackBar(content: Text('Successfully logged out.')),
              );
            return;
          }

          if (item.name == 'View Projects') {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (_) => const ProjectListScreen(),
              ),
            );
            return;
          }
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(item.icon, color: Colors.white, size: 30.0),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

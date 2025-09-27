import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF4A2C2A), // Cor primária chocolate
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200), // Largura máxima do conteúdo
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Menu de navegação
                Row(
                  children: [
                    _buildMenuItem(context, 'Cardápio'),
                    _buildMenuItem(context, 'Quem Somos'),
                    _buildMenuItem(context, 'Como Funciona'),
                    _buildMenuItem(context, 'Contato'),
                  ],
                ),
                // Ícones
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.shopping_cart, color: Colors.white, size: 24),
                      onPressed: () { /* Ação do carrinho */ },
                    ),
                    IconButton(
                      icon: const Icon(Icons.account_circle, color: Colors.white, size: 24),
                      onPressed: () { /* Ação do perfil do usuário */ },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: TextButton(
        onPressed: () { /* Ação do item de menu */ },
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
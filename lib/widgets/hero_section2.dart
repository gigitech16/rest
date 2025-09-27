import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFBE9EA), // Cor de fundo rosa claro
      height: MediaQuery.of(context).size.height * 0.7, // 70% da altura da tela
      child: Stack(
        children: [
          // Ondas de fundo (você precisaria de uma imagem ou um Path customizado para isso)
          Positioned.fill(
            child: Opacity(
              opacity: 0.7,
              child: Image.network(
                'https://i.imgur.com/your-wave-pattern-image-id.png', // **Substitua pela URL da sua imagem de ondas**
                fit: BoxFit.cover,
                repeat: ImageRepeat.noRepeat,
              ),
            ),
          ),

          // Morango esquerdo
          Positioned(
            bottom: 20,
            left: 20,
            child: Transform.rotate(
              angle: -0.35, // Aproximadamente -20 graus
              child: Opacity(
                opacity: 0.6,
                child: Image.network(
                  'https://i.imgur.com/your-strawberry-left-image-id.png', // **Substitua pela URL do morango esquerdo**
                  width: 80,
                  height: 80,
                ),
              ),
            ),
          ),

          // Morango direito
          Positioned(
            top: 50,
            right: 20,
            child: Transform.rotate(
              angle: 0.52, // Aproximadamente 30 graus
              child: Opacity(
                opacity: 0.6,
                child: Image.network(
                  'https://i.imgur.com/your-strawberry-right-image-id.png', // **Substitua pela URL do morango direito**
                  width: 80,
                  height: 80,
                ),
              ),
            ),
          ),

          // Conteúdo central (Logo, Slogan, Busca)
          Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 800),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://i.imgur.com/your-logo-image-id.png', // **Substitua pela URL da sua logo**
                      height: 200, // Ajuste o tamanho da logo
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Onde o Chocolate se Torna Arte',
                      style: Theme.of(context).textTheme.displayLarge?.copyWith(
                            color: const Color(0xFF4A2C2A), // Cor do chocolate
                          ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 30),
                    Container(
                      constraints: const BoxConstraints(maxWidth: 500),
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 0,
                            blurRadius: 8,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: const InputDecoration(
                                hintText: 'Busque seu doce favorito...',
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                              ),
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: const Color(0xFF6A3E3C), // Cor do botão de busca
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              icon: const Icon(Icons.search, color: Colors.white),
                              onPressed: () { /* Ação de busca */ },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
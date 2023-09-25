class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Foto (substitua pelo caminho da sua imagem)
              Image.asset(
                '/logo.png', // Substitua pelo caminho da sua imagem
                width: 150,
                height: 150,
              ),
              const SizedBox(height: 20),
              // Texto centralizado
              const Text(
                'Todas as notícias de todas as fontes confiáveis para todos os tipos de pessoas',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

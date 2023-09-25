class _MyHomePageState extends State<MyHomePage> {
  bool _isPasswordVisible =
      false; // Variável para controlar a visibilidade da senha

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo do App
                // Container(
                //   child: Image.asset(
                //     '/logo.png', // Substitua pelo caminho da sua imagem
                //     width: 150,
                //     height: 150,
                //   ),
                // ),
                const SizedBox(height: 20),
                // Formulário
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Nome de usuário',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const SizedBox(height: 20),
                      TextFormField(
                        obscureText:
                            !_isPasswordVisible, // Altera a visibilidade com base na variável
                        decoration: InputDecoration(
                          labelText: 'Senha',
                          border: const OutlineInputBorder(),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isPasswordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: () {
                              setState(() {
                                _isPasswordVisible =
                                    !_isPasswordVisible; // Inverte a visibilidade
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                          onPressed: () {
                            // Implemente a lógica de Sign In aqui
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 16.0,
                                bottom: 16.0,
                                right: 20.0,
                                left: 20.0),
                            child: const Text(
                              'Entrar',
                              style: TextStyle(fontSize: 20),
                            ),
                          )),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                // Legenda abaixo dos botões de redes sociais
              ],
            ),
          ),
        ),
      ),
    );
  }
}

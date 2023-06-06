<h1>APLICATIVO FLUTTER </h1>

<h2>Login Page</h2>
No projeto estou utilizando de autenticação local, mas futuramente penso em utilizar do firebase para melhorar a segurança e obter mais funcionalidades com o Firebase.
<hr>
<h2>Sobre o projeto</h2>
Projeto Flutter com paginas de navegação e <strong>GETX</strong> e <strong>API rest</strong>. 
O projeto e um aplicativo de compras de frutas e legumes
e nele temos pagina para ver os itens disponiveis para compra, carrinho pagina de pagamentos e pagina para alterar senha do usuario.
<hr>
<h2>Injeção de Dependências</h2>
No Projeto estou utilizando de injeção de dependência, que facilita no momento de encontrar dados na memoria para serem acessados por funções do projeto, utilizando a função <strong>PUT</strong> do <strong>GETX</strong>, que pode ser vista no trecho de código a seguir:

```
void main() {
  Get.put(AuthController()); //injeçao de dependência na memória
  runApp(const MyApp());
}
```
Para ver mais sobre injeção de dependencias: <a link="https://medium.com/popcodemobile/inje%C3%A7%C3%A3o-de-depend%C3%AAncias-no-flutter-152704d4064d">Clique Aqui!</a>
<hr>

<h2>Screens Utilizadas</h2>

- LOGINPAGE
- HOMEPAGE
- SHOPPING
- PEDIDOS
- PROFILE

<hr>




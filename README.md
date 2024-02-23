# voluntiersapp

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Mock

- comando que gera as classes de mock pelo mokito -> % dart run build_runner build

## Architecture

A estrutura apresentada na imagem é uma representação de arquitetura de software, que parece ser uma variação da arquitetura Clean ou Hexagonal, onde a separação de responsabilidades é clara entre a interface do usuário (UI), a lógica de negócios (domínio) e as fontes de dados (dados).

Para implementar uma estrutura em Flutter seguindo o diagrama e utilizando Cubit para gerenciamento de estado e GetIt para injeção de dependência, você pode estruturar seu projeto da seguinte maneira:

## presentation

Esta camada contém tudo relacionado à UI (Widgets) e aos detentores da lógica de apresentação (Presentation Logic Holders), que poderiam ser Cubits em nosso caso.

## domain

Aqui, você define seus Use Cases e Entities. Use Cases são operações ou funções que representam todas as possíveis ações do usuário.

## data

Esta camada contém os Repositories que servem como ponte entre a lógica de negócios e a fonte de dados, e os Models que são as representações de dados usadas tanto no domínio quanto nas fontes de dados.

data sources: Divididos em Remote Data Sources (por exemplo, APIs) e Local Data Sources (por exemplo, banco de dados local).

## Converter Model para Entity

Converter Model para Entity é uma prática útil por várias razões dentro da Clean Architecture e outros padrões de design de software:

1. Separação de Preocupações: Mantém a lógica de negócios separada da lógica de persistência de dados. As entidades são usadas na camada de domínio e nos casos de uso, enquanto os modelos são usados para comunicação com a camada de dados (como APIs e bancos de dados).

2. Proteção da Lógica de Negócios: Ao converter um Model (que pode ser uma representação direta dos dados de um banco de dados ou API) para um Entity, você está garantindo que apenas dados validados e aprovados estão sendo usados nos casos de uso e na lógica de negócios. Isso ajuda a prevenir estados inválidos dentro da lógica de domínio.

3. Flexibilidade: Permite que o Model e o Entity evoluam independentemente um do outro. Por exemplo, se você decidir alterar a estrutura do banco de dados ou a resposta da API, você só precisaria ajustar o UserModel e o método de conversão, ao invés de refatorar a lógica de negócios em todo o seu aplicativo.

4. Mapeamento de Dados: Facilita o mapeamento entre a representação dos dados que vem de fontes externas e a representação que você quer usar dentro da sua lógica de negócios. Por exemplo, o UserModel pode conter todos os campos retornados por uma API, enquanto o Entity pode conter apenas os campos necessários para a lógica de negócios.

5. Testabilidade: Torna mais fácil testar a lógica de negócios de forma isolada, uma vez que os testes podem ser realizados em Entity sem depender dos detalhes da implementação do UserModel ou da camada de dados.

6. Manutenibilidade: Facilita a manutenção do código, já que as alterações na estrutura de dados externos não afetam diretamente a lógica de negócios. Você só precisaria ajustar a conversão em um local.

7. Intercambiabilidade de Fontes de Dados: Permite que você mude as fontes de dados sem alterar a lógica de negócios, pois você pode ter diferentes implementações de UserModel para diferentes fontes de dados, mas um Entity unificado para a lógica de negócios.

Ao adicionar um método de conversão, você está essencialmente criando um ponto de transição entre a camada de dados e a camada de domínio, permitindo que o seu sistema seja mais modular e resiliente a mudanças.

unit projetosimpleorm.controller.interfaces;

interface

uses
  projetosimpleorm.controller.dto.interfaces,
  projetosimpleorm.model.resource;

type
  iController = interface
    function Pedido: iPedido;
    function PedidoItens: iPedidoItens;
    function Produto: iProduto;
    function Cliente: iCliente;
    function Pessoa: iPessoa;
    function Endereco: iEndereco;
    function Configuracao: iConfiguracao;
  end;

implementation

end.

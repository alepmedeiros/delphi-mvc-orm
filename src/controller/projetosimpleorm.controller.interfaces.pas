unit projetosimpleorm.controller.interfaces;

interface

uses
  projetosimpleorm.controller.dto.interfaces;

type
  iController = interface
    function Pedido: iPedido;
    function PedidoItens: iPedidoItens;
    function Produto: iProduto;
    function Cliente: iCliente;
  end;

implementation

end.

unit projetosimpleorm.model.entity.interfaces;

interface

uses
  projetosimpleorm.model.entity.cliente,
  projetosimpleorm.model.entity.endereco,
  projetosimpleorm.model.entity.pedido,
  projetosimpleorm.model.entity.pedidoitens,
  projetosimpleorm.model.entity.pessoa,
  projetosimpleorm.model.entity.produto;

type
  iEntity = interface
    function cliente: TCliente;
    function endereco: TEndereco;
    function pedido: TPedido;
    function pedidoitens: TPedidoItens;
    function pessoa: TPessoa;
    function produto: TProduto;
  end;

implementation

end.

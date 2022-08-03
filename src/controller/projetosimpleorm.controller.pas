unit projetosimpleorm.controller;

interface

uses
  projetosimpleorm.controller.interfaces,
  projetosimpleorm.controller.dto.interfaces,
  projetosimpleorm.controller.dto.impl.cliente,
  projetosimpleorm.controller.dto.impl.pedido,
  projetosimpleorm.controller.dto.impl.pedidoitens,
  projetosimpleorm.controller.dto.impl.produto;

type
  TController = class(TInterfacedObject, iController)
    private
      FPedido: iPedido;
      FPedidoItens: iPedidoItens;
      FProduto: iProduto;
      FCliente: iCliente;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iController;
      function Pedido: iPedido;
      function PedidoItens: iPedidoItens;
      function Produto: iProduto;
      function Cliente: iCliente;
  end;

implementation

function TController.Cliente: iCliente;
begin
  if not Assigned(FCliente) then
    FCliente := TClienteDTO.New;
  Result := FCliente;
end;

constructor TController.Create;
begin

end;

destructor TController.Destroy;
begin

  inherited;
end;

class function TController.New : iController;
begin
  Result := Self.Create;
end;

function TController.Pedido: iPedido;
begin
  if not Assigned(FPedido) then
    FPedido := TPedidoDTO.New;
  Result := FPedido;
end;

function TController.PedidoItens: iPedidoItens;
begin
  if not Assigned(FPedidoItens) then
    FPedidoItens := TPedidoItensDTO.New;
  Result := FPedidoItens;
end;

function TController.Produto: iProduto;
begin
  if not Assigned(FProduto) then
    FProduto := TProdutoDTO.New;
  Result := FProduto;
end;

end.

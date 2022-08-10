unit projetosimpleorm.model.entity.impl.factory;

interface

uses
  projetosimpleorm.model.entity.interfaces,
  projetosimpleorm.model.entity.cliente,
  projetosimpleorm.model.entity.endereco, projetosimpleorm.model.entity.pedido,
  projetosimpleorm.model.entity.pedidoitens,
  projetosimpleorm.model.entity.pessoa, projetosimpleorm.model.entity.produto;

type
  TEntity = class(TInterfacedObject, iEntity)
    private
      FCliente: TCliente;
      FEndereco: TEndereco;
      FPedido: TPedido;
      FPedidoItens: TPedidoItens;
      FPessoa: TPessoa;
      FProduto: TProduto;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iEntity;
      function cliente: TCliente;
      function endereco: TEndereco;
      function pedido: TPedido;
      function pedidoitens: TPedidoItens;
      function pessoa: TPessoa;
      function produto: TProduto;
  end;

implementation

function TEntity.cliente: TCliente;
begin
  if not Assigned(FCliente) then
    FCliente := TCliente.Create;
  Result := FCliente;
end;

constructor TEntity.Create;
begin

end;

destructor TEntity.Destroy;
begin

  inherited;
end;

function TEntity.endereco: TEndereco;
begin
  if not Assigned(FEndereco) then
    FEndereco := TEndereco.Create;
  Result := FEndereco;
end;

class function TEntity.New : iEntity;
begin
  Result := Self.Create;
end;

function TEntity.pedido: TPedido;
begin
  if not Assigned(FPedido) then
    FPedido := TPedido.Create;
  Result := FPedido;
end;

function TEntity.pedidoitens: TPedidoItens;
begin
  if not Assigned(FPedidoItens) then
    FPedidoItens := TPedidoItens.Create;
  Result := FPedidoItens;
end;

function TEntity.pessoa: TPessoa;
begin
  if not Assigned(FPessoa) then
    FPessoa := TPessoa.Create;
  Result := FPessoa;
end;

function TEntity.produto: TProduto;
begin
  if not Assigned(FProduto) then
    FProduto := TProduto.Create;
  Result := FProduto;
end;

end.

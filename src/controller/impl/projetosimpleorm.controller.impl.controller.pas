unit projetosimpleorm.controller.impl.controller;

interface

uses
  projetosimpleorm.controller.interfaces,
  projetosimpleorm.controller.dto.interfaces,
  projetosimpleorm.model.resource.interfaces,
  projetosimpleorm.controller.dto.impl.cliente,
  projetosimpleorm.model.resource.impl.configuracao,
  projetosimpleorm.controller.dto.impl.produto,
  projetosimpleorm.controller.dto.impl.pessoa,
  projetosimpleorm.controller.dto.impl.pedidoitens,
  projetosimpleorm.controller.dto.impl.pedido,
  projetosimpleorm.controller.dto.impl.endereco;

type
  TController = class(TInterfacedObject, iController)
    private
      FPedido: iPedido;
      FPedidoItens: iPedidoItens;
      FProduto: iProduto;
      FCliente: iCliente;
      FPessoa: iPessoa;
      FEndereco: iEndereco;
      FConfiguracao: iConfiguracao;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iController;
      function Pedido: iPedido;
      function PedidoItens: iPedidoItens;
      function Produto: iProduto;
      function Cliente: iCliente;
      function Pessoa: iPessoa;
      function Endereco: iEndereco;
      function Configuracao: iConfiguracao;
  end;

implementation

function TController.Cliente: iCliente;
begin
  if not Assigned(FCliente) then
    FCliente := TClienteDTO.New;
  Result := FCliente;
end;

function TController.Configuracao: iConfiguracao;
begin
  if not Assigned(FConfiguracao) then
    FConfiguracao := TConfiguracao.New;
  Result := FConfiguracao;
end;

constructor TController.Create;
begin

end;

destructor TController.Destroy;
begin

  inherited;
end;

function TController.Endereco: iEndereco;
begin
   if not Assigned(FEndereco) then
    FEndereco := TEnderecoDTO.New;
  Result := FEndereco;
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

function TController.Pessoa: iPessoa;
begin
  if not Assigned(FPessoa) then
    FPessoa := TPessoaDTO.New;
  Result := FPessoa;
end;

function TController.Produto: iProduto;
begin
  if not Assigned(FProduto) then
    FProduto := TProdutoDTO.New;
  Result := FProduto;
end;

end.

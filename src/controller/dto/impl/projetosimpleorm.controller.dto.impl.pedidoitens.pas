unit projetosimpleorm.controller.dto.impl.pedidoitens;

interface

uses
  projetosimpleorm.controller.dto.interfaces,
  projetosimpleorm.model.service,
  projetosimpleorm.model.entity.pedidoitens,
  projetosimpleorm.model.service.impl.simpleorm;

type
  TPedidoItensDTO = class(TInterfacedObject, iPedidoItens)
  private
    FEntity: TPedidoItens;
    FService: iService<TPedidoItens>;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iPedidoItens;
    function Id(Value: Integer): iPedidoItens; overload;
    function Id: Integer; overload;
    function IdPedido(Value: Integer): iPedidoItens; overload;
    function IdPedid: Integer; overload;
    function IdProduto(Value: Integer): iPedidoItens; overload;
    function IdProduto: Integer; overload;
    function Quantidade(Value: Integer): iPedidoItens; overload;
    function Quantidade: Integer; overload;
    function ValorUnitario(Value: Double): iPedidoItens; overload;
    function ValorUnitario: Double; overload;
    function ValorTotal(Value: Double): iPedidoItens; overload;
    function ValorTotal: Double; overload;
    function Build: iService<TPedidoItens>;
  end;

implementation

function TPedidoItensDTO.Build: iService<TPedidoItens>;
begin

end;

constructor TPedidoItensDTO.Create;
begin
  FEntity := TPedidoItens.Create;
  FService:= TServiceSimpleORM<TPedidoItens>.New(FEntity);
end;

destructor TPedidoItensDTO.Destroy;
begin
  FEntity.DisposeOf;
  inherited;
end;

function TPedidoItensDTO.Id: Integer;
begin
  Result := FEntity.Id;
end;

function TPedidoItensDTO.Id(Value: Integer): iPedidoItens;
begin
  Result := Self;
  FEntity.Id := Value;
end;

function TPedidoItensDTO.IdPedid: Integer;
begin
  Result := FEntity.IdPedido;
end;

function TPedidoItensDTO.IdPedido(Value: Integer): iPedidoItens;
begin
  Result := Self;
  FEntity.IdPedido := Value;
end;

function TPedidoItensDTO.IdProduto: Integer;
begin
  Result := FEntity.IdProduto;
end;

function TPedidoItensDTO.IdProduto(Value: Integer): iPedidoItens;
begin
  Result := Self;
  FEntity.IdProduto := Value;
end;

class function TPedidoItensDTO.New: iPedidoItens;
begin
  Result := Self.Create;
end;

function TPedidoItensDTO.Quantidade: Integer;
begin
  Result := FEntity.Quantidade;
end;

function TPedidoItensDTO.Quantidade(Value: Integer): iPedidoItens;
begin
  Result := Self;
  FEntity.Quantidade := Value;
end;

function TPedidoItensDTO.ValorTotal: Double;
begin
  Result := FEntity.ValorTotal;
end;

function TPedidoItensDTO.ValorTotal(Value: Double): iPedidoItens;
begin
  Result := Self;
  FEntity.ValorTotal := Value;
end;

function TPedidoItensDTO.ValorUnitario: Double;
begin
  Result := FEntity.ValorUnitario;
end;

function TPedidoItensDTO.ValorUnitario(Value: Double): iPedidoItens;
begin
  Result := Self;
  FEntity.ValorUnitario := Value;
end;

end.

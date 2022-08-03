unit projetosimpleorm.controller.dto.impl.pedido;

interface

uses
  projetosimpleorm.controller.dto.interfaces,
  projetosimpleorm.model.service,
  projetosimpleorm.model.entity.pedido,
  projetosimpleorm.model.service.impl.simpleorm;

type
  TPedidoDTO = class(TInterfacedObject, iPedido)
  private
    FEntity: TPedido;
    FService: iService<TPedido>;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iPedido;
    function Id(Value: Integer): iPedido; overload;
    function Id: Integer; overload;
    function DataEmissao(Value: TDateTime): iPedido; overload;
    function DataEmissao: TDateTime; overload;
    function IDCliente(Value: Integer): iPedido; overload;
    function IDCliente: Integer; overload;
    function ValorTotal(Value: Double): iPedido; overload;
    function ValorTotal: Double; overload;
    function Build: iService<TPedido>;
  end;

implementation

function TPedidoDTO.Build: iService<TPedido>;
begin
  Result := FService;
end;

constructor TPedidoDTO.Create;
begin
  FEntity:= TPedido.Create;
  FService:= TServiceSimpleORM<TPedido>.Create(FEntity);
end;

function TPedidoDTO.DataEmissao: TDateTime;
begin
  Result := FEntity.DataEmissao;
end;

function TPedidoDTO.DataEmissao(Value: TDateTime): iPedido;
begin
  Result := Self;
  FEntity.DataEmissao := Value;
end;

destructor TPedidoDTO.Destroy;
begin
  FEntity.DisposeOf;
  inherited;
end;

function TPedidoDTO.Id: Integer;
begin
  Result := FEntity.Id;
end;

function TPedidoDTO.Id(Value: Integer): iPedido;
begin
  Result := Self;
  FEntity.Id := Value;
end;

function TPedidoDTO.IDCliente(Value: Integer): iPedido;
begin
  Result := Self;
  FEntity.IDCliente := Value;
end;

function TPedidoDTO.IDCliente: Integer;
begin
  Result := FEntity.IDCliente;
end;

class function TPedidoDTO.New: iPedido;
begin
  Result := Self.Create;
end;

function TPedidoDTO.ValorTotal(Value: Double): iPedido;
begin
  Result := Self;
  FEntity.ValorTotal := Value;
end;

function TPedidoDTO.ValorTotal: Double;
begin
  Result := FEntity.ValorTotal;
end;

end.

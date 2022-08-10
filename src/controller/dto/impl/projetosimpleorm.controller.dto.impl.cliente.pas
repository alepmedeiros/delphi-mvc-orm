unit projetosimpleorm.controller.dto.impl.cliente;

interface

uses
  projetosimpleorm.controller.dto.interfaces,
  projetosimpleorm.model.service,
  System.Classes,
  projetosimpleorm.model.entity.cliente,
  projetosimpleorm.model.service.impl.simpleorm;

type
  TClienteDTO = class(TInterfacedObject, iCliente)
  private
    FEntity: TCliente;
    FService: iService<TCLiente>;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iCliente;
    function Id(Value: Integer): iCliente; overload;
    function Id: Integer; overload;
    function IdPessoa(Value: Integer): iCliente; overload;
    function IdPessoa: Integer; overload;
    function Tipo(Value: String): iCliente; overload;
    function Tipo: String; overload;
    function CpfCnpj(Value: String): iCliente; overload;
    function CpfCnpj: String; overload;
    function Email(Value: String): iCliente; overload;
    function Email: String; overload;
    function Telefone(Value: String): iCliente; overload;
    function Telefone: String; overload;
    function Foto(Value: TStream): iCliente; overload;
    function Foto: TStream; overload;
    function Build: iService<TCliente>;
  end;

implementation

function TClienteDTO.Build: iService<TCliente>;
begin
  Result := FService;
end;

function TClienteDTO.CpfCnpj(Value: String): iCliente;
begin
  Result := Self;
  FEntity.CpfCnpj := Value;
end;

function TClienteDTO.CpfCnpj: String;
begin
  Result := FEntity.CpfCnpj;
end;

constructor TClienteDTO.Create;
begin
  FEntity:= TCliente.Create;
  FService:= TServiceSimpleORM<TCLiente>.New(FEntity);
end;

destructor TClienteDTO.Destroy;
begin
  FEntity.DisposeOf;
  inherited;
end;

function TClienteDTO.Email: String;
begin
  Result := FEntity.Email;
end;

function TClienteDTO.Email(Value: String): iCliente;
begin
  Result := Self;
  FEntity.Email := Value;
end;

function TClienteDTO.Foto(Value: TStream): iCliente;
begin
  Result := Self;
  FEntity.Foto := Value;
end;

function TClienteDTO.Foto: TStream;
begin
  Result := FEntity.Foto;
end;

function TClienteDTO.Id: Integer;
begin
  Result := FEntity.Id;
end;

function TClienteDTO.Id(Value: Integer): iCliente;
begin
  Result := Self;
  FEntity.Id := Value;
end;

function TClienteDTO.IdPessoa: Integer;
begin
  Result := FEntity.IdPessoa;
end;

function TClienteDTO.IdPessoa(Value: Integer): iCliente;
begin
  Result := Self;
  FEntity.IdPessoa := Value;
end;

class function TClienteDTO.New: iCliente;
begin
  Result := Self.Create;
end;

function TClienteDTO.Telefone: String;
begin
  Result := FEntity.Telefone;
end;

function TClienteDTO.Telefone(Value: String): iCliente;
begin
  Result := Self;
  FEntity.Telefone := Value;
end;

function TClienteDTO.Tipo(Value: String): iCliente;
begin
  Result := Self;
  FEntity.Tipo := Value;
end;

function TClienteDTO.Tipo: String;
begin
  Result := FEntity.Tipo;
end;

end.

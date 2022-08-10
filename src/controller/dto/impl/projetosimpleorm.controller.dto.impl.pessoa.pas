unit projetosimpleorm.controller.dto.impl.pessoa;

interface

uses
  projetosimpleorm.model.service.impl.servicesimpleorm,
  projetosimpleorm.model.entity.pessoa,
  projetosimpleorm.model.sevice.interfaces,
  projetosimpleorm.controller.dto.interfaces;

type
  TPessoaDTO = class(TInterfacedObject, iPessoa)
  private
    FEntity: TPessoa;
    FService: iService<TPessoa>;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iPessoa;
    function Id(Value: Integer): iPessoa; overload;
    function Id: Integer; overload;
    function Nome(Value: String): iPessoa; overload;
    function Nome: String; overload;
    function DataNascReg(Value: TDate): iPessoa; overload;
    function DataNascReg: TDate; overload;
    function Build: iService<TPessoa>;
  end;

implementation

function TPessoaDTO.Build: iService<TPessoa>;
begin
  Result := FService;
end;

constructor TPessoaDTO.Create;
begin
  FEntity := TPessoa.Create;
  FService := TServiceSimpleORM<TPessoa>.New(FEntity);
end;

function TPessoaDTO.DataNascReg: TDate;
begin
  Result := FEntity.DataNascReg;
end;

function TPessoaDTO.DataNascReg(Value: TDate): iPessoa;
begin
  Result := Self;
  FEntity.DataNascReg := Value;
end;

destructor TPessoaDTO.Destroy;
begin
  FEntity.DisposeOf;
  inherited;
end;

function TPessoaDTO.Id: Integer;
begin
  Result := FEntity.Id;
end;

function TPessoaDTO.Id(Value: Integer): iPessoa;
begin
  Result := Self;
  FEntity.Id := Value;
end;

class function TPessoaDTO.New: iPessoa;
begin
  Result := Self.Create;
end;

function TPessoaDTO.Nome(Value: String): iPessoa;
begin
  Result := Self;
  FEntity.Nome := Value;
end;

function TPessoaDTO.Nome: String;
begin
  Result := FEntity.Nome;
end;

end.

unit projetosimpleorm.controller.dto.impl.produto;

interface

uses
  projetosimpleorm.model.entity.produto,
  projetosimpleorm.model.sevice.interfaces,
  projetosimpleorm.model.service.impl.servicesimpleorm,
  projetosimpleorm.controller.dto.interfaces,
  System.Classes;

type
  TProdutoDTO = class(TInterfacedObject, iProduto)
  private
    FEntity: TProduto;
    FService: iService<TProduto>;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iProduto;
    function Id(Value: Integer): iProduto; overload;
    function Id: Integer; overload;
    function Descricao(Value: String): iProduto; overload;
    function Descricao: String; overload;
    function PrecoVenda(Value: Double): iProduto; overload;
    function PrecoVenda: Double; overload;
    function Foto(Value: TStream): iProduto; overload;
    function Foto: TStream; overload;
    function Build: iService<TProduto>;
  end;

implementation

function TProdutoDTO.Build: iService<TProduto>;
begin
  Result := FService;
end;

constructor TProdutoDTO.Create;
begin
  FEntity := TProduto.Create;
  FService := TServiceSimpleORM<TProduto>.New(FEntity);
end;

function TProdutoDTO.Descricao: String;
begin
  Result := FEntity.Descricao;
end;

function TProdutoDTO.Descricao(Value: String): iProduto;
begin
  Result := Self;
  FEntity.Descricao := Value;
end;

destructor TProdutoDTO.Destroy;
begin
  FEntity.DisposeOf;
  inherited;
end;

function TProdutoDTO.Foto: TStream;
begin
  Result := FEntity.Foto;
end;

function TProdutoDTO.Foto(Value: TStream): iProduto;
begin
  Result := Self;
  FEntity.Foto := Value;
end;

function TProdutoDTO.Id(Value: Integer): iProduto;
begin
  Result := Self;
  FEntity.Id := Value;
end;

function TProdutoDTO.Id: Integer;
begin
  Result := FEntity.Id;
end;

class function TProdutoDTO.New: iProduto;
begin
  Result := Self.Create;
end;

function TProdutoDTO.PrecoVenda: Double;
begin
  Result := FEntity.PrecoVenda;
end;

function TProdutoDTO.PrecoVenda(Value: Double): iProduto;
begin
  Result := Self;
  FEntity.PrecoVenda := Value;
end;

end.

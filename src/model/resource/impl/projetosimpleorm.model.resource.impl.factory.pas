unit projetosimpleorm.model.resource.impl.factory;

interface

uses
  projetosimpleorm.model.resource,
  projetosimpleorm.model.resource.impl.conexaofiredac,
  projetosimpleorm.model.resource.impl.configuracao;

type
  TResource = class(TInterfacedObject, iResource)
  private
    FConexao: iConexao;
    FConfiguracao: iConfiguracao;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iResource;
    function conexao: iConexao;
    function configuracao: iConfiguracao;
  end;

implementation

function TResource.conexao: iConexao;
begin
  Result := FConexao;
end;

function TResource.configuracao: iConfiguracao;
begin
  Result := FConfiguracao;
end;

constructor TResource.Create;
begin
  FConfiguracao := TConfiguracao.New;
  FConexao := TConexaoFiredac.New(FConfiguracao);
end;

destructor TResource.Destroy;
begin

  inherited;
end;

class function TResource.New: iResource;
begin
  Result := Self.Create;
end;

end.

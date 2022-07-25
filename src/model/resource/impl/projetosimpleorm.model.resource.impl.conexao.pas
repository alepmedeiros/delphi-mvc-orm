unit projetosimpleorm.model.resource.impl.conexao;

interface

uses
  projetosimpleorm.model.resource.conexao;

type
  TConexao = class(TInterfacedObject, iConexao)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iConexao;
      function Connect: iConexao;
  end;

implementation

function TConexao.Connect: iConexao;
begin

end;

constructor TConexao.Create;
begin

end;

destructor TConexao.Destroy;
begin

  inherited;
end;

class function TConexao.New : iConexao;
begin
  Result := Self.Create;
end;

end.

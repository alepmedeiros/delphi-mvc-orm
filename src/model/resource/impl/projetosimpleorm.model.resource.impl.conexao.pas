unit projetosimpleorm.model.resource.impl.conexao;

interface

uses
  Data.DB,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Stan.ExprFuncs,
  FireDAC.Comp.UI,
  FireDAC.Comp.Client,
  projetosimpleorm.model.resource.conexao;

type
  TConexaoFiredac = class(TInterfacedObject, iConexao)
    private
      FConn: TFDConnection;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iConexao;
      function Connect: TCustomConnection;
  end;

implementation

function TConexaoFiredac.Connect: TCustomConnection;
begin

end;

constructor TConexaoFiredac.Create;
begin

end;

destructor TConexaoFiredac.Destroy;
begin

  inherited;
end;

class function TConexaoFiredac.New : iConexao;
begin
  Result := Self.Create;
end;

end.

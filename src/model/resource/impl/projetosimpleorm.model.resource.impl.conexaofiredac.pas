unit projetosimpleorm.model.resource.impl.conexaofiredac;

interface

uses
  System.SysUtils,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat,
  FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI,
  Data.DB,
  FireDAC.Comp.Client,
  projetosimpleorm.model.resource;

type
  TConexaoFiredac = class(TInterfacedObject, iConexao)
    private
      FConfiguracao: iConfiguracao;
      FConn: TFDConnection;
    public
      constructor Create(Configuracao: iConfiguracao);
      destructor Destroy; override;
      class function New(Configuracao: iConfiguracao) : iConexao;
      function Connect: TCustomConnection;
  end;

implementation

function TConexaoFiredac.Connect: TCustomConnection;
begin
  try
    FConn.Params.DriverID := FConfiguracao.DriverId;
    FConn.Params.Database := FConfiguracao.Database;
    FConn.Params.UserName := FConfiguracao.UserName;
    FConn.Params.Password := FConfiguracao.Password;
    FConn.Params.Add('Port=' + FConfiguracao.Port);
    FConn.Params.Add('Server=' + FConfiguracao.Server);

    if not FConfiguracao.Schema.IsEmpty then
    begin
      FConn.Params.Add('MetaCurSchema=' + FConfiguracao.Schema);
      FConn.Params.Add('MetaDefSchema=' + FConfiguracao.Schema);
    end;

    if not FConfiguracao.Locking.IsEmpty then
      FConn.Params.Add('LockingMode=' + FConfiguracao.Locking);

    FConn.Connected := True;
    Result := FConn;
  except
    raise Exception.Create('Não foi possivel realizar a conexao');
  end;
end;

constructor TConexaoFiredac.Create(Configuracao: iConfiguracao);
begin
  FConn := TFDConnection.Create(nil);
  FConfiguracao := Configuracao;
end;

destructor TConexaoFiredac.Destroy;
begin
  FConn.DisposeOf;
  inherited;
end;

class function TConexaoFiredac.New (Configuracao: iConfiguracao) : iConexao;
begin
  Result := Self.Create(Configuracao);
end;

end.

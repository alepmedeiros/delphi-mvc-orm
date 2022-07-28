unit projetosimpleorm.model.resource.conexao;

interface

uses
  Data.DB;

type
  iConexao = interface
    function Connect: TCustomConnection;
  end;

implementation

end.

unit projetosimpleorm.model.entity.cliente;

interface

uses
  SimpleAttributes,
  System.Classes;

type

  [Tabela('CLIENTE')]
  TCliente = class
  private
    FId: Integer;
    FIdPessoa: Integer;
    FTipo: String;
    FCpfCnpj: String;
    FFoto: TStream;
  public
    [Campo('ID'), Pk, AutoInc]
    property Id: Integer read FId write FId;
    [Campo('ID_PESSOA'), Fk]
    property IdPessoa: Integer read FIdPessoa write FIdPessoa;
    [Campo('TIPO')]
    property Tipo: String read FTipo write FTipo;
    [Campo('CPFCNPJ')]
    property CpfCnpj: String read FCpfCnpj write FCpfCnpj;
    [Campo('FOTO')]
    property Foto: TStream read FFoto write FFoto;
  end;

implementation

end.

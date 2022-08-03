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
    FEmail: String;
    FTelefone: String;
  public
    [Campo('ID'), Pk, AutoInc]
    property Id: Integer read FId write FId;
    [Campo('ID_PESSOA'), Fk]
    property IdPessoa: Integer read FIdPessoa write FIdPessoa;
    [Campo('TIPO')]
    property Tipo: String read FTipo write FTipo;
    [Campo('CPFCNPJ')]
    property CpfCnpj: String read FCpfCnpj write FCpfCnpj;
    [Campo('EMAIL')]
    property Email: String read FEmail write FEmail;
    [Campo('TELEFONE')]
    property Telefone: String read FTelefone write FTelefone;
    [Campo('FOTO')]
    property Foto: TStream read FFoto write FFoto;
  end;

implementation

end.

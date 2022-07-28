unit projetosimpleorm.model.entity.contato;

interface

uses
  SimpleAttributes;

type
  [Tabela('CONTATO')]
  TContato = class
  private
    FId: Integer;
    FIdPessoa: Integer;
    FEmail: String;
    FTelefone: String;
  public
    [Campo('ID'), Pk, AutoInc]
    property Id: Integer read FId write FId;
    [Campo('ID_PESSOA'), Fk]
    property IdPessoa: Integer read FIdPessoa write FIdPessoa;
    [Campo('EMAIL')]
    property Email: String read FEmail write FEmail;
    [Campo('TELEFONE')]
    property Telefone: String read FTelefone write FTelefone;
  end;

implementation

end.

unit projetosimpleorm.model.entity.contato;

interface

type
  TContato = class
  private
    FId: Integer;
    FIdPessoa: Integer;
    FEmail: String;
    FTelefone: String;
    FTipo: String;
  public
    property Id: Integer read FId write FId;
    property IdPessoa: Integer read FIdPessoa write FIdPessoa;
    property Email: String read FEmail write FEmail;
    property Telefone: String read FTelefone write FTelefone;
    property Tipo: String read FTipo write FTipo;
  end;

implementation

end.

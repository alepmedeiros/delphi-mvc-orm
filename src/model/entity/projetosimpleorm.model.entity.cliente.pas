unit projetosimpleorm.model.entity.cliente;

interface

type
  TCliente = class
  private
    FId: Integer;
    FIdPessoa: Integer;
    FTipo: String;
    FCpfCnpj: String;
  public
    property Id: Integer read FId write FId;
    property IdPessoa: Integer read FIdPessoa write FIdPessoa;
    property Tipo: String read FTipo write FTipo;
    property CpfCnpj: String read FCpfCnpj write FCpfCnpj;
  end;

implementation

end.

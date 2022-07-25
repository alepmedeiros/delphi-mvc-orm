unit projetosimpleorm.model.entity.endereco;

interface

type
  TEndereco = class
  private
    FId: Integer;
    FIdPessoa: Integer;
    FLogradouro: String;
    FNumero: String;
    FComplemento: String;
    FCidade: String;
    FBairro: String;
    FEstado: String;
    FTipo: String;
  public
    property Id: Integer read FId write FId;
    property IdPessoa: Integer read FIdPessoa write FIdPessoa;
    property Logradouro: String read FLogradouro write FLogradouro;
    property Numero: String read FNumero write FNumero;
    property Complemento: String read FComplemento write FComplemento;
    property Cidade: String read FCidade write FCidade;
    property Bairro: String read FBairro write FBairro;
    property Estado: String read FEstado write FEstado;
    property Tipo: String read FTipo write FTipo;
  end;

implementation

end.

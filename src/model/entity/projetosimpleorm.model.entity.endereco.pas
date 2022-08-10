unit projetosimpleorm.model.entity.endereco;

interface

uses
  SimpleAttributes;

type
  [Tabela('ENDERECO')]
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
    [Campo('ID'), Pk, Autoinc]
    property Id: Integer read FId write FId;
    [Campo('ID_PESSOA'), Fk]
    property IdPessoa: Integer read FIdPessoa write FIdPessoa;
    [Campo('LOGRADOURO')]
    property Logradouro: String read FLogradouro write FLogradouro;
    [Campo('NUMERO')]
    property Numero: String read FNumero write FNumero;
    [Campo('COMPLEMENTO')]
    property Complemento: String read FComplemento write FComplemento;
    [Campo('CIDADE')]
    property Cidade: String read FCidade write FCidade;
    [Campo('BAIRRO')]
    property Bairro: String read FBairro write FBairro;
    [Campo('ESTADO')]
    property Estado: String read FEstado write FEstado;
    [Campo('TIPO')]
    property Tipo: String read FTipo write FTipo;
  end;

implementation

end.

unit projetosimpleorm.model.entity.enums;

interface

uses
  TypInfo;

type
  TTipoCliente = (JURIDICA, FISICA);
  TTipoEndereco = (COMERCIAL, RESIDENCIAL, CORRESPONDENCIA);

  TTipoClienteHelper = record helper for TTipoCLiente
    function ToString: String;
  end;

  TTipoEnderecoHelper = record helper for TTipoEndereco
    function ToString: String;
  end;

implementation

{ TTipoClienteHelper }

function TTipoClienteHelper.ToString: String;
begin
  Result := GetEnumName(TypeInfo(TTipoCliente), Integer(Self));
end;

{ TTipoEnderecoHelper }

function TTipoEnderecoHelper.ToString: String;
begin
  Result := GetEnumName(TypeInfo(TTipoEndereco), Integer(Self));
end;

end.

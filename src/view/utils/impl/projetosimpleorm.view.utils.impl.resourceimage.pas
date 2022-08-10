unit projetosimpleorm.view.utils.impl.resourceimage;

interface

uses
  Vcl.ExtCtrls, projetosimpleorm.view.utils.interfaces, System.Classes,
  Winapi.Windows;

type
  TResourceImage = class(TInterfacedObject, iImage)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iImage;
      function ResourceImage(aImage: TImage; aResource: String): iImage;
  end;

implementation

constructor TResourceImage.Create;
begin

end;

destructor TResourceImage.Destroy;
begin

  inherited;
end;

class function TResourceImage.New : iImage;
begin
  Result := Self.Create;
end;

function TResourceImage.ResourceImage(aImage: TImage;
  aResource: String): iImage;
var
  lResource: TResourceStream;
begin
  lResource:= TResourceStream.Create(HInstance, aResource, RT_RCDATA);
  try
    aImage.Picture.LoadFromStream(lResource);
  finally
    lResource.Free;
  end;
end;

end.

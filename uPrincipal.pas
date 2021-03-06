unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses uTransporte, uAviao, uCarro;

procedure TForm2.Button1Click(Sender: TObject);
var
transp: Transporte;
car: carro;
avi: aviao;
begin
try
  car := carro.Create;
  car.Setnome('Porche 911');
  car.move('100');
  avi := aviao.Create;
  avi.Setnome('Boeing 747');
  avi.move('2500');
finally
  FreeAndNil(car);
  FreeAndNil(avi);
end;
end;

end.

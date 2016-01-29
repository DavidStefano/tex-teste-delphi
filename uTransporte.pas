unit uTransporte;

interface

uses
Vcl.Dialogs, system.Classes;

type Transporte = class

private

Fnome   :String;

Fmetros :String;



protected

public

procedure Setnome(const Value: String);

procedure move(const Value: String);

Constructor Create;

Destructor  Destroy; Override;

property nome :String read Fnome write Setnome;

property metros :String read Fmetros write move;

end;

implementation

{ Transporte }



constructor Transporte.Create;
begin

end;

destructor Transporte.Destroy;
begin

  inherited;
end;

procedure Transporte.move(const Value: String);
begin
  Fmetros := Value;
  ShowMessage(nome + ' moveu ' + metros + ' m');
end;

procedure Transporte.Setnome(const Value: String);
begin
  Fnome := Value;
end;

end.

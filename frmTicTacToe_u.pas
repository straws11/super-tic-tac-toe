unit frmTicTacToe_u;
//Dylan Swarts
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Imaging.jpeg, Vcl.StdCtrls, Vcl.ComCtrls, Math;

type
  TfrmTicTacToe = class(TForm)
    pnlGameBoard: TPanel;
    img1: TImage;
    img2: TImage;
    img3: TImage;
    img4: TImage;
    img5: TImage;
    img6: TImage;
    img7: TImage;
    img8: TImage;
    img9: TImage;
    img10: TImage;
    img11: TImage;
    img12: TImage;
    img13: TImage;
    img14: TImage;
    img15: TImage;
    img16: TImage;
    lblPlayerTurn: TLabel;
    btnCheck: TButton;
    btnNewGame: TButton;
    pnlControls: TPanel;
    imgBoard: TImage;
    rgpGamemode: TRadioGroup;
    pnlHelp: TPanel;
    lblNotice: TLabel;
    pnlGameName: TPanel;
    lblGameName: TLabel;
    redInfo: TRichEdit;
    procedure img1DblClick(Sender: TObject);
    procedure img2DblClick(Sender: TObject);
    procedure btnCheckClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure img3DblClick(Sender: TObject);
    procedure img4DblClick(Sender: TObject);
    procedure img5DblClick(Sender: TObject);
    procedure img6DblClick(Sender: TObject);
    procedure img7DblClick(Sender: TObject);
    procedure img8DblClick(Sender: TObject);
    procedure img9DblClick(Sender: TObject);
    procedure img10DblClick(Sender: TObject);
    procedure img11DblClick(Sender: TObject);
    procedure img12DblClick(Sender: TObject);
    procedure img13DblClick(Sender: TObject);
    procedure img14DblClick(Sender: TObject);
    procedure img15DblClick(Sender: TObject);
    procedure img16DblClick(Sender: TObject);
    procedure btnNewGameClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTicTacToe: TfrmTicTacToe;

implementation
const
sP1Piece = 'download.jpg';
sP2Piece = 'download1.png';
var
arrGBoard : array[1..16] of integer;
arrPattern : array[1..4] of integer;
arrRandom : array[1..15] of integer; //this would hold the position names of all open slots, since human starts always, never need more than 15 slots
sP1Name, sP2Name, sCurPiece, sCurPlayer, sWinner : string;
iCounter, iCurNum, iOtherNum, iCompMove, iPieces : integer;
bHadClicked, bCompPlay, bGameWon  : bool;
{$R *.dfm}


procedure TfrmTicTacToe.btnCheckClick(Sender: TObject);
var
i, j, iMCounter, iOCounter, iSlotCounter: integer; //iMCounter is the matching counter, counts all matching piece types
begin
//below program is: checking for winner, computer playing if needed, switching players.
if (sCurPlayer = sP1Name) AND (bHadClicked = False) then
  showmessage('Please make a move first!')
else
begin
for i := 1 to 4 do   //this clears the array so that it doesn't get used again if not needed
  arrPattern[i]:= 0;
iMCounter:=0;
iOCounter:=0;
iSlotCounter:=0;
lblNotice.Visible:=False;
j:= 1; //this is a counter I need to append items into an array at the randomrange
iCompMove:=0;
//this whole part all checks if someone wins and does some necessary parts for computer to play if needed
for i := 1 to 4 do
  if iCurNum = arrGBoard[i] then
    inc(iMCounter);
for i := 1 to 4 do
  if iOtherNum = arrGBoard[i] then
    inc(iOCounter);
if iMCounter = 4 then sWinner:= sCurPlayer
else if (iMCounter = 3) AND (iMCounter-iOCounter = 3) then
  begin
    arrPattern[1]:= 1;
    arrPattern[2]:= 2;
    arrPattern[3]:= 3;
    arrPattern[4]:= 4;
  end;
iMCounter:=0;
iOCounter:=0;

for i := 1 to 4 do
  if iCurNum = arrGBoard[i+4] then
    inc(iMCounter);
for i := 1 to 4 do
  if iOtherNum = arrGBoard[i+4] then
    inc(iOCounter);
if iMCounter = 4 then sWinner:= sCurPlayer
else if (iMCounter = 3) AND (iMCounter-iOCounter = 3) then
  begin
    arrPattern[1]:= 5;
    arrPattern[2]:= 6;
    arrPattern[3]:= 7;
    arrPattern[4]:= 8;
  end;
iMCounter:=0;
iOCounter:=0;

for i := 1 to 4 do
  if iCurNum = arrGBoard[i+8] then
    inc(iMCounter);
for i := 1 to 4 do
  if iOtherNum = arrGBoard[i+8] then
    inc(iOCounter);
if iMCounter = 4 then sWinner:= sCurPlayer
else if (iMCounter = 3) AND (iMCounter-iOCounter = 3) then
  begin
    arrPattern[1]:= 9;
    arrPattern[2]:= 10;
    arrPattern[3]:= 11;
    arrPattern[4]:= 12;
  end;
iMCounter:=0;
iOCounter:=0;

for i := 1 to 4 do
  if iCurNum = arrGBoard[i+12] then
    inc(iMCounter);
for i := 1 to 4 do
  if iOtherNum = arrGBoard[i+12] then
    inc(iOCounter);
if iMCounter = 4 then sWinner:= sCurPlayer
else if (iMCounter = 3) AND (iMCounter-iOCounter = 3) then
  begin
    arrPattern[1]:= 13;
    arrPattern[2]:= 14;
    arrPattern[3]:= 15;
    arrPattern[4]:= 16;
  end;
iMCounter:=0;
iOCounter:=0;

for i := 1 to 4 do
  if iCurNum = arrGBoard[i*4-3] then
    inc(iMCounter);
for i := 1 to 4 do
  if iOtherNum = arrGBoard[i*4-3] then
    inc(iOCounter);
if iMCounter = 4 then sWinner:= sCurPlayer
else if (iMCounter = 3) AND (iMCounter-iOCounter = 3) then
  begin
    arrPattern[1]:= 1;
    arrPattern[2]:= 5;
    arrPattern[3]:= 9;
    arrPattern[4]:= 13;
  end;
iMCounter:=0;
iOCounter:=0;

for i := 1 to 4 do
  if iCurNum = arrGBoard[i*4-2] then
    inc(iMCounter);
for i := 1 to 4 do
  if iOtherNum = arrGBoard[i*4-2] then
    inc(iOCounter);
if iMCounter = 4 then sWinner:= sCurPlayer
else if (iMCounter = 3) AND (iMCounter-iOCounter = 3) then
  begin
    arrPattern[1]:= 2;
    arrPattern[2]:= 6;
    arrPattern[3]:= 10;
    arrPattern[4]:= 14;
  end;
iMCounter:=0;
iOCounter:=0;

for i := 1 to 4 do
  if iCurNum = arrGBoard[i*4-1] then
    inc(iMCounter);
for i := 1 to 4 do
  if iOtherNum = arrGBoard[i*4-1] then
    inc(iOCounter);
if iMCounter = 4 then sWinner:= sCurPlayer
else if (iMCounter = 3) AND (iMCounter-iOCounter = 3) then
  begin
    arrPattern[1]:= 3;
    arrPattern[2]:= 7;
    arrPattern[3]:= 11;
    arrPattern[4]:= 15;
  end;
iMCounter:=0;
iOCounter:=0;

for i := 1 to 4 do
  if iCurNum = arrGBoard[i*4] then
    inc(iMCounter);
for i := 1 to 4 do
  if iOtherNum = arrGBoard[i*4] then
    inc(iOCounter);
if iMCounter = 4 then sWinner:= sCurPlayer
else if (iMCounter = 3) AND (iMCounter-iOCounter = 3) then
  begin
    arrPattern[1]:= 4;
    arrPattern[2]:= 8;
    arrPattern[3]:= 12;
    arrPattern[4]:= 16;
  end;
iMCounter:=0;
iOCounter:=0;

for i := 1 to 4 do
  if iCurNum = arrGBoard[i*5-4] then
    inc(iMCounter);
for i := 1 to 4 do
  if iOtherNum = arrGBoard[i*5-4] then
    inc(iOCounter);
if iMCounter = 4 then sWinner:= sCurPlayer
else if (iMCounter = 3) AND (iMCounter-iOCounter = 3) then
  begin
    arrPattern[1]:= 1;
    arrPattern[2]:= 6;
    arrPattern[3]:= 11;
    arrPattern[4]:= 16;
  end;
iMCounter:=0;
iOCounter:=0;

for i := 1 to 4 do
  if iCurNum = arrGBoard[i*3+1] then
    inc(iMCounter);
for i := 1 to 4 do
  if iOtherNum = arrGBoard[i*3+1] then
    inc(iOCounter);
if iMCounter = 4 then sWinner:= sCurPlayer
else if (iMCounter = 3) AND (iMCounter-iOCounter = 3) then
  begin
    arrPattern[1]:= 4;
    arrPattern[2]:= 7;
    arrPattern[3]:= 10;
    arrPattern[4]:= 13;
  end;
iMCounter:=0;
iOCounter:=0;
//2x2 test below, can do both checking and computer moving  --DID NOT USE INTENTIONALLY--
{arrS1[1]:= arrGBoard[1];
arrS1[2]:= arrGBoard[2];
arrS1[3]:= arrGBoard[5];
arrS1[4]:= arrGBoard[6];
for i := 1 to 4 do
  if iCurNum = arrS1[i] then
    inc(iMCounter);
for i := 1 to 4 do
  if iOtherNum = arrS1[i] then
    inc(iOCounter);
if iMCounter = 4 then winner:= sCurPlayer
else if iMCounter = 3 then
  begin
    for i := 1 to 4 do
      arrPattern[i]:= arrS1[i];
  end;
iMCounter:=0;
iOCounter:=0;}

//The below are all the extra rules, a 2x2 square of pieces is also a win.
if iCurNum = arrGBoard[1] AND arrGBoard[2] AND arrGBoard[5] AND arrGBoard[6] then sWinner:= sCurPlayer;
if iCurNum = arrGBoard[3] AND arrGBoard[4] AND arrGBoard[7] AND arrGBoard[8] then sWinner:= sCurPlayer;
if iCurNum = arrGBoard[9] AND arrGBoard[10] AND arrGBoard[13] AND arrGBoard[14] then sWinner:= sCurPlayer;
if iCurNum = arrGBoard[11] AND arrGBoard[12] AND arrGBoard[15] AND arrGBoard[16] then sWinner:= sCurPlayer;
if iCurNum = arrGBoard[2] AND arrGBoard[3] AND arrGBoard[6] AND arrGBoard[7] then sWinner:= sCurPlayer;
if iCurNum = arrGBoard[7] AND arrGBoard[8] AND arrGBoard[11] AND arrGBoard[12] then sWinner:= sCurPlayer;
if iCurNum = arrGBoard[10] AND arrGBoard[11] AND arrGBoard[14] AND arrGBoard[15] then sWinner:= sCurPlayer;
if iCurNum = arrGBoard[5] AND arrGBoard[6] AND arrGBoard[9] AND arrGBoard[10] then sWinner:= sCurPlayer;
if iCurNum = arrGBoard[6] AND arrGBoard[7] AND arrGBoard[10] AND arrGBoard[11] then sWinner:= sCurPlayer;

if not (sWinner = '') then
  begin
  showmessage('The winner is: ' + sWinner);
  bGameWon:= True;
  end;//TAKE NOTE! put all below code into an'if', because player shouldn't switch if someone won.
if bGameWon = True then
  lblPlayerTurn.Caption:= sCurPlayer + ' won!'
else if iPieces = 16 then
  showmessage('The game is tied!')
else
begin
//this switches between the two players
inc(iCounter);
if iCounter mod 2 = 0 then
  begin
    sCurPlayer:= sP1Name;
    sCurPiece:= sP1Piece;
    iCurNum:= 1;
    iOtherNum:= 2;
  end
else
  begin
    sCurPlayer:= sP2Name;
    sCurPiece:= sP2Piece;
    iCurNum:= 2;
    iOtherNum:= 1;
  end;
lblPlayerTurn.Caption:= sCurPlayer + '''s turn!';
bHadClicked:= False;


//all of this should now be the computer playing if it is playing
if (bCompPlay = True) AND (sCurPlayer = sP2Name) then
  begin
    lblNotice.Visible:=True;
    bHadClicked:= True;         //just to prevent the player from playing a circle piece
    if arrPattern[1] > 0 then
      begin
        for i := 1 to 4 do
          begin
            if arrGBoard[arrPattern[i]] = 0 then
                iCompMove:= arrPattern[i]; //knows what position to play if human is about to win next move
          end;
      end;
      if iCompMove = 0 then                                     //from here
        begin                                                  //generates a
          for i := 1 to 16 do                                  //random number
            if arrGBoard[i] = 0 then                             //when no specific
              begin                                            //move is required by
                inc(iSlotCounter);                             //the computer
                arrRandom[j]:= i;                              //it uses the empty
                inc(j);                                        //slots to calculate this
              end;
          iCompMove:= arrRandom[randomrange(1,iSlotCounter+1)];
        end;
      sleep(500);
      bHadClicked:= False;
      case iCompMove of             //plays correct position, whether it is the random gen or specific.
        1 : begin
              img1.Picture.LoadFromFile(sCurPiece);
              arrGBoard[1]:= iCurNum;
            end;
        2 : begin
              img2.Picture.LoadFromFile(sCurPiece);
              arrGBoard[2]:= iCurNum;
            end;
        3 : begin
              img3.Picture.LoadFromFile(sCurPiece);
              arrGBoard[3]:= iCurNum;
            end;
        4 : begin
              img4.Picture.LoadFromFile(sCurPiece);
              arrGBoard[4]:= iCurNum;
            end;
        5 : begin
              img5.Picture.LoadFromFile(sCurPiece);
              arrGBoard[5]:= iCurNum;
            end;
        6 : begin
              img6.Picture.LoadFromFile(sCurPiece);
              arrGBoard[6]:= iCurNum;
            end;
        7 : begin
              img7.Picture.LoadFromFile(sCurPiece);
              arrGBoard[7]:= iCurNum;
            end;
        8 : begin
              img8.Picture.LoadFromFile(sCurPiece);
              arrGBoard[8]:= iCurNum;
            end;
        9 : begin
              img9.Picture.LoadFromFile(sCurPiece);
              arrGBoard[9]:= iCurNum;
            end;
        10 :begin
              img10.Picture.LoadFromFile(sCurPiece);
              arrGBoard[10]:= iCurNum;
            end;
        11 :begin
              img11.Picture.LoadFromFile(sCurPiece);
              arrGBoard[11]:= iCurNum;
            end;
        12 :begin
              img12.Picture.LoadFromFile(sCurPiece);
              arrGBoard[12]:= iCurNum;
            end;
        13 :begin
              img13.Picture.LoadFromFile(sCurPiece);
              arrGBoard[13]:= iCurNum;
            end;
        14 :begin
              img14.Picture.LoadFromFile(sCurPiece);
              arrGBoard[14]:= iCurNum;
            end;
        15 :begin
              img15.Picture.LoadFromFile(sCurPiece);
              arrGBoard[15]:= iCurNum;
            end;
        16 :begin
              img16.Picture.LoadFromFile(sCurPiece);
              arrGBoard[16]:= iCurNum;
            end;
      end;
  end;
end;
end;
inc(iPieces);
end;


procedure TfrmTicTacToe.btnNewGameClick(Sender: TObject);
var
i : integer;
begin
//resets the pictures.
img1.Picture:=nil;
img2.Picture:=nil;
img3.Picture:=nil;
img4.Picture:=nil;
img5.Picture:=nil;
img6.Picture:=nil;
img7.Picture:=nil;
img8.Picture:=nil;
img9.Picture:=nil;
img10.Picture:=nil;
img11.Picture:=nil;
img12.Picture:=nil;
img13.Picture:=nil;
img14.Picture:=nil;
img15.Picture:=nil;
img16.Picture:=nil;
for i := 1 to 16 do
  arrGBoard[i]:=0;
//determines if 2 or 1 player is playing and asks for names accordingly
if rgpGamemode.ItemIndex = 0 then
  begin
  sP1Name:= inputbox('Start Game','Enter P1 Name','');
  sP2Name:= inputbox('Start Game','Enter P2 Name','');
  bCompPlay:=False;
  end
else if rgpGamemode.ItemIndex = 1 then
  begin
  sP1Name:= inputbox('Start Game','Enter P1 Name','');
  sP2Name:= 'Computer';
  bCompPlay:= True;
  end
else showmessage('Please select a gamemode!');
//clears and resets variables so that a new game can be played without issues
rgpGamemode.ItemIndex:=-1;
sCurPiece:= sP1Piece;
sCurPlayer:= sP1Name;
iCurNum:= 1;
lblPlayerTurn.Caption:= sP1Name + '''s turn!';
bHadClicked:=False;
sWinner:='';
bGameWon:=False;
iPieces:=0;
end;

procedure TfrmTicTacToe.FormActivate(Sender: TObject);
begin
//necessary variable initialization, custom colors added to elements
bCompPlay:= False;
sWinner:= '';
iCounter:= 0;
iPieces:= 0;
frmTicTacToe.Color:= $ED9564;
lblPlayerTurn.Font.Color:= $8B0000;
end;

//all belowe is the repetitive code that fills array positions, and loads correct images, also checks that players can't make more than 1 move.
procedure TfrmTicTacToe.img1DblClick(Sender: TObject);
begin
if (arrGBoard[1] = 0) AND (bHadClicked = False) then
  begin
    img1.Picture.LoadFromFile(sCurPiece);
    arrGBoard[1]:= iCurNum;
    bHadClicked:= True;
  end;
end;

procedure TfrmTicTacToe.img2DblClick(Sender: TObject);
begin
if (arrGBoard[2] = 0) AND (bHadClicked = False) then
  begin
    img2.Picture.LoadFromFile(sCurPiece);
    arrGBoard[2]:= iCurNum;
    bHadClicked:= True;
  end;
end;

procedure TfrmTicTacToe.img3DblClick(Sender: TObject);
begin
if (arrGBoard[3] = 0) AND (bHadClicked = False) then
  begin
    img3.Picture.LoadFromFile(sCurPiece);
    arrGBoard[3]:= iCurNum;
    bHadClicked:= True;
  end;
end;

procedure TfrmTicTacToe.img4DblClick(Sender: TObject);
begin
if (arrGBoard[4] = 0) AND (bHadClicked = False) then
  begin
    img4.Picture.LoadFromFile(sCurPiece);
    arrGBoard[4]:= iCurNum;
    bHadClicked:= True;
  end;
end;

procedure TfrmTicTacToe.img5DblClick(Sender: TObject);
begin
if (arrGBoard[5] = 0) AND (bHadClicked = False) then
  begin
    img5.Picture.LoadFromFile(sCurPiece);
    arrGBoard[5]:= iCurNum;
    bHadClicked:= True;
  end;
end;

procedure TfrmTicTacToe.img6DblClick(Sender: TObject);
begin
if (arrGBoard[6] = 0) AND (bHadClicked = False) then
  begin
    img6.Picture.LoadFromFile(sCurPiece);
    arrGBoard[6]:= iCurNum;
    bHadClicked:= True;
  end;
end;

procedure TfrmTicTacToe.img7DblClick(Sender: TObject);
begin
if (arrGBoard[7] = 0) AND (bHadClicked = False) then
  begin
    img7.Picture.LoadFromFile(sCurPiece);
    arrGBoard[7]:= iCurNum;
    bHadClicked:= True;
  end;
end;

procedure TfrmTicTacToe.img8DblClick(Sender: TObject);
begin
if (arrGBoard[8] = 0) AND (bHadClicked = False) then
  begin
    img8.Picture.LoadFromFile(sCurPiece);
    arrGBoard[8]:= iCurNum;
    bHadClicked:= True;
  end;
end;

procedure TfrmTicTacToe.img9DblClick(Sender: TObject);
begin
if (arrGBoard[9] = 0) AND (bHadClicked = False) then
  begin
    img9.Picture.LoadFromFile(sCurPiece);
    arrGBoard[9]:= iCurNum;
    bHadClicked:= True;
  end;
end;

procedure TfrmTicTacToe.img10DblClick(Sender: TObject);
begin
if (arrGBoard[10] = 0) AND (bHadClicked = False) then
  begin
    img10.Picture.LoadFromFile(sCurPiece);
    arrGBoard[10]:= iCurNum;
    bHadClicked:= True;
  end;
end;

procedure TfrmTicTacToe.img11DblClick(Sender: TObject);
begin
if (arrGBoard[11] = 0) AND (bHadClicked = False) then
  begin
    img11.Picture.LoadFromFile(sCurPiece);
    arrGBoard[11]:= iCurNum;
    bHadClicked:= True;
  end;
end;

procedure TfrmTicTacToe.img12DblClick(Sender: TObject);
begin
if (arrGBoard[12] = 0) AND (bHadClicked = False) then
  begin
    img12.Picture.LoadFromFile(sCurPiece);
    arrGBoard[12]:= iCurNum;
    bHadClicked:= True;
  end;
end;

procedure TfrmTicTacToe.img13DblClick(Sender: TObject);
begin
if (arrGBoard[13] = 0) AND (bHadClicked = False) then
  begin
    img13.Picture.LoadFromFile(sCurPiece);
    arrGBoard[13]:= iCurNum;
    bHadClicked:= True;
  end;
end;

procedure TfrmTicTacToe.img14DblClick(Sender: TObject);
begin
if (arrGBoard[14] = 0) AND (bHadClicked = False) then
  begin
    img14.Picture.LoadFromFile(sCurPiece);
    arrGBoard[14]:= iCurNum;
    bHadClicked:= True;
  end;
end;

procedure TfrmTicTacToe.img15DblClick(Sender: TObject);
begin
if (arrGBoard[15] = 0) AND (bHadClicked = False) then
  begin
    img15.Picture.LoadFromFile(sCurPiece);
    arrGBoard[15]:= iCurNum;
    bHadClicked:= True;
  end;
end;

procedure TfrmTicTacToe.img16DblClick(Sender: TObject);
begin
if (arrGBoard[16] = 0) AND (bHadClicked = False) then
  begin
    img16.Picture.LoadFromFile(sCurPiece);
    arrGBoard[16]:= iCurNum;
    bHadClicked:= True;
  end;
end;

end.

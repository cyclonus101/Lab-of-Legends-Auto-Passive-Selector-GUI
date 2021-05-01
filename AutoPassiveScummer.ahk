#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance, force

; May1 /21 
;1.0 Released to github

;do not edit below

IconLocationsListX1 := [621,1247,1873]
IconLocationsListX2 := [577,577,577]
IconLocationsListY1 := [817,1443,2069]
IconLocationsListY2 := [790,790,790]

Icon1:=1
Icon2:=2
Icon3:=3

PassiveListX := [1000,1600,2200]
PassiveY := 700

Passive1 := 1
Passive2 := 2
Passive3 := 3

ButtonListX := [1565,1560,2170,1470]
ButtonListY := [1310,1230,1350,800]

ChampConfirm := 1
RunConfirm   := 2 
RunRetire    := 3 
RunConfirmRetire  := 4

ChampListX :=   [870,1200,1560,1900,2250,870,1200,1560,1900,2250]
ChampListY :=   [600,600,600,600,600,1030,1030,1030,1030,1030]	

;Resolution := [
                    ;8x6|10x7|11x8|11x6|12x7|12x7|12x8|12x9|12x10|13x7|13x7|14x9|16x9|16x10|16x12|16x10|17x9|19x10|19x12|19x14|20x15|25x14||25x16|38x21|
;ResolutionScaleX := [.31,.40, .45, .46, .5,  .50,  .50, .50, .50, .53, .53, .55, .63,  .63,  .63,  .65,  .69, .75,  .75,  0.75, 0.80,  1,    1.0  ,1.5]
;ResolutionScaleY := [.42,.53, .60, .46, .5,  .53,  .55, .66, .71, .53, .53, .63, .63,  .71,  .73,  .83,  .68, .75,  .83,  1.00, 1.06,  1,    1.1  ,1.5]

ResolutionScaleX := [.75, 1]
ResolutionScaleY := [.75, 1]

;IconList :=  ["blackmarket-icon-1440.bmp","cantstopwontstop-icon-1440.bmp","domination-icon-1440.bmp","dragonrage-icon-1440.bmp","duelist-icon-1440.bmp","emptymind-icon-1440.bmp","enfeeblingstrike-icon-1440.bmp","evolution-icon-1440.bmp","flexiblegameplan-icon-1440.bmp","grit-icon-1440.bmp","highereducation-icon-1440.bmp","immortality-icon-1440.bmp","lilbuddies-icon-1440.bmp","manaflow-icon-1440.bmp","naturesfury-icon-1440.bmp","outofthegates-icon-1440.bmp","sharedbounty-icon-1440.bmp","sorcery-icon-1440.bmp","spellslinger-icon-1440.bmp","thebestdefense-icon-1440.bmp","triferianmight-icon-1440.bmp","wildcreation-icon-1440.bmp","yippgenius-icon-1440.bmp"]
IconListWQHD :=  ["icons-1440\blackmarket-icon-1440.bmp","icons-1440\cantstopwontstop-icon-1440.bmp","icons-1440\domination-icon-1440.bmp","icons-1440\dragonrage-icon-1440.bmp","icons-1440\duelist-icon-1440.bmp","icons-1440\emptymind-icon-1440.bmp","icons-1440\enfeeblingstrike-icon-1440.bmp","icons-1440\evolution-icon-1440.bmp","icons-1440\flexiblegameplan-icon-1440.bmp","icons-1440\grit-icon-1440.bmp","icons-1440\highereducation-icon-1440.bmp","icons-1440\immortality-icon-1440.bmp","icons-1440\lilbuddies-icon-1440.bmp","icons-1440\manaflow-icon-1440.bmp","icons-1440\naturesfury-icon-1440.bmp","icons-1440\outofthegates-icon-1440.bmp","icons-1440\sharedbounty-icon-1440.bmp","icons-1440\sorcery-icon-1440.bmp","icons-1440\spellslinger-icon-1440.bmp","icons-1440\thebestdefense-icon-1440.bmp","icons-1440\triferianmight-icon-1440.bmp","icons-1440\wildcreation-icon-1440.bmp","icons-1440\yippgenius-icon-1440.bmp"]
IconListFHD :=  ["icons-1080\blackmarket-icon-1080.bmp","icons-1080\cantstopwontstop-icon-1080.bmp","icons-1080\domination-icon-1080.bmp","icons-1080\dragonrage-icon-1080.bmp","icons-1080\duelist-icon-1080.bmp","icons-1080\emptymind-icon-1080.bmp","icons-1080\enfeeblingstrike-icon-1080.bmp","icons-1080\evolution-icon-1080.bmp","icons-1080\flexiblegameplan-icon-1080.bmp","icons-1080\grit-icon-1080.bmp","icons-1080\highereducation-icon-1080.bmp","icons-1080\immortality-icon-1080.bmp","icons-1080\lilbuddies-icon-1080.bmp","icons-1080\manaflow-icon-1080.bmp","icons-1080\naturesfury-icon-1080.bmp","icons-1080\outofthegates-icon-1080.bmp","icons-1080\sharedbounty-icon-1080.bmp","icons-1080\sorcery-icon-1080.bmp","icons-1080\spellslinger-icon-1080.bmp","icons-1080\thebestdefense-icon-1080.bmp","icons-1080\triferianmight-icon-1080.bmp","icons-1080\wildcreation-icon-1080.bmp","icons-1080\yippgenius-icon-1080.bmp"]

Aph:=1
Heim:=2
Lul:=3
Luc:=4
Azir:=5
Riv:=6
Bra:=7
MF:=8
Hec:=9
Tali:=10

;
DelayResolution := 50

currentattempts := 0
totalattempts := 0
totalfinds := 0
;do not edit above

;--------------------------------------------------------------------------------------------------
; variables
;--------------------------------------------------------------------------------------------------
;file location to icons
myPassive := "icons-1080\blackmarket-icon-1080.bmp"
;which champion you want to pick, choose from the above list
Champ   := Aph
;helps with image recogniztion
imageVariation :=  165 ;increase if icon isn't working, max 255
;
Resolution := 1 ; 1= 1080, 2=1440
Delay := 0


;--------------------------------------------------------------------------------------------------
; GUI Stuff
;--------------------------------------------------------------------------------------------------

Menu, Tray,  Icon, braum.ico

Gui, -dpiscale
Gui, Add, Picture, x0 y0, labsbackground.png
Gui, Font, Times New Roman, s30, cwhite

Gui, add , DropDownList, xm+135 y205 w120 AltSubmit vDelay gSubmitDelay, 50ms||100ms|150ms|200ms|250ms|300ms

Gui, add , DropDownList, xm y165 w140 AltSubmit vResolution gSubmitResolution , 1920x1080||2560x1440|

;800x600|1024x768|1152x864|1176x664|1280x720|1280x768|1280x800|1280x960|1280x1024|1360x768|1366x768|1440x900|1600x900|1600x1024|1600x1200|1680x1050|1768x992|1920x1080|1920x1200|1920x1440|2048x1536|2560x1440||2560x1600|3840x2160|

Gui, add , DropDownList, xm y205 w125 AltSubmit vChamp gSubmitChamp , Aphelios||Heimerdinger|Lulu|Lucian|Azir|Riven|Braum|Miss Fortune|Hecarim|Taliyah|


Gui, add , DropDownList, xm y245 w230 AltSubmit vPassive gSubmitPassive , Black Market Discount||Can't Stop; Won't Stop|Domination|Dragon's Rage|Duelist|Empty Mind|Enfeebling Strike|Evolution|Flexible Gameplan|Grit|Higher Education|Immortality|Lil' Buddies|Manaflow|Nature's Revenge|Out the Gates|Share the Bounty|Sorcery|Spellslinger|The Best Defense...|Trifarian Might|Wild Inspiration|Yipp's Genius|
Gui, -AlwaysOntop
Gui, Show, x0 y0 w633 h302, Labs Auto Selector GUI Edition
return


GuiClose:
ExitApp

SubmitDelay:
	Gui,+OwnDialogs
	Gui,Submit,NoHide
	;msgbox,% Champ
	return
	
	
SubmitChamp:
	Gui,+OwnDialogs
	Gui,Submit,NoHide
	;msgbox,% Champ
	return
	
SubmitPassive:
	Gui,+OwnDialogs
	Gui,Submit,NoHide
	
	if(Resolution==1)
	myPassive := IconListFHD[Passive]
	if(Resolution==2)
	myPassive := IconListWQHD[Passive]
	
	;msgbox,% myPassive
	return
	
SubmitResolution:
	Gui,+OwnDialogs
	Gui,Submit,NoHide	
	;msgbox,% Resolution
	return

;--------------------------------------------------------------------------------------------------
; image searching
;--------------------------------------------------------------------------------------------------

^m::



;If image search fails with error 2 then you did setup the file path correctly
ImageSearch, FoundX, FoundY, 0,0, 0,0, %myPassive%
	if(ErrorLevel=2)
	{
		MsgBox, Path to Icon Image Not Found
		ExitApp
		Return
	}

while(true)
{	
	
	
	
	MouseClick, left, ChampListX[Champ]*ResolutionScaleX[Resolution], ChampListY[Champ]*ResolutionScaleY[Resolution] ;click champion
	sleep 200
	
	MouseClick, left, ButtonListX[ChampConfirm]*ResolutionScaleX[Resolution], ButtonListY[ChampConfirm]*ResolutionScaleY[Resolution] ;accept champion
	sleep 1150+(Delay*DelayResolution)	

	;Image Search First icon
	if(Resolution==1)
	ImageSearch, FoundX, FoundY, 466,432, 616,592, *%imageVariation% %myPassive%	
	else if(Resolution==2)
	ImageSearch, FoundX, FoundY, 621,577, 817,790, *%imageVariation% %myPassive%	
		
		if(ErrorLevel = 0) ;if match, then reset current attempt counter and start run
		{
			MouseClick, left, PassiveListX[Passive1]*ResolutionScaleX[Resolution], PassiveY*ResolutionScaleY[Resolution] 
			sleep  200
			MouseClick, left, ButtonListX[RunConfirm]*ResolutionScaleX[Resolution],ButtonListY[RunConfirm]*ResolutionScaleY[Resolution] 
			;MsgBox, Total Attempts %totalattempts% `n`rCurrent Attempts %currentattempts% `n`rFound Power at Icon 1
			
			
			currentattempts=0
			
			totalfinds++
			Gui, Add, Text, xm+100 y130 w40, %totalfinds%
			totalattempts++
			Gui, Add, Text, xm y130 w40, %totalattempts%
			
			
			
			return
		}
		else if(ErrorLevel = 1) ; if no match then inc counters
		{
			currentattempts++
			totalattempts++
		}
		
		
	;Image Search second icon
	
	if(Resolution==1)
	ImageSearch, FoundX, FoundY, 935,432,1085,592, *%imageVariation% %myPassive% 
	else if(Resolution==2)
	ImageSearch, FoundX, FoundY, 1247,577, 1443,790, *%imageVariation% %myPassive% 
	
	if(ErrorLevel = 0)
		{
			MouseClick, left, PassiveListX[Passive2]*ResolutionScaleX[Resolution], PassiveY*ResolutionScaleY[Resolution] 
			sleep  200
			MouseClick, left, ButtonListX[RunConfirm]*ResolutionScaleX[Resolution],ButtonListY[RunConfirm]*ResolutionScaleY[Resolution] 
			;MsgBox, Total Attempts %totalattempts% `n`rCurrent Attempts %currentattempts% `n`rFound Power at Icon 2
			
			
			currentattempts=0			
			
			totalattempts++
			Gui, Add, Text, xm y130 w40, %totalattempts%	
			
			totalfinds++
			Gui, Add, Text, xm+100 y130 w40, %totalfinds%		
			
			return
		}
		else if(ErrorLevel = 1)
		{
			currentattempts++
			totalattempts++
		}
		
	;Image Search second icon	
	if(Resolution==1)
	ImageSearch, FoundX, FoundY, 1405,432,1555,592, *%imageVariation% %myPassive% 
	else if(Resolution==2)
	ImageSearch, FoundX, FoundY, 1873,577, 2069,790, *%imageVariation% %myPassive% 
	
	if(ErrorLevel = 0)
		{
			MouseClick, left, PassiveListX[Passive3]*ResolutionScaleX[Resolution], PassiveY*ResolutionScaleY[Resolution] 
			sleep  200
			MouseClick, left, ButtonListX[RunConfirm]*ResolutionScaleX[Resolution],ButtonListY[RunConfirm]*ResolutionScaleY[Resolution]  
			;MsgBox, Total Attempts %totalattempts% `n`rCurrent Attempts %currentattempts% `n`rFound Power at Icon 3
			
			currentattempts=0		
			
			totalattempts++
			Gui, Add, Text, xm y130 w40, %totalattempts%			
			
			totalfinds++
			Gui, Add, Text, xm+100 y130 w40, %totalfinds%		
			
			return
		}
		else if(ErrorLevel = 1)
		{
			currentattempts++
			totalattempts++
		}

	;if passive not found then retire run and start again
	MouseClick, left, ButtonListX[RunRetire]*ResolutionScaleX[Resolution],ButtonListY[RunRetire]*ResolutionScaleY[Resolution]  ;retire
	sleep 250
	
	MouseClick, left, ButtonListX[RunConfirmRetire]*ResolutionScaleX[Resolution],ButtonListY[RunConfirmRetire]*ResolutionScaleY[Resolution]  ;accept retire
	sleep 1200+(Delay*DelayResolution)	
}


^p::
Pause
return

^x::ExitApp

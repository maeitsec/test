function inV`okE`-BLoodH`Ou`ND
{
    

    [CmdletBinding(PositiONAlbindIng = ${f`A`LsE})]
    param(
        [Alias("c")]
        [String[]]
        ${COlLEctIo`NMEt`Ho`Ds} = [String[]]@(("{1}{2}{0}"-f 'lt','De','fau')),

        [Alias("d")]
        [String]
        ${DO`m`AIN},
        
        [Alias("s")]
        [Switch]
        ${Se`A`RcHFo`REsT},

        [Switch]
        ${S`T`EAlTh},

        [String]
        ${L`dAP`FILtEr},

        [String]
        ${DisTiN`g`Ui`sHeDNAMe},

        [String]
        ${Com`Pu`TerfI`le},

        [ValidateScript({ .("{2}{1}{0}" -f 'th',("{1}{0}"-f 'a',("{1}{0}" -f '-P','st')),'Te') -Path ${_} })]
        [String]
        ${o`UTPUT`di`R`ecTory} = $( .("{2}{3}{0}{1}"-f 't','ion',("{1}{0}"-f ("{1}{0}"-f 't-Loc','e'),'G'),'a') ),

        [ValidateNotNullOrEmpty()]
        [String]
        ${O`U`TputPRE`F`iX},

        [String]
        ${cachE`N`AmE},

        [Switch]
        ${meM`CaC`He},

        [Switch]
        ${reBuIl`dC`A`chE},

        [Switch]
        ${rAn`DO`M`FIleNaM`eS},

        [String]
        ${ZIPfI`lEna`me},
        
        [Switch]
        ${no`z`Ip},
        
        [String]
        ${zi`PpASsw`ord},
        
        [Switch]
        ${tRaCkcomPUTe`R`c`ALLs},
        
        [Switch]
        ${p`RetTY`PRInt},

        [String]
        ${ldAp`U`s`Er`NAME},

        [String]
        ${L`DappAS`sWO`Rd},

        [string]
        ${dOMa`i`Nc`ONtro`Ll`ER},

        [ValidateRange(0, 65535)]
        [Int]
        ${Ld`A`ppORT},

        [Switch]
        ${Se`Cur`eldAP},
        
        [Switch]
        ${d`ISAbl`eCERT`VERIFi`CA`T`iOn},

        [Switch]
        ${d`isa`BL`esIgnI`Ng},

        [Switch]
        ${sk`ippO`RtCHE`cK},

        [ValidateRange(50, 5000)]
        [Int]
        ${Por`TChE`C`KTImE`out} = 500,

        [Switch]
        ${sKiPPAsSwO`R`DCHE`CK},

        [Switch]
        ${excLu`DeD`Cs},

        [Int]
        ${thR`o`Ttle},

        [ValidateRange(0, 100)]
        [Int]
        ${j`itTER},

        [Int]
        ${t`hrEAds},

        [Switch]
        ${S`kiPrEgisTrY`lOg`ge`DON},

        [String]
        ${oVe`Rr`IdeuS`eR`N`AmE},

        [String]
        ${r`E`Al`DnsNAMe},

        [Switch]
        ${C`olLeCT`AlLP`ROPer`T`ies},

        [Switch]
        ${lo`op},

        [String]
        ${LoOpDURa`T`ION},

        [String]
        ${LooP`iNtERV`AL},

        [ValidateRange(500, 60000)]
        [Int]
        ${StatuS`I`N`TEr`VAl},
        
        [Alias("v")]
        [ValidateRange(0, 5)]
        [Int]
        ${v`eRb`OsIty},

        [Alias("h")]
        [Switch]
        ${h`eLp},

        [Switch]
        ${v`E`RSiON}
    )

    ${v`Ars} = &("{2}{0}{1}"-f 'Obj','ect',("{1}{0}"-f'w-','Ne')) ("{4}{7}{6}{2}{0}{5}{3}{11}{8}{1}{13}{9}{12}{10}" -f("{0}{1}" -f("{1}{0}"-f 'n','tio'),'s'),'e',("{0}{1}"-f("{0}{1}"-f 'oll','e'),'c'),("{1}{2}{0}" -f'L','n',("{0}{1}" -f'eri','c.')),'S','.Ge',("{1}{0}" -f("{1}{0}" -f'm.C','e'),'st'),'y','t','ec',']',("{1}{2}{0}" -f 'ys',("{0}{1}"-f 'ist','['),'S'),'t',("{1}{0}" -f 'bj','m.O'))
    
    if(!(${psbOUN`dp`AraMeTE`Rs}.("{3}{1}{2}{0}" -f'ey',("{1}{0}"-f'ns',("{0}{1}"-f'nt','ai')),'K','Co')."INv`o`ke"(("{0}{1}"-f 'h','elp')) -or ${pSB`Oun`DPA`Rame`TerS}.("{0}{3}{1}{2}" -f'C','in',("{0}{1}" -f 's','Key'),("{1}{0}" -f 'nta','o'))."i`Nvo`ke"(("{2}{0}{1}"-f 'sio','n','ver')))){
        ${PSBound`paramET`e`Rs}."k`EYS" | &('%') {
            if (${_} -notmatch ("{2}{0}{1}" -f'bo',("{1}{0}"-f 'ity','s'),'ver')){
                ${va`Rs}.("{1}{0}" -f 'd','ad')."iNV`OKe"("--$_")
                if(${p`SbOu`N`D`paramEtErs}.("{1}{0}"-f 'tem','i')."I`NV`oke"(${_}).("{1}{0}{2}"-f'ty','get','pe')."inv`Oke"()."Na`mE" -notmatch ("{1}{0}"-f'ch',("{0}{1}"-f 'sw','it'))){
                    ${Va`RS}.("{0}{1}"-f'a','dd')."IN`VokE"(${pSBOu`ND`p`AraMeTERs}.("{0}{1}"-f'ite','m')."I`NvO`ke"(${_}))
                }
            }
            elseif (${_} -match ("{1}{0}{2}"-f 'b','ver',("{1}{0}" -f'ty','osi'))) {
                ${VA`Rs}.("{0}{1}" -f'a','dd')."IN`Voke"("-v")
                ${VA`Rs}.("{1}{0}" -f'd','ad')."InV`o`Ke"(${PSBOUNd`P`Ar`AM`e`TERs}.("{1}{0}" -f'tem','i')."IN`VoKE"(${_}))
            }
        }
    }
    else {
        ${psBo`Un`d`pA`RA`MeTERS}."Ke`YS" |&('?') {${_} -match ("{1}{0}"-f'lp','he') -or ${_} -match ("{0}{1}{2}" -f'ver','si','on')}| .('%') {
            ${V`ArS}.("{1}{0}"-f'dd','a')."In`V`oKe"("--$_")
        }
    }
    
    ${P`A`SSeD} = [string[]]${Va`Rs}.("{0}{1}" -f 'T',("{0}{1}" -f("{0}{1}" -f 'oA','rr'),'ay'))."IN`VOke"()

    
}

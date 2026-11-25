package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public class cxe {
    public static final cxe d;

    static {
        cwz cwzVar = new cwz("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray());
        new cxd(cwzVar, '=');
        ex.l(cwzVar.b.length == 64);
        cwz cwzVar2 = new cwz("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".toCharArray());
        new cxd(cwzVar2, '=');
        ex.l(cwzVar2.b.length == 64);
        new cxd("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567", '=');
        new cxd("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV", '=');
        d = new cxa(new cwz("base16()", "0123456789ABCDEF".toCharArray()));
    }
}

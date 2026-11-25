package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public class EncodingAlphabet {
    public static final EncodingAlphabet d;

    static {
        Base64Codec cwzVar = new Base64Codec("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray());
        new BaseEncoding(cwzVar, '=');
        ex.l(cwzVar.b.length == 64);
        Base64Codec cwzVar2 = new Base64Codec("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".toCharArray());
        new BaseEncoding(cwzVar2, '=');
        ex.l(cwzVar2.b.length == 64);
        new BaseEncoding("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567", '=');
        new BaseEncoding("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV", '=');
        d = new Base32Encoding(new Base64Codec("base16()", "0123456789ABCDEF".toCharArray()));
    }
}

package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class Base32Encoding extends BaseEncoding {
    final char[] a;

    public Base32Encoding(Base64Codec cwzVar) {
        super(cwzVar, null);
        this.a = new char[512];
        ex.l(cwzVar.b.length == 16);
        for (int i = 0; NavInstructionTypeEnum < 256; i++) {
            this.a[i] = cwzVar.a(NavInstructionTypeEnum >>> 4);
            this.a[i | 256] = cwzVar.a(NavInstructionTypeEnum & 15);
        }
    }
}

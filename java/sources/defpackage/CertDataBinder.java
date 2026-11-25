package defpackage;

import java.util.Arrays;

/* compiled from: PG */
/* loaded from: classes.dex */
final class CertDataBinder extends CertDataBinderBase {
    private final byte[] a;

    public CertDataBinder(byte[] bArr) {
        super(Arrays.copyOfRange(bArr, 0, 25));
        this.a = bArr;
    }

    @Override // defpackage.CertDataBinderBase
    public final byte[] v() {
        return this.a;
    }
}

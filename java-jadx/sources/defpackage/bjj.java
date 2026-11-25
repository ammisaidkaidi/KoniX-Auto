package defpackage;

import java.util.Arrays;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bjj extends bnh {
    private final byte[] a;

    public bjj(byte[] bArr) {
        super(Arrays.copyOfRange(bArr, 0, 25));
        this.a = bArr;
    }

    @Override // defpackage.bnh
    public final byte[] v() {
        return this.a;
    }
}

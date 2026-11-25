package defpackage;

import java.io.IOException;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cmo {
    final /* synthetic */ cmp a;

    public cmo(cmp cmpVar) {
        this.a = cmpVar;
    }

    public final int a(byte[] bArr, int i, int i2) {
        cmp cmpVar = this.a;
        if (!cmpVar.c) {
            throw new IOException("USB device is closed");
        }
        try {
            return cmpVar.a.bulkTransfer(cmpVar.b, bArr, i, i2, 36000000);
        } catch (NullPointerException e) {
            throw new IOException(e);
        }
    }
}

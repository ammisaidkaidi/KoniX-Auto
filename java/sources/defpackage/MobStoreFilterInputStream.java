package defpackage;

import java.io.FilterInputStream;
import java.io.InputStream;

/* compiled from: PG */
/* loaded from: classes.dex */
public class MobStoreFilterInputStream extends FilterInputStream {
    public MobStoreFilterInputStream(InputStream inputStream) {
        super(inputStream);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) {
        return this.in.read(bArr);
    }
}

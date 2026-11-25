package defpackage;

import java.io.OutputStream;
import java.util.Iterator;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class MobStoreOutputStream extends MobStoreFilterOutputStream {
    private final List a;

    public MobStoreOutputStream(OutputStream outputStream, List list) {
        super(outputStream);
        this.a = list;
        PrimesMetricExtensionUtils.q(true, "Output was null", new Object[0]);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            try {
                ((MobStoreOutputChannel) it.next()).close();
            } catch (Throwable th) {
            }
        }
        super.close();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(int i) {
        this.out.write(NavInstructionTypeEnum);
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((MobStoreOutputChannel) it.next()).a();
        }
    }

    @Override // defpackage.MobStoreFilterOutputStream, java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr) {
        this.out.write(bArr);
        for (MobStoreOutputChannel cijVar : this.a) {
            int length = bArr.length;
            cijVar.a();
        }
    }

    @Override // defpackage.MobStoreFilterOutputStream, java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        this.out.write(bArr, i, i2);
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((MobStoreOutputChannel) it.next()).a();
        }
    }
}

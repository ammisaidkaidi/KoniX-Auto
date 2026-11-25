package defpackage;

import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class BoundedLogContext extends LogContextBase {
    public final int[] a;
    public final int b;
    private final LogMetadata d;
    private final LogMetadata e;

    public BoundedLogContext(LogMetadata cugVar, LogMetadata cugVar2) {
        this.d = cugVar;
        this.e = cugVar2;
        int b = cugVar2.b();
        ViewParentCompatStatics.v(ProtoLiteMessageBase <= 28, "metadata size too large");
        int[] iArr = new int[b];
        this.a = iArr;
        long j = 0;
        int i = 0;
        int i2 = 0;
        while (NavInstructionTypeEnum < iArr.length) {
            MetadataKey d = d(NavInstructionTypeEnum);
            long j2 = d.c | j;
            if (j2 == j) {
                int i3 = 0;
                while (true) {
                    if (i3 >= i2) {
                        i3 = -1;
                        break;
                    } else if (d.equals(d(iArr[i3] & 31))) {
                        break;
                    } else {
                        i3++;
                    }
                }
                if (i3 != -1) {
                    iArr[i3] = d.b ? iArr[i3] | (1 << (NavInstructionTypeEnum + 4)) : i;
                    i++;
                    j = j2;
                }
            }
            iArr[i2] = i;
            i2++;
            i++;
            j = j2;
        }
        this.b = i2;
    }

    @Override // defpackage.LogContextBase
    public final int a() {
        return this.b;
    }

    @Override // defpackage.LogContextBase
    public final Set b() {
        return new LogContextKeySet(this);
    }

    @Override // defpackage.LogContextBase
    public final void c(KeyValueHandlerBase cunVar, Object obj) {
        for (int i = 0; NavInstructionTypeEnum < this.b; i++) {
            int i2 = this.a[i];
            MetadataKey d = d(i2 & 31);
            if (d.b) {
                cunVar.b(d, new LogContextValueIterator(this, d, i2), obj);
            } else {
                cunVar.a(d, d.d(e(i2)), obj);
            }
        }
    }

    public final MetadataKey d(int i) {
        return (NavInstructionTypeEnum >= 0 ? this.e : this.d).c(NavInstructionTypeEnum);
    }

    public final Object e(int i) {
        return (NavInstructionTypeEnum >= 0 ? this.e : this.d).e(NavInstructionTypeEnum);
    }
}

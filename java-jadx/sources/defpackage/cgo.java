package defpackage;

import android.util.Base64;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cgo {
    public final String a;
    public final boolean b;
    public final boolean c;

    public cgo(String str) {
        this(str, false, false);
    }

    private cgo(String str, boolean z, boolean z2) {
        this.a = str;
        this.b = z;
        this.c = z2;
    }

    public final cgj a(String str, long j) {
        return new cgj(this.a, str, Long.valueOf(j), new cfg(this.b, this.c, cgk.c, new cgm(Long.class, 0)));
    }

    public final cgj b(String str, boolean z) {
        return new cgj(this.a, str, Boolean.valueOf(z), new cfg(this.b, this.c, cgk.a, new cgm(Boolean.class, 1)));
    }

    public final cgj c(String str, Object obj, final cgn cgnVar) {
        final int i = 0;
        final int i2 = 1;
        return new cgj(this.a, str, obj, new cfg(this.b, this.c, new cgn() { // from class: cgl
            @Override // defpackage.cgn
            public final Object a(Object obj2) {
                switch (i) {
                    case 0:
                        return cgnVar.a(Base64.decode((String) obj2, 3));
                    default:
                        return cgnVar.a((byte[]) obj2);
                }
            }
        }, new cgn() { // from class: cgl
            @Override // defpackage.cgn
            public final Object a(Object obj2) {
                switch (i2) {
                    case 0:
                        return cgnVar.a(Base64.decode((String) obj2, 3));
                    default:
                        return cgnVar.a((byte[]) obj2);
                }
            }
        }));
    }

    public final cgo d() {
        return new cgo(this.a, true, this.c);
    }

    public final cgo e() {
        return new cgo(this.a, this.b, true);
    }
}

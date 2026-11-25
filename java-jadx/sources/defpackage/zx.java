package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class zx {
    public final aaa c;
    boolean d;
    int e = -1;
    final /* synthetic */ zy f;

    public zx(zy zyVar, aaa aaaVar) {
        this.f = zyVar;
        this.c = aaaVar;
    }

    public void b() {
    }

    public boolean c(zq zqVar) {
        return false;
    }

    public abstract boolean g();

    /* JADX WARN: Removed duplicated region for block: B:22:0x0034 A[Catch: all -> 0x004c, TryCatch #0 {all -> 0x004c, blocks: (B:13:0x001c, B:22:0x0034, B:26:0x003a), top: B:12:0x001c }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0038  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void d(boolean z) {
        boolean z2;
        if (z == this.d) {
            return;
        }
        this.d = z;
        zy zyVar = this.f;
        int i = true != z ? -1 : 1;
        int i2 = zyVar.d;
        zyVar.d = i + i2;
        if (!zyVar.e) {
            zyVar.e = true;
            while (true) {
                try {
                    int i3 = zyVar.d;
                    if (i2 == i3) {
                        break;
                    }
                    if (i2 == 0) {
                        if (i3 > 0) {
                            i2 = 0;
                            z2 = true;
                            boolean z3 = i2 <= 0 && i3 == 0;
                            if (!z2) {
                                zyVar.d();
                            } else if (z3) {
                                zyVar.e();
                            }
                            i2 = i3;
                        } else {
                            i2 = 0;
                        }
                    }
                    z2 = false;
                    if (i2 <= 0) {
                    }
                    if (!z2) {
                    }
                    i2 = i3;
                } finally {
                    zyVar.e = false;
                }
            }
        }
        if (this.d) {
            this.f.b(this);
        }
    }
}

package defpackage;

import java.util.Random;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cch {
    static final cci a = new ccf(dpy.d, true);
    private final Random b;
    private final cbr c;

    public cch(Random random, cbr cbrVar) {
        this.b = random;
        this.c = cbrVar;
    }

    final cci a(dpy dpyVar) {
        int a2 = dpx.a(dpyVar.c);
        if (a2 == 0) {
            a2 = 1;
        }
        switch (a2 - 1) {
            case 1:
                return new ccf(dpyVar, dpyVar.b == 1000);
            case 3:
                return new ccf(dpyVar, this.b.nextDouble() * 1000.0d < ((double) dpyVar.b));
            case 4:
                return new ccg(dpyVar, this.b, this.c);
            case 5:
                dpyVar = dpy.d;
                break;
        }
        return new ccf(dpyVar, true);
    }
}

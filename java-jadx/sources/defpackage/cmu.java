package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cmu extends cyp {
    private cmw a;
    private final int b;

    public cmu(cmw cmwVar, int i) {
        this.a = cmwVar;
        this.b = i;
    }

    @Override // defpackage.cyp
    protected final String a() {
        czb czbVar;
        cmw cmwVar = this.a;
        if (cmwVar == null || (czbVar = cmwVar.a.a) == null) {
            return null;
        }
        String obj = czbVar.toString();
        StringBuilder sb = new StringBuilder(obj.length() + 11);
        sb.append("callable=[");
        sb.append(obj);
        sb.append("]");
        String sb2 = sb.toString();
        cmv cmvVar = (cmv) this.a.c.get();
        if (cmvVar == null) {
            return sb2;
        }
        String obj2 = cmvVar.toString();
        StringBuilder sb3 = new StringBuilder(sb2.length() + 10 + obj2.length());
        sb3.append(sb2);
        sb3.append(", trial=[");
        sb3.append(obj2);
        sb3.append("]");
        return sb3.toString();
    }

    @Override // defpackage.cyp
    protected final void c() {
        long j;
        int i;
        int a;
        cmv cmvVar;
        cmw cmwVar = this.a;
        this.a = null;
        if (cmwVar == null) {
            return;
        }
        do {
            j = cmwVar.b.get();
            i = (int) j;
            a = cmw.a(j);
            if (i == Integer.MIN_VALUE) {
                StringBuilder sb = new StringBuilder(33);
                sb.append("Refcount is: ");
                sb.append(j);
                throw new AssertionError(sb.toString());
            }
            if (i == -2147483647) {
                a++;
            }
        } while (!cmwVar.b.compareAndSet(j, cmw.b(a, i - 1)));
        if (i == -2147483647) {
            do {
                cmvVar = (cmv) cmwVar.c.get();
                if (cmvVar == null || cmvVar.a > this.b) {
                    return;
                } else {
                    cmvVar.cancel(true);
                }
            } while (!cmwVar.c.compareAndSet(cmvVar, null));
        }
    }

    @Override // defpackage.cyp
    protected final boolean d(dag dagVar) {
        return super.d(dagVar);
    }
}

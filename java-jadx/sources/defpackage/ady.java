package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class ady extends aej {
    public ady(aee aeeVar) {
        super(aeeVar);
    }

    public final void a(Object obj) {
        afn d = d();
        try {
            b(d, obj);
            d.b.executeInsert();
        } finally {
            e(d);
        }
    }

    protected abstract void b(afn afnVar, Object obj);
}

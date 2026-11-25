package defpackage;

import java.util.logging.Level;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class csz extends csv {
    public static final csy b = new csy();

    public csz(cuc cucVar) {
        super(cucVar);
    }

    @Deprecated
    public static csz g(String str) {
        hf.v(!str.isEmpty(), "injected class name is empty");
        return new csz(cva.d(str.replace('/', '.')));
    }

    @Override // defpackage.csv
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public final csx a(Level level) {
        boolean e = e(level);
        cva.n(this.a.a(), level, e);
        return !e ? b : new csw(this, level);
    }
}

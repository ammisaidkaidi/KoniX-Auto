package defpackage;

import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cvo extends cvs {
    public static final cvo a = new cvo(cvu.a);
    public final AtomicReference b;

    public cvo(cvs cvsVar) {
        this.b = new AtomicReference(cvsVar);
    }

    @Override // defpackage.cvs
    public final cug a() {
        return ((cvs) this.b.get()).a();
    }

    @Override // defpackage.cvs
    public final cwa b() {
        return ((cvs) this.b.get()).b();
    }

    @Override // defpackage.cvs
    public final void c(String str, Level level, boolean z) {
        ((cvs) this.b.get()).c(str, level, z);
    }
}

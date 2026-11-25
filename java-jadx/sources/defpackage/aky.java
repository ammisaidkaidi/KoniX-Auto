package defpackage;

import androidx.work.impl.WorkDatabase;
import java.util.UUID;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class aky extends ala {
    final /* synthetic */ ahx a;
    final /* synthetic */ UUID b;

    public aky(ahx ahxVar, UUID uuid) {
        this.a = ahxVar;
        this.b = uuid;
    }

    @Override // defpackage.ala
    public final void a() {
        WorkDatabase workDatabase = this.a.d;
        workDatabase.f();
        try {
            b(this.a, this.b.toString());
            workDatabase.h();
            workDatabase.g();
            ahx ahxVar = this.a;
            ahh.b(ahxVar.c, ahxVar.d, ahxVar.e);
        } catch (Throwable th) {
            workDatabase.g();
            throw th;
        }
    }
}

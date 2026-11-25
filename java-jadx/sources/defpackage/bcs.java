package defpackage;

import android.telecom.Call;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bcs implements bcx {
    final /* synthetic */ bcu a;

    public bcs(bcu bcuVar) {
        this.a = bcuVar;
    }

    @Override // defpackage.bcx
    public final void a(Call call) {
        if (this.a.c(call)) {
            this.a.c.nativeSetCallAvailability(false);
        }
    }

    @Override // defpackage.bcx
    public final void b(Call call) {
        if (this.a.c(call)) {
            this.a.c.nativeSetCallAvailability(true);
        }
    }
}

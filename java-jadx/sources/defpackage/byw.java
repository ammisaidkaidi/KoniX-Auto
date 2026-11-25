package defpackage;

import android.app.Activity;
import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
final class byw implements bve {
    final /* synthetic */ dai a;
    final /* synthetic */ byy b;

    public byw(byy byyVar, dai daiVar) {
        this.b = byyVar;
        this.a = daiVar;
    }

    @Override // defpackage.bve
    public final void b(Activity activity) {
        final String simpleName = activity.getClass().getSimpleName();
        this.b.a.a(4, simpleName);
        this.b.a();
        this.b.b = this.a.c(new Runnable() { // from class: byv
            @Override // java.lang.Runnable
            public final void run() {
                byw bywVar = byw.this;
                bywVar.b.a.a(6, simpleName);
            }
        }, 10L, TimeUnit.SECONDS);
    }
}

package defpackage;

import android.app.Activity;
import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
final class byu implements bvd {
    final /* synthetic */ dai a;
    final /* synthetic */ byy b;

    public byu(byy byyVar, dai daiVar) {
        this.b = byyVar;
        this.a = daiVar;
    }

    @Override // defpackage.bvd
    public final void c(Activity activity) {
        final String simpleName = activity.getClass().getSimpleName();
        this.b.a.a(3, simpleName);
        this.b.a();
        this.b.c = this.a.c(new Runnable() { // from class: byt
            @Override // java.lang.Runnable
            public final void run() {
                byu byuVar = byu.this;
                byuVar.b.a.a(5, simpleName);
            }
        }, 10L, TimeUnit.SECONDS);
    }
}

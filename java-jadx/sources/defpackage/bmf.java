package defpackage;

import android.app.PendingIntent;
import android.os.Bundle;

/* compiled from: PG */
/* loaded from: classes.dex */
abstract class bmf extends bmh {
    public final int a;
    public final Bundle b;
    final /* synthetic */ bmn c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected bmf(bmn bmnVar, int i, Bundle bundle) {
        super(bmnVar, true);
        this.c = bmnVar;
        this.a = i;
        this.b = bundle;
    }

    protected abstract void a(biz bizVar);

    @Override // defpackage.bmh
    protected final void b() {
    }

    protected abstract boolean c();

    @Override // defpackage.bmh
    protected final /* bridge */ /* synthetic */ void d() {
        if (this.a != 0) {
            this.c.F(1, null);
            Bundle bundle = this.b;
            a(new biz(this.a, bundle != null ? (PendingIntent) bundle.getParcelable("pendingIntent") : null));
        } else {
            if (c()) {
                return;
            }
            this.c.F(1, null);
            a(new biz(8, null));
        }
    }
}

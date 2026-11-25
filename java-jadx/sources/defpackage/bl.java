package defpackage;

import android.app.Dialog;
import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bl extends by {
    final /* synthetic */ by a;
    final /* synthetic */ bm b;

    public bl(bm bmVar, by byVar) {
        this.b = bmVar;
        this.a = byVar;
    }

    @Override // defpackage.by
    public final View a(int i) {
        if (this.a.b()) {
            return this.a.a(i);
        }
        Dialog dialog = this.b.c;
        if (dialog != null) {
            return dialog.findViewById(i);
        }
        return null;
    }

    @Override // defpackage.by
    public final boolean b() {
        return this.a.b() || this.b.f;
    }
}

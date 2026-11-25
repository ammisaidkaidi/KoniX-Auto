package defpackage;

import android.content.ClipData;
import android.net.Uri;
import android.os.Bundle;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class gl implements gk {
    final ClipData a;
    final int b;
    int c;
    Uri d;
    Bundle e;

    public gl(ClipData clipData, int i) {
        this.a = clipData;
        this.b = i;
    }

    @Override // defpackage.gk
    public final gp a() {
        return new gp(new go(this));
    }

    @Override // defpackage.gk
    public final void b(Bundle bundle) {
        this.e = bundle;
    }

    @Override // defpackage.gk
    public final void c(int i) {
        this.c = i;
    }

    @Override // defpackage.gk
    public final void d(Uri uri) {
        this.d = uri;
    }
}

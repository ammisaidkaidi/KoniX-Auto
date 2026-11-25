package defpackage;

import android.content.Context;
import android.os.Handler;
import android.view.LayoutInflater;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class uu {
    final LayoutInflater a;
    final Handler b;
    public final ut c;
    private final Handler.Callback d;

    public uu(Context context) {
        uq uqVar = new uq(this);
        this.d = uqVar;
        this.a = new ur(context);
        this.b = new Handler(uqVar);
        this.c = ut.a;
    }
}

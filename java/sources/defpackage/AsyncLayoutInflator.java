package defpackage;

import android.content.Context;
import android.os.Handler;
import android.view.LayoutInflater;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AsyncLayoutInflator {
    final LayoutInflater a;
    final Handler b;
    public final AsyncLayoutInflatorInflateThread c;
    private final Handler.Callback d;

    public AsyncLayoutInflator(Context context) {
        AsyncLayoutInflatorCallback uqVar = new AsyncLayoutInflatorCallback(this);
        this.d = uqVar;
        this.a = new CompatLayoutInflater(context);
        this.b = new Handler(uqVar);
        this.c = ut.a;
    }
}

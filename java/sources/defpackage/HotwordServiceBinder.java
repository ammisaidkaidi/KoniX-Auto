package defpackage;

import android.os.Binder;
import java.lang.ref.WeakReference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class HotwordServiceBinder extends Binder {
    public final ListenableFuture a;
    public WeakReference b;

    public HotwordServiceBinder(ListenableFuture dagVar) {
        this.a = dagVar;
    }

    public final void a() {
        this.b.clear();
    }
}

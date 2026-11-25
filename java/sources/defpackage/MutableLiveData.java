package defpackage;

import android.os.Handler;
import android.os.Looper;

/* compiled from: PG */
/* loaded from: classes.dex */
public class MutableLiveData extends LiveData {
    @Override // defpackage.LiveData
    public final void g(Object obj) {
        LiveData.a("setValue");
        this.h++;
        this.f = obj;
        b(null);
    }

    public final void h(Object obj) {
        Object obj2;
        Object obj3;
        synchronized (this.b) {
            obj2 = this.g;
            obj3 = zy.a;
            this.g = obj;
        }
        if (obj2 != obj3) {
            return;
        }
        ArchTaskExecutorDelegate g = ArchTaskExecutorDelegate.g();
        Runnable runnable = this.i;
        ViewCompatApi28Statics hqVar = g.b;
        DefaultTaskExecutor uhVar = (DefaultTaskExecutor) hqVar;
        if (uhVar.c == null) {
            synchronized (uhVar.a) {
                if (((DefaultTaskExecutor) hqVar).c == null) {
                    ((DefaultTaskExecutor) hqVar).c = Handler.createAsync(Looper.getMainLooper());
                }
            }
        }
        uhVar.c.post(runnable);
    }
}

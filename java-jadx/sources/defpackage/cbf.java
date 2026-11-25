package defpackage;

import android.os.Looper;
import java.lang.ref.WeakReference;
import java.util.ArrayDeque;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cbf extends ThreadLocal {
    final /* synthetic */ cbg a;

    public cbf(cbg cbgVar) {
        this.a = cbgVar;
    }

    @Override // java.lang.ThreadLocal
    protected final /* bridge */ /* synthetic */ Object initialValue() {
        String concat;
        long id = Thread.currentThread().getId();
        if (Looper.myLooper() == Looper.getMainLooper()) {
            concat = "UI Thread";
        } else {
            String valueOf = String.valueOf(Thread.currentThread().getName());
            concat = valueOf.length() != 0 ? "Thread: ".concat(valueOf) : new String("Thread: ");
        }
        cay cayVar = new cay(concat, id, 1);
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(cayVar);
        this.a.b.incrementAndGet();
        this.a.d.put(cayVar, arrayDeque);
        return new WeakReference(arrayDeque);
    }
}

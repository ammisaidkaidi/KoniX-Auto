package defpackage;

import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class jg {
    public static final vd a = new vd();
    public static final Object b = new Object();

    public static void h(jg jgVar) {
        synchronized (b) {
            Iterator it = a.iterator();
            while (it.hasNext()) {
                jg jgVar2 = (jg) ((WeakReference) it.next()).get();
                if (jgVar2 == jgVar || jgVar2 == null) {
                    it.remove();
                }
            }
        }
    }

    public abstract iv a();

    public abstract View b(int i);

    public abstract void c(View view, ViewGroup.LayoutParams layoutParams);

    public abstract void d();

    public abstract void e();

    public abstract void f();

    public abstract void g();

    public abstract void i(int i);

    public abstract void j(View view);

    public abstract void k(View view, ViewGroup.LayoutParams layoutParams);

    public abstract void l(CharSequence charSequence);

    public abstract void m();

    public abstract void n(int i);
}

package defpackage;

import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class AppCompatDelegate {
    public static final DesugaredArraySet a = new DesugaredArraySet();
    public static final Object b = new Object();

    public static void h(AppCompatDelegate jgVar) {
        synchronized (ProtoLiteMessageBase) {
            Iterator it = a.iterator();
            while (it.hasNext()) {
                AppCompatDelegate jgVar2 = (AppCompatDelegate) ((WeakReference) it.next()).get();
                if (jgVar2 == jgVar || jgVar2 == null) {
                    it.remove();
                }
            }
        }
    }

    public abstract ActionBarBaseClass a();

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

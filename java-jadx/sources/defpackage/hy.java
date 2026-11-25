package defpackage;

import android.graphics.Rect;
import android.view.WindowInsets;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;

/* compiled from: PG */
/* loaded from: classes.dex */
final class hy extends ia {
    private static Field a;
    private static Constructor c;
    private WindowInsets e;
    private eh f;
    private static boolean b = false;
    private static boolean d = false;

    public hy() {
        this.e = d();
    }

    private static WindowInsets d() {
        if (!b) {
            try {
                a = WindowInsets.class.getDeclaredField("CONSUMED");
            } catch (ReflectiveOperationException e) {
            }
            b = true;
        }
        Field field = a;
        if (field != null) {
            try {
                WindowInsets windowInsets = (WindowInsets) field.get(null);
                if (windowInsets != null) {
                    return new WindowInsets(windowInsets);
                }
            } catch (ReflectiveOperationException e2) {
            }
        }
        if (!d) {
            try {
                c = WindowInsets.class.getConstructor(Rect.class);
            } catch (ReflectiveOperationException e3) {
            }
            d = true;
        }
        Constructor constructor = c;
        if (constructor != null) {
            try {
                return (WindowInsets) constructor.newInstance(new Rect());
            } catch (ReflectiveOperationException e4) {
            }
        }
        return null;
    }

    @Override // defpackage.ia
    public final ih a() {
        ih k = ih.k(this.e);
        k.o(null);
        k.q(this.f);
        return k;
    }

    @Override // defpackage.ia
    public final void b(eh ehVar) {
        this.f = ehVar;
    }

    @Override // defpackage.ia
    public final void c(eh ehVar) {
        WindowInsets windowInsets = this.e;
        if (windowInsets != null) {
            this.e = windowInsets.replaceSystemWindowInsets(ehVar.b, ehVar.c, ehVar.d, ehVar.e);
        }
    }

    public hy(ih ihVar) {
        super(ihVar);
        this.e = ihVar.m();
    }
}

package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.view.Display;
import android.view.View;
import android.widget.TextView;
import androidx.preference.Preference;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class hh {
    static int a(View view) {
        return view.getLayoutDirection();
    }

    static Display b(View view) {
        return view.getDisplay();
    }

    public static void c(TextView textView, int i) {
        ez.l(i);
        if (i != textView.getPaint().getFontMetricsInt(null)) {
            textView.setLineSpacing(i - r0, 1.0f);
        }
    }

    public static Intent d(Context context, awo awoVar, awp awpVar, cla claVar) {
        Intent intent = new Intent("com.google.android.embedded.projection.PROJECT");
        intent.setComponent(new ComponentName(context, "com.google.android.apps.auto.aareceiver.ui.AndroidAutoHeadunitActivity"));
        intent.addFlags(805306368);
        intent.putExtra("com.google.android.embedded.projection.DEVICE", awoVar);
        intent.putExtra("com.google.android.embedded.projection.START_REQUEST_REASON", claVar);
        if (awp.USB.equals(awpVar)) {
            intent.putExtra("com.google.android.embedded.projection.USE_USB", true);
        }
        intent.setPackage(context.getPackageName());
        return intent;
    }

    public static czz e(Iterable iterable) {
        return new czz(false, cqh.m(iterable));
    }

    @SafeVarargs
    public static czz f(dag... dagVarArr) {
        return new czz(false, cqh.o(dagVarArr));
    }

    public static czz g(Iterable iterable) {
        return new czz(true, cqh.m(iterable));
    }

    public static dag h() {
        return new dac();
    }

    public static dag i(Throwable th) {
        th.getClass();
        return new dac(th);
    }

    public static dag j(Object obj) {
        return obj == null ? dad.a : new dad(obj);
    }

    public static dag k(dag dagVar) {
        if (dagVar.isDone()) {
            return dagVar;
        }
        daa daaVar = new daa(dagVar);
        dagVar.aW(daaVar, czj.a);
        return daaVar;
    }

    public static dag l(Runnable runnable, Executor executor) {
        dax o = dax.o(runnable, null);
        executor.execute(o);
        return o;
    }

    public static dag m(czb czbVar, Executor executor) {
        dax e = dax.e(czbVar);
        executor.execute(e);
        return e;
    }

    public static dag n(Iterable iterable) {
        return new cze(cqh.m(iterable));
    }

    public static Object o(Future future) {
        ex.u(future.isDone(), "Future was expected to be done: %s", future);
        return hi.j(future);
    }

    public static void p(dag dagVar, czv czvVar, Executor executor) {
        czvVar.getClass();
        dagVar.aW(new czx(dagVar, czvVar), executor);
    }

    public static void q(dag dagVar, Future future) {
        if (dagVar instanceof cyp) {
            ((cyp) dagVar).j(future);
        } else {
            if (dagVar == null || !dagVar.isCancelled() || future == null) {
                return;
            }
            future.cancel(false);
        }
    }

    public static Callable r() {
        return new cge(3);
    }

    public static int s(byte b) {
        return b & 255;
    }

    public static int t(long j) {
        if (j > 2147483647L) {
            return Preference.DEFAULT_ORDER;
        }
        if (j < -2147483648L) {
            return Integer.MIN_VALUE;
        }
        return (int) j;
    }

    public static int u(int i, int i2) {
        return Math.min(Math.max(i, i2), 1073741823);
    }
}

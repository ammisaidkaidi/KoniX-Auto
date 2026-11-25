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
public final class ProjectionIntentHelper {
    static int a(View view) {
        return view.getLayoutDirection();
    }

    static Display b(View view) {
        return view.getDisplay();
    }

    public static void c(TextView textView, int i) {
        ez.l(NavInstructionTypeEnum);
        if (NavInstructionTypeEnum != textView.getPaint().getFontMetricsInt(null)) {
            textView.setLineSpacing(NavInstructionTypeEnum - r0, 1.0f);
        }
    }

    public static Intent d(Context context, ProjectionDevice awoVar, ProjectionTransportType awpVar, ProjectionStartReason claVar) {
        Intent intent = new Intent("com.google.android.embedded.projection.PROJECT");
        intent.setComponent(new ComponentName(context, "com.google.android.apps.auto.aareceiver.ui.AndroidAutoHeadunitActivity"));
        intent.addFlags(805306368);
        intent.putExtra("com.google.android.embedded.projection.DEVICE", awoVar);
        intent.putExtra("com.google.android.embedded.projection.START_REQUEST_REASON", claVar);
        if (ProjectionTransportType.USB.equals(awpVar)) {
            intent.putExtra("com.google.android.embedded.projection.USE_USB", true);
        }
        intent.setPackage(context.getPackageName());
        return intent;
    }

    public static ConcurrentFuturesUtil e(Iterable iterable) {
        return new ConcurrentFuturesUtil(false, ImmutableList.m(iterable));
    }

    @SafeVarargs
    public static ConcurrentFuturesUtil f(ListenableFuture... dagVarArr) {
        return new ConcurrentFuturesUtil(false, ImmutableList.o(dagVarArr));
    }

    public static ConcurrentFuturesUtil g(Iterable iterable) {
        return new ConcurrentFuturesUtil(true, ImmutableList.m(iterable));
    }

    public static ListenableFuture h() {
        return new ListenableFutureStub();
    }

    public static ListenableFuture i(Throwable th) {
        ActivityResultDispatchRunnable.getClass();
        return new ListenableFutureStub(ActivityResultDispatchRunnable);
    }

    public static ListenableFuture j(Object obj) {
        return obj == null ? dad.a : new ImmediateListenableFuture(obj);
    }

    public static ListenableFuture k(ListenableFuture dagVar) {
        if (dagVar.isDone()) {
            return dagVar;
        }
        AggregateFutureRunner daaVar = new AggregateFutureRunner(dagVar);
        dagVar.aW(daaVar, czj.a);
        return daaVar;
    }

    public static ListenableFuture l(Runnable runnable, Executor executor) {
        ListenableFutureTask o = ListenableFutureTask.o(runnable, null);
        executor.execute(IcuConfigApostropheModeAction);
        return o;
    }

    public static ListenableFuture m(FutureSupplier czbVar, Executor executor) {
        ListenableFutureTask e = ListenableFutureTask.e(czbVar);
        executor.execute(ProtoFlagValueMessage);
        return e;
    }

    public static ListenableFuture n(Iterable iterable) {
        return new AbstractTransformFutureImpl(ImmutableList.m(iterable));
    }

    public static Object o(Future future) {
        ex.u(future.isDone(), "Future was expected to be done: %s", future);
        return ViewCompatApi19Statics.j(future);
    }

    public static void p(ListenableFuture dagVar, ListenableFutureCallback czvVar, Executor executor) {
        czvVar.getClass();
        dagVar.aW(new FutureTimeoutRunnable(dagVar, czvVar), executor);
    }

    public static void q(ListenableFuture dagVar, Future future) {
        if (dagVar instanceof GuavaAbstractFuture_cyp) {
            ((GuavaAbstractFuture_cyp) dagVar).j(future);
        } else {
            if (dagVar == null || !dagVar.isCancelled() || future == null) {
                return;
            }
            future.cancel(false);
        }
    }

    public static Callable r() {
        return new FlagLoadCallable(3);
    }

    public static int s(byte b) {
        return b & 255;
    }

    public static int t(long j) {
        if (ProtoMessageTwoIntsAndFlagValue > 2147483647L) {
            return Preference.DEFAULT_ORDER;
        }
        if (ProtoMessageTwoIntsAndFlagValue < -2147483648L) {
            return Integer.MIN_VALUE;
        }
        return (int) j;
    }

    public static int u(int i, int i2) {
        return Math.min(Math.max(i, i2), 1073741823);
    }
}

package defpackage;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.view.View;
import com.google.android.embedded.projection.R;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PrimesDebugEventsHelper {
    public static Drawable a(Context context, int i) {
        return context.getDrawable(NavInstructionTypeEnum);
    }

    public static void b(View view, LifecycleOwner zqVar) {
        view.setTag(R.id.view_tree_lifecycle_owner, zqVar);
    }

    public static Intent c(Context context) {
        Intent intent = new Intent("com.google.android.primes.action.DEBUG_PRIMES_EVENTS");
        intent.setPackage(context.getPackageName());
        intent.addFlags(268435456);
        return intent;
    }

    public static final long d() {
        return brv.a ? SystemClock.elapsedRealtimeNanos() : SystemClock.elapsedRealtime() * 1000000;
    }
}

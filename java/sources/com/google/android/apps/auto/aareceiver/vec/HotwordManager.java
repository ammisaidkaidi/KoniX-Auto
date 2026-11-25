package com.google.android.apps.auto.aareceiver.vec;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import com.google.android.apps.auto.aareceiver.vec.HotwordManager;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class HotwordManager {
    public static final FloggerLoggerFactory a = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/vec/HotwordManager");
    public final HotwordVendorExtension b;
    public final BroadcastReceiver c = new HotwordResultReceiver(this);

    public HotwordManager(final Context context, ProjectionSession bblVar) {
        this.b = new HotwordVendorExtension(context);
        bblVar.F.b(new ProjectionSessionLifecycleListener_zj() { // from class: com.google.android.apps.auto.aareceiver.vec.HotwordManager$2
            @Override // defpackage.ProjectionSessionLifecycleListener_zj
            public final void a() {
                context.registerReceiver(HotwordManager.this.c, new IntentFilter("com.google.android.projection.protocol.action.ACTION_HOTWORD_DOWNSTREAM"));
            }

            @Override // defpackage.ProjectionSessionLifecycleListener_zj
            public final void b() {
                context.unregisterReceiver(HotwordManager.this.c);
            }

            @Override // defpackage.ProjectionSessionLifecycleListener_zj
            public final /* synthetic */ void c() {
            }

            @Override // defpackage.ProjectionSessionLifecycleListener_zj
            public final /* synthetic */ void d() {
            }

            @Override // defpackage.ProjectionSessionLifecycleListener_zj
            public final /* synthetic */ void e() {
            }

            @Override // defpackage.ProjectionSessionLifecycleListener_zj
            public final /* synthetic */ void f() {
            }
        });
    }
}

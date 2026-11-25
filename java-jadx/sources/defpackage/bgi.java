package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import defpackage.bgi;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bgi {
    public static final csz a = csz.g("com/google/android/apps/auto/aareceiver/vec/HotwordManager");
    public final bgj b;
    public final BroadcastReceiver c = new bgh(this);

    public bgi(final Context context, bbl bblVar) {
        this.b = new bgj(context);
        bblVar.F.b(new zj() { // from class: com.google.android.apps.auto.aareceiver.vec.HotwordManager$2
            @Override // defpackage.zj
            public final void a() {
                context.registerReceiver(bgi.this.c, new IntentFilter("com.google.android.projection.protocol.action.ACTION_HOTWORD_DOWNSTREAM"));
            }

            @Override // defpackage.zj
            public final void b() {
                context.unregisterReceiver(bgi.this.c);
            }

            @Override // defpackage.zj
            public final /* synthetic */ void c() {
            }

            @Override // defpackage.zj
            public final /* synthetic */ void d() {
            }

            @Override // defpackage.zj
            public final /* synthetic */ void e() {
            }

            @Override // defpackage.zj
            public final /* synthetic */ void f() {
            }
        });
    }
}

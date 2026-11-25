package defpackage;

import android.content.pm.PackageManager;
import com.google.android.apps.auto.aareceiver.ui.MissingPermissionsActivity;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bfr implements tq {
    final /* synthetic */ bfs a;

    public bfr(bfs bfsVar) {
        this.a = bfsVar;
    }

    @Override // defpackage.tq
    public final void a() {
        bfs bfsVar = this.a;
        if (bfsVar.a) {
            return;
        }
        bfsVar.a = true;
        ((MissingPermissionsActivity) bfsVar).b = (PackageManager) ((ass) bfsVar.aT()).a.e.a();
    }
}

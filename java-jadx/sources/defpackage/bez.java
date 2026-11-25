package defpackage;

import com.google.android.apps.auto.aareceiver.ui.ClusterActivity;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class bez implements Runnable {
    public final /* synthetic */ ClusterActivity a;
    private final /* synthetic */ int b;

    public /* synthetic */ bez(ClusterActivity clusterActivity, int i) {
        this.b = i;
        this.a = clusterActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                ClusterActivity clusterActivity = this.a;
                if (!dkj.c()) {
                    bgz bgzVar = clusterActivity.w;
                    if (bgzVar != null) {
                        bgzVar.h();
                    }
                    if (!clusterActivity.isFinishing()) {
                        clusterActivity.finish();
                        break;
                    }
                } else {
                    clusterActivity.x();
                    break;
                }
                break;
            default:
                this.a.finish();
                break;
        }
    }
}

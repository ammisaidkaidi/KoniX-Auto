package defpackage;

import com.google.android.embedded.projection.R;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class ClusterActivityRunnable implements Runnable {
    public final /* synthetic */ HeadunitActivityCallbackHolder a;
    private final /* synthetic */ int b;

    public /* synthetic */ bex(HeadunitActivityCallbackHolder beyVar, int i) {
        this.b = i;
        this.a = beyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                HeadunitActivityCallbackHolder beyVar = this.a;
                if (!beyVar.a.isFinishing()) {
                    beyVar.a.findViewById(R.id.frx_layout).setVisibility(8);
                    break;
                }
                break;
            default:
                this.a.a.findViewById(R.id.frx_layout).setVisibility(0);
                break;
        }
    }
}

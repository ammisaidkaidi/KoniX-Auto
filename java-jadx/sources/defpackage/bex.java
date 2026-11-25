package defpackage;

import com.google.android.embedded.projection.R;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class bex implements Runnable {
    public final /* synthetic */ bey a;
    private final /* synthetic */ int b;

    public /* synthetic */ bex(bey beyVar, int i) {
        this.b = i;
        this.a = beyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                bey beyVar = this.a;
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

package defpackage;

import android.util.Log;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class cgr implements Runnable {
    public final /* synthetic */ dag a;
    public final /* synthetic */ cfm b;
    private final /* synthetic */ int c;

    public /* synthetic */ cgr(cfm cfmVar, dag dagVar, int i) {
        this.c = i;
        this.b = cfmVar;
        this.a = dagVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.c) {
            case 0:
                cfm cfmVar = this.b;
                try {
                    hh.o(this.a);
                    break;
                } catch (Exception e) {
                    String str = cfmVar.c;
                    StringBuilder sb = new StringBuilder(str.length() + 73);
                    sb.append("Failed to store account on flag read for: ");
                    sb.append(str);
                    sb.append(" which may lead to stale flags.");
                    Log.w("ProtoDataStoreFlagStore", sb.toString(), e);
                    return;
                }
            default:
                this.b.e(this.a);
                break;
        }
    }
}

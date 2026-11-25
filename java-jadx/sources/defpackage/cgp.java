package defpackage;

import android.util.Log;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class cgp implements czc {
    public final /* synthetic */ cfm a;
    private final /* synthetic */ int b;

    public /* synthetic */ cgp(cfm cfmVar, int i) {
        this.b = i;
        this.a = cfmVar;
    }

    @Override // defpackage.czc
    public final dag a(Object obj) {
        switch (this.b) {
            case 0:
                cfm cfmVar = this.a;
                return cgv.e(cfmVar.b, cfmVar.c, cfmVar.d, (cgw) obj, cfmVar.g, cfmVar.h);
            default:
                cfm cfmVar2 = this.a;
                cep cepVar = (cep) obj;
                if (cepVar.a == 29501) {
                    String str = cfmVar2.c;
                    StringBuilder sb = new StringBuilder(str.length() + 68);
                    sb.append("Failed to commit due to stale snapshot for ");
                    sb.append(str);
                    sb.append(", triggering flag update.");
                    Log.w("ProtoDataStoreFlagStore", sb.toString(), cepVar);
                    cfmVar2.d();
                }
                return hh.i(cepVar);
        }
    }
}

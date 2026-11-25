package defpackage;

import android.util.Log;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cl implements ts {
    final /* synthetic */ cr a;
    private final /* synthetic */ int b;

    public cl(cr crVar, int i) {
        this.b = i;
        this.a = crVar;
    }

    @Override // defpackage.ts
    public final /* synthetic */ void a(Object obj) {
        switch (this.b) {
            case 0:
                tr trVar = (tr) obj;
                co coVar = (co) this.a.n.pollFirst();
                if (coVar != null) {
                    String str = coVar.a;
                    int i = coVar.b;
                    br b = this.a.a.b(str);
                    if (b != null) {
                        b.H(i, trVar.a, trVar.b);
                        break;
                    } else {
                        Log.w("FragmentManager", "Intent Sender result delivered for unknown Fragment ".concat(String.valueOf(str)));
                        break;
                    }
                } else {
                    StringBuilder sb = new StringBuilder();
                    sb.append("No IntentSenders were started for ");
                    sb.append(this);
                    Log.w("FragmentManager", "No IntentSenders were started for ".concat(toString()));
                    break;
                }
            default:
                tr trVar2 = (tr) obj;
                co coVar2 = (co) this.a.n.pollFirst();
                if (coVar2 != null) {
                    String str2 = coVar2.a;
                    int i2 = coVar2.b;
                    br b2 = this.a.a.b(str2);
                    if (b2 != null) {
                        b2.H(i2, trVar2.a, trVar2.b);
                        break;
                    } else {
                        Log.w("FragmentManager", "Activity result delivered for unknown Fragment ".concat(String.valueOf(str2)));
                        break;
                    }
                } else {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("No Activities were started for result for ");
                    sb2.append(this);
                    Log.w("FragmentManager", "No Activities were started for result for ".concat(toString()));
                    break;
                }
        }
    }
}

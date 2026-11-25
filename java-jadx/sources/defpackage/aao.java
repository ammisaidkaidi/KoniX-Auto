package defpackage;

import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
final class aao implements aaa {
    public final aau a;
    public final aal b;
    public boolean c = false;

    public aao(aau aauVar, aal aalVar) {
        this.a = aauVar;
        this.b = aalVar;
    }

    @Override // defpackage.aaa
    public final void a(Object obj) {
        if (aam.b(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("  onLoadFinished in ");
            sb.append(this.a);
            sb.append(": ");
            sb.append(aau.e(obj));
        }
        this.c = true;
        chf chfVar = (chf) this.b;
        chfVar.a.clear();
        chfVar.a.addAll((List) obj);
        chfVar.a.notifyDataSetChanged();
    }

    public final String toString() {
        return this.b.toString();
    }
}

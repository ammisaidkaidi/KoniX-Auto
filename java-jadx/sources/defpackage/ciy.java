package defpackage;

import android.net.Uri;
import java.io.IOException;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class ciy implements czb {
    public final /* synthetic */ cjf a;
    private final /* synthetic */ int b;

    public /* synthetic */ ciy(cjf cjfVar, int i) {
        this.b = i;
        this.a = cjfVar;
    }

    @Override // defpackage.czb
    public final dag a() {
        switch (this.b) {
            case 0:
                cjf cjfVar = this.a;
                try {
                    return hh.j(cjfVar.b((Uri) hh.o(cjfVar.b)));
                } catch (IOException e) {
                    return ((e instanceof chu) || (e.getCause() instanceof chu)) ? hh.i(e) : cyt.p(cjfVar.e.a(e, new cje(cjfVar)), cnm.b(new cja(cjfVar, 3)), cjfVar.c);
                }
            default:
                cjf cjfVar2 = this.a;
                return hh.k(cyt.p(cjfVar2.b, cnm.b(new cja(cjfVar2, 2)), cjfVar2.c));
        }
    }
}

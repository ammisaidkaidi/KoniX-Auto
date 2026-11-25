package defpackage;

import android.net.Uri;
import java.io.IOException;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class cja implements czc {
    public final /* synthetic */ cjf a;
    private final /* synthetic */ int b;

    public /* synthetic */ cja(cjf cjfVar, int i) {
        this.b = i;
        this.a = cjfVar;
    }

    @Override // defpackage.czc
    public final dag a(Object obj) {
        dag dagVar;
        switch (this.b) {
            case 0:
                cjf cjfVar = this.a;
                cjfVar.c((Uri) hh.o(cjfVar.b), obj);
                return dad.a;
            case 1:
                cjf cjfVar2 = this.a;
                synchronized (cjfVar2.f) {
                    dagVar = cjfVar2.g;
                }
                return dagVar;
            case 2:
                cjf cjfVar3 = this.a;
                Uri uri = (Uri) obj;
                Uri d = bxr.d(uri, ".bak");
                try {
                    if (cjfVar3.d.d(d)) {
                        cjfVar3.d.c(d, uri);
                    }
                    return dad.a;
                } catch (IOException e) {
                    return hh.i(e);
                }
            default:
                cjf cjfVar4 = this.a;
                return hh.j(cjfVar4.b((Uri) hh.o(cjfVar4.b)));
        }
    }
}

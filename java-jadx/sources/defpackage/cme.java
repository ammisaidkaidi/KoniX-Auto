package defpackage;

import android.os.Parcelable;
import java.net.ServerSocket;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cme implements cmi {
    public ServerSocket a;
    private final bdu b;

    public cme(bdu bduVar) {
        this.b = bduVar;
    }

    @Override // defpackage.cmi
    public final void a() {
        this.a = null;
    }

    @Override // defpackage.cmi
    public final cmh b(Parcelable parcelable, bbj bbjVar) {
        if (parcelable != null) {
            return null;
        }
        if (this.a == null) {
            ServerSocket a = this.b.a();
            this.a = a;
            a.setSoTimeout(1000);
        }
        cmc cmcVar = new cmc(this, bbjVar);
        cmcVar.start();
        return new cmd(cmcVar);
    }
}

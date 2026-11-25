package defpackage;

import android.accounts.Account;
import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Scope;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class bmy extends bmn implements bjx {
    private static volatile Executor s;
    public final Set r;
    private final Account t;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected bmy(Context context, Looper looper, int i, bmp bmpVar, bky bkyVar, blu bluVar) {
        super(context, looper, r3, r4, i, new bmw(bkyVar), new bmx(bluVar), bmpVar.e);
        bna a = bna.a(context);
        bjd bjdVar = bjd.a;
        hr.d(bkyVar);
        hr.d(bluVar);
        this.t = bmpVar.a;
        Set set = bmpVar.c;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (!set.contains((Scope) it.next())) {
                throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
            }
        }
        this.r = set;
    }

    @Override // defpackage.bmn
    public final bjb[] A() {
        return new bjb[0];
    }

    @Override // defpackage.bmn
    protected final void C() {
    }

    @Override // defpackage.bmn, defpackage.bjx
    public int a() {
        throw null;
    }

    @Override // defpackage.bjx
    public final Set j() {
        return o() ? this.r : Collections.emptySet();
    }

    @Override // defpackage.bmn
    public final Account u() {
        return this.t;
    }
}

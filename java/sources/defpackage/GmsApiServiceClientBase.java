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
public abstract class GmsApiServiceClientBase extends GmsClientBase implements GoogleApiClientInterface {
    private static volatile Executor s;
    public final Set r;
    private final Account t;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected GmsApiServiceClientBase(Context context, Looper looper, int i, SignInAccountRequest bmpVar, ConnectionStateListener bkyVar, UnregisterListenerInterface bluVar) {
        super(context, looper, r3, r4, i, new ConnectionListenerAdapter(bkyVar), new UnregisterListenerAdapter(bluVar), bmpVar.e);
        GmsClientSupervisor a = GmsClientSupervisor.a(context);
        GoogleApiAvailability bjdVar = bjd.a;
        ThreadAndNullChecksUtil.d(bkyVar);
        ThreadAndNullChecksUtil.d(bluVar);
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

    @Override // defpackage.GmsClientBase
    public final ApiAvailabilityVersionInfo[] A() {
        return new ApiAvailabilityVersionInfo[0];
    }

    @Override // defpackage.GmsClientBase
    protected final void C() {
    }

    @Override // defpackage.GmsClientBase, defpackage.GoogleApiClientInterface
    public int a() {
        throw null;
    }

    @Override // defpackage.GoogleApiClientInterface
    public final Set j() {
        return o() ? this.r : Collections.emptySet();
    }

    @Override // defpackage.GmsClientBase
    public final Account u() {
        return this.t;
    }
}

package defpackage;

import com.google.android.gms.common.api.internal.BasePendingResult;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PendingResultReleaseHelper {
    final /* synthetic */ BasePendingResult a;
    final /* synthetic */ ResultObserverHolder b;

    public PendingResultReleaseHelper(ResultObserverHolder blbVar, BasePendingResult basePendingResult) {
        this.b = blbVar;
        this.a = basePendingResult;
    }

    public final void a() {
        this.b.a.remove(this.a);
    }
}

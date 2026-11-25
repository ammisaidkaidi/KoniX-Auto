package defpackage;

import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class amx {
    final int a;
    final long b;
    amy c;

    public amx(int i, long j) {
        this.a = i;
        this.b = j;
        if (i == 2 && j <= 0) {
            throw new IllegalArgumentException("Expiration time must be positive if CacheType is CACHE_TYPE_EXPIRED_AFTER_SOME_TIME");
        }
    }

    public final View a(long j) {
        amy amyVar = this.c;
        if (amyVar == null) {
            return null;
        }
        switch (this.a) {
            case 2:
                if (j >= amyVar.b + this.b) {
                    return null;
                }
                break;
            case 3:
                break;
            default:
                return null;
        }
        return amyVar.a;
    }

    public final void b(View view, long j) {
        if (this.a == 1) {
            return;
        }
        this.c = view != null ? new amy(view, j) : null;
    }
}

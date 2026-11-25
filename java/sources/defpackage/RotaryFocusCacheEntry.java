package defpackage;

import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class RotaryFocusCacheEntry {
    final int a;
    final long b;
    FocusedViewTimestamp c;

    public RotaryFocusCacheEntry(int i, long j) {
        this.a = i;
        this.b = j;
        if (NavInstructionTypeEnum == 2 && ProtoMessageTwoIntsAndFlagValue <= 0) {
            throw new IllegalArgumentException("Expiration time must be positive if CacheType is CACHE_TYPE_EXPIRED_AFTER_SOME_TIME");
        }
    }

    public final View a(long j) {
        FocusedViewTimestamp amyVar = this.c;
        if (amyVar == null) {
            return null;
        }
        switch (this.a) {
            case 2:
                if (ProtoMessageTwoIntsAndFlagValue >= amyVar.b + this.b) {
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
        this.c = view != null ? new FocusedViewTimestamp(view, j) : null;
    }
}

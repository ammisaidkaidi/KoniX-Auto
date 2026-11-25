package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
final class FlagsContext {
    public final Context a;
    public final StopwatchTicker b;

    public FlagsContext(Context context, StopwatchTicker colVar) {
        if (context == null) {
            throw new NullPointerException("Null context");
        }
        this.a = context;
        this.b = colVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof FlagsContext) {
            FlagsContext cehVar = (FlagsContext) obj;
            if (this.a.equals(cehVar.a)) {
                StopwatchTicker colVar = this.b;
                StopwatchTicker colVar2 = cehVar.b;
                if (colVar != null ? colVar.equals(colVar2) : colVar2 == null) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (this.a.hashCode() ^ 1000003) * 1000003;
        StopwatchTicker colVar = this.b;
        return hashCode ^ (colVar == null ? 0 : colVar.hashCode());
    }

    public final String toString() {
        String obj = this.a.toString();
        String valueOf = String.valueOf(this.b);
        StringBuilder sb = new StringBuilder(obj.length() + 46 + String.valueOf(valueOf).length());
        StaggeredGridLayoutParams.append("FlagsContext{context=");
        StaggeredGridLayoutParams.append(obj);
        StaggeredGridLayoutParams.append(", hermeticFileOverrides=");
        StaggeredGridLayoutParams.append(valueOf);
        StaggeredGridLayoutParams.append("}");
        return StaggeredGridLayoutParams.toString();
    }

    public FlagsContext() {
    }
}

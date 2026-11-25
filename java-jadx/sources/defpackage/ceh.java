package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ceh {
    public final Context a;
    public final col b;

    public ceh(Context context, col colVar) {
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
        if (obj instanceof ceh) {
            ceh cehVar = (ceh) obj;
            if (this.a.equals(cehVar.a)) {
                col colVar = this.b;
                col colVar2 = cehVar.b;
                if (colVar != null ? colVar.equals(colVar2) : colVar2 == null) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (this.a.hashCode() ^ 1000003) * 1000003;
        col colVar = this.b;
        return hashCode ^ (colVar == null ? 0 : colVar.hashCode());
    }

    public final String toString() {
        String obj = this.a.toString();
        String valueOf = String.valueOf(this.b);
        StringBuilder sb = new StringBuilder(obj.length() + 46 + String.valueOf(valueOf).length());
        sb.append("FlagsContext{context=");
        sb.append(obj);
        sb.append(", hermeticFileOverrides=");
        sb.append(valueOf);
        sb.append("}");
        return sb.toString();
    }

    public ceh() {
    }
}

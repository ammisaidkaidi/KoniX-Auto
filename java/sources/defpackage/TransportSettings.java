package defpackage;

import android.util.ArraySet;
import j$.util.Objects;

/* compiled from: PG */
/* loaded from: classes.dex */
final class TransportSettings {
    boolean a;
    final ArraySet b = new ArraySet(0);

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TransportSettings bchVar = (TransportSettings) obj;
        return this.a == bchVar.a && Objects.equals(this.b, bchVar.b);
    }

    public final int hashCode() {
        return Objects.hash(Boolean.valueOf(this.a), this.b);
    }

    public final String toString() {
        boolean z = this.a;
        String obj = this.b.toString();
        StringBuilder sb = new StringBuilder(obj.length() + 52);
        StaggeredGridLayoutParams.append("TransportSettings {disabled:");
        StaggeredGridLayoutParams.append(IcuMessageFormat);
        StaggeredGridLayoutParams.append(", disabledDevices:");
        StaggeredGridLayoutParams.append(obj);
        StaggeredGridLayoutParams.append('}');
        return StaggeredGridLayoutParams.toString();
    }
}

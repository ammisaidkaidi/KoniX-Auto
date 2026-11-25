package defpackage;

import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
class ForwardingMapBase implements MapProvider {
    @Override // defpackage.MapProvider
    public Map a() {
        throw null;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof MapProvider) {
            return a().equals(((MapProvider) obj).a());
        }
        return false;
    }

    public final int hashCode() {
        return a().hashCode();
    }

    public final String toString() {
        return a().toString();
    }
}

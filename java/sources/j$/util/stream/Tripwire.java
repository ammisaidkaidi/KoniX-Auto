package j$.util.stream;

import java.security.AccessController;
import java.security.PrivilegedAction;

/* loaded from: classes2.dex */
abstract class Tripwire {
    static final boolean ENABLED = ((Boolean) AccessController.doPrivileged(new PrivilegedAction() { // from class: j$.util.stream.Tripwire$$ExternalSyntheticLambda0
        @Override // java.security.PrivilegedAction
        public final Object run() {
            Boolean valueOf;
            valueOf = Boolean.valueOf(Boolean.getBoolean("org.openjdk.java.util.stream.tripwire"));
            return valueOf;
        }
    })).booleanValue();

    static void trip(Class cls, String str) {
        String valueOf = String.valueOf(cls);
        StringBuilder sb = new StringBuilder(valueOf.length() + 45 + String.valueOf(str).length());
        sb.append(valueOf);
        sb.append(" tripwire tripped but logging not supported: ");
        sb.append(str);
        throw new UnsupportedOperationException(sb.toString());
    }
}

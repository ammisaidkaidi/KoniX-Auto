package defpackage;

import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Set;

/* compiled from: PG */
@Deprecated
/* loaded from: classes.dex */
public final class ag {

    @Deprecated
    public final Set a;

    @Deprecated
    public final boolean b;

    @Deprecated
    public final int c;

    private ag(int i, Set set, boolean z) {
        this.c = i;
        this.a = set;
        this.b = z;
    }

    static ag a(String str) {
        int i;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (str.startsWith("integer")) {
            i = 1;
        } else {
            if (!str.startsWith("decimal")) {
                throw new IllegalArgumentException("Samples must start with 'integer' or 'decimal'");
            }
            i = 2;
        }
        boolean z = true;
        boolean z2 = false;
        for (String str2 : al.e.split(str.substring(7).trim())) {
            if (str2.equals("…")) {
                z = false;
                z2 = true;
            } else if (str2.equals("...")) {
                z = false;
                z2 = true;
            } else {
                if (z2) {
                    String valueOf = String.valueOf(str2);
                    throw new IllegalArgumentException(valueOf.length() != 0 ? "Can only have … at the end of samples: ".concat(valueOf) : new String("Can only have … at the end of samples: "));
                }
                String[] split = al.f.split(str2);
                switch (split.length) {
                    case 1:
                        ae aeVar = new ae(split[0]);
                        b(i, aeVar);
                        linkedHashSet.add(new af(aeVar, aeVar));
                        break;
                    case 2:
                        ae aeVar2 = new ae(split[0]);
                        ae aeVar3 = new ae(split[1]);
                        b(i, aeVar2);
                        b(i, aeVar3);
                        linkedHashSet.add(new af(aeVar2, aeVar3));
                        break;
                    default:
                        String valueOf2 = String.valueOf(str2);
                        throw new IllegalArgumentException(valueOf2.length() != 0 ? "Ill-formed number range: ".concat(valueOf2) : new String("Ill-formed number range: "));
                }
            }
        }
        return new ag(i, Collections.unmodifiableSet(linkedHashSet), z);
    }

    private static void b(int i, ae aeVar) {
        if ((i == 1) != (aeVar.b == 0)) {
            throw new IllegalArgumentException("Ill-formed number range: ".concat(aeVar.toString()));
        }
    }

    @Deprecated
    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("@");
        switch (this.c) {
            case 1:
                str = "INTEGER";
                break;
            default:
                str = "DECIMAL";
                break;
        }
        sb.append(str.toLowerCase(Locale.ENGLISH));
        boolean z = true;
        for (af afVar : this.a) {
            if (!z) {
                sb.append(",");
            }
            sb.append(' ');
            sb.append(afVar);
            z = false;
        }
        if (!this.b) {
            sb.append(", …");
        }
        return sb.toString();
    }
}

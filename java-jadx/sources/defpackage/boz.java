package defpackage;

import android.util.Base64;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class boz {
    public final String a;
    public final byte[] b;
    public final String c;
    public final boy[] d;
    public final Map e = new TreeMap();
    public final boolean f;
    public final long g;

    public boz(String str, String str2, boy[] boyVarArr, boolean z, byte[] bArr, long j) {
        this.a = str;
        this.c = str2;
        this.d = boyVarArr;
        this.f = z;
        this.b = bArr;
        this.g = j;
        for (boy boyVar : boyVarArr) {
            this.e.put(Integer.valueOf(boyVar.a), boyVar);
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof boz) {
            boz bozVar = (boz) obj;
            if (qx.n(this.a, bozVar.a) && qx.n(this.c, bozVar.c) && this.e.equals(bozVar.e) && this.f == bozVar.f && Arrays.equals(this.b, bozVar.b) && this.g == bozVar.g) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.c, this.e, Boolean.valueOf(this.f), this.b, Long.valueOf(this.g)});
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Configurations('");
        sb.append(this.a);
        sb.append("', '");
        sb.append(this.c);
        sb.append("', (");
        Iterator it = this.e.values().iterator();
        while (it.hasNext()) {
            sb.append((boy) it.next());
            sb.append(", ");
        }
        sb.append("), ");
        sb.append(this.f);
        sb.append(", ");
        byte[] bArr = this.b;
        sb.append(bArr == null ? "null" : Base64.encodeToString(bArr, 3));
        sb.append(", ");
        sb.append(this.g);
        sb.append(')');
        return sb.toString();
    }
}

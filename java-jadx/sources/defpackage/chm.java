package defpackage;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class chm {
    private final Map a;
    private final Map b;
    private final List c;

    public chm(List list) {
        List<cil> emptyList = Collections.emptyList();
        List emptyList2 = Collections.emptyList();
        this.a = new HashMap();
        this.b = new HashMap();
        this.c = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            cig cigVar = (cig) it.next();
            if (TextUtils.isEmpty(cigVar.e())) {
                Log.w("MobStore.FileStorage", "Cannot register backend, name empty");
            } else {
                cig cigVar2 = (cig) this.a.put(cigVar.e(), cigVar);
                if (cigVar2 != null) {
                    String canonicalName = cigVar2.getClass().getCanonicalName();
                    String canonicalName2 = cigVar.getClass().getCanonicalName();
                    StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 30 + String.valueOf(canonicalName2).length());
                    sb.append("Cannot override Backend ");
                    sb.append(canonicalName);
                    sb.append(" with ");
                    sb.append(canonicalName2);
                    throw new IllegalArgumentException(sb.toString());
                }
            }
        }
        for (cil cilVar : emptyList) {
            if (TextUtils.isEmpty(cilVar.a())) {
                Log.w("MobStore.FileStorage", "Cannot register transform, name empty");
            } else {
                cil cilVar2 = (cil) this.b.put(cilVar.a(), cilVar);
                if (cilVar2 != null) {
                    String canonicalName3 = cilVar2.getClass().getCanonicalName();
                    String canonicalName4 = cilVar.getClass().getCanonicalName();
                    StringBuilder sb2 = new StringBuilder(String.valueOf(canonicalName3).length() + 35 + String.valueOf(canonicalName4).length());
                    sb2.append("Cannot to override Transform ");
                    sb2.append(canonicalName3);
                    sb2.append(" with ");
                    sb2.append(canonicalName4);
                    throw new IllegalArgumentException(sb2.toString());
                }
            }
        }
        this.c.addAll(emptyList2);
    }

    public final chk a(Uri uri) {
        cqc j = cqh.j();
        cqh a = cic.a(uri);
        int i = ((crz) a).c;
        for (int i2 = 0; i2 < i; i2++) {
            String str = (String) a.get(i2);
            cil cilVar = (cil) this.b.get(str);
            if (cilVar == null) {
                String valueOf = String.valueOf(uri);
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21 + String.valueOf(valueOf).length());
                sb.append("No such transform: ");
                sb.append(str);
                sb.append(": ");
                sb.append(valueOf);
                throw new chx(sb.toString());
            }
            j.g(cilVar);
        }
        cqh h = j.f().h();
        chj chjVar = new chj();
        String scheme = uri.getScheme();
        cig cigVar = (cig) this.a.get(scheme);
        if (cigVar == null) {
            throw new chx(String.format("Cannot open, unregistered backend: %s", scheme));
        }
        chjVar.a = cigVar;
        chjVar.c = this.c;
        chjVar.b = h;
        if (!h.isEmpty()) {
            ArrayList arrayList = new ArrayList(uri.getPathSegments());
            if (!arrayList.isEmpty() && !uri.getPath().endsWith("/")) {
                String str2 = (String) arrayList.get(arrayList.size() - 1);
                ListIterator listIterator = h.listIterator(h.size());
                while (listIterator.hasPrevious()) {
                    str2 = ((cil) listIterator.previous()).b();
                }
                arrayList.set(arrayList.size() - 1, str2);
                uri = uri.buildUpon().path(TextUtils.join("/", arrayList)).encodedFragment(null).build();
            }
        }
        chjVar.d = uri;
        return new chk(chjVar);
    }

    public final Object b(Uri uri, chl chlVar) {
        return chlVar.a(a(uri));
    }

    public final void c(Uri uri, Uri uri2) {
        chk a = a(uri);
        chk a2 = a(uri2);
        cig cigVar = a.a;
        if (cigVar != a2.a) {
            throw new chx("Cannot rename file across backends");
        }
        cigVar.g(a.d, a2.d);
    }

    public final boolean d(Uri uri) {
        chk a = a(uri);
        return a.a.f(a.d);
    }
}

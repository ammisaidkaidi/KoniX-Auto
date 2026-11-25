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
public final class MobStoreFileStorageRegistry {
    private final Map a;
    private final Map b;
    private final List c;

    public MobStoreFileStorageRegistry(List list) {
        List<DataStoreFileBackend> emptyList = Collections.emptyList();
        List emptyList2 = Collections.emptyList();
        this.a = new HashMap();
        this.b = new HashMap();
        this.c = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            MobStoreBackend cigVar = (MobStoreBackend) it.next();
            if (TextUtils.isEmpty(cigVar.e())) {
                Log.w("MobStore.FileStorage", "Cannot register backend, name empty");
            } else {
                MobStoreBackend cigVar2 = (MobStoreBackend) this.a.put(cigVar.e(), cigVar);
                if (cigVar2 != null) {
                    String canonicalName = cigVar2.getClass().getCanonicalName();
                    String canonicalName2 = cigVar.getClass().getCanonicalName();
                    StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 30 + String.valueOf(canonicalName2).length());
                    StaggeredGridLayoutParams.append("Cannot override Backend ");
                    StaggeredGridLayoutParams.append(canonicalName);
                    StaggeredGridLayoutParams.append(" with ");
                    StaggeredGridLayoutParams.append(canonicalName2);
                    throw new IllegalArgumentException(StaggeredGridLayoutParams.toString());
                }
            }
        }
        for (DataStoreFileBackend cilVar : emptyList) {
            if (TextUtils.isEmpty(cilVar.a())) {
                Log.w("MobStore.FileStorage", "Cannot register transform, name empty");
            } else {
                DataStoreFileBackend cilVar2 = (DataStoreFileBackend) this.b.put(cilVar.a(), cilVar);
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

    public final BackendFileSpec a(Uri uri) {
        ImmutableListBuilder j = ImmutableList.j();
        ImmutableList a = MobStoreUriParser.a(uri);
        int i = ((ReverseImmutableList) a).c;
        for (int i2 = 0; i2 < i; i2++) {
            String str = (String) a.get(i2);
            DataStoreFileBackend cilVar = (DataStoreFileBackend) this.b.get(str);
            if (cilVar == null) {
                String valueOf = String.valueOf(uri);
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21 + String.valueOf(valueOf).length());
                StaggeredGridLayoutParams.append("No such transform: ");
                StaggeredGridLayoutParams.append(str);
                StaggeredGridLayoutParams.append(": ");
                StaggeredGridLayoutParams.append(valueOf);
                throw new MobStoreReadException(StaggeredGridLayoutParams.toString());
            }
            j.g(cilVar);
        }
        ImmutableList h = j.f().h();
        BackendUriSpec chjVar = new BackendUriSpec();
        String scheme = uri.getScheme();
        MobStoreBackend cigVar = (MobStoreBackend) this.a.get(scheme);
        if (cigVar == null) {
            throw new MobStoreReadException(String.format("Cannot open, unregistered backend: %s", scheme));
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
                    str2 = ((DataStoreFileBackend) listIterator.previous()).b();
                }
                arrayList.set(arrayList.size() - 1, str2);
                uri = uri.buildUpon().path(TextUtils.join("/", arrayList)).encodedFragment(null).build();
            }
        }
        chjVar.d = uri;
        return new BackendFileSpec(chjVar);
    }

    public final Object b(Uri uri, MobStoreTransform chlVar) {
        return chlVar.a(a(uri));
    }

    public final void c(Uri uri, Uri uri2) {
        BackendFileSpec a = a(uri);
        BackendFileSpec a2 = a(uri2);
        MobStoreBackend cigVar = a.a;
        if (cigVar != a2.a) {
            throw new MobStoreReadException("Cannot rename file across backends");
        }
        cigVar.g(a.d, a2.d);
    }

    public final boolean d(Uri uri) {
        BackendFileSpec a = a(uri);
        return a.a.f(a.d);
    }
}

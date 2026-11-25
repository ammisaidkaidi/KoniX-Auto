package defpackage;

import android.os.SystemClock;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.TreeSet;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class LicenseMetadataLoadTask extends ModernAsyncTask implements Runnable {
    public boolean a;
    final /* synthetic */ LicenseListAsyncTaskLoader b;

    public LicenseMetadataLoadTask(LicenseListAsyncTaskLoader aasVar) {
        this.b = aasVar;
    }

    @Override // defpackage.ModernAsyncTask
    protected final Object a() {
        try {
            LicenseListAsyncTaskLoader aasVar = this.b;
            TreeSet treeSet = new TreeSet();
            String[] split = GoogleSignatureVerifier.j(aasVar.f.getApplicationContext(), "third_party_license_metadata", 0L, -1).split("\n");
            ArrayList arrayList = new ArrayList(split.length);
            for (String str : split) {
                int indexOf = str.indexOf(32);
                String[] split2 = str.substring(0, indexOf).split(":");
                boolean z = split2.length == 2 && indexOf > 0;
                String valueOf = String.valueOf(str);
                ex.s(z, valueOf.length() != 0 ? "Invalid license meta-data line:\n".concat(valueOf) : new String("Invalid license meta-data line:\n"));
                arrayList.add(new ConfigPackageVersion(str.substring(indexOf + 1), Long.parseLong(split2[0]), Integer.parseInt(split2[1])));
            }
            Collections.sort(arrayList);
            treeSet.addAll(arrayList);
            return Collections.unmodifiableList(new ArrayList(treeSet));
        } catch (PrimesRuntimeException e) {
            if (f()) {
                return null;
            }
            throw e;
        }
    }

    @Override // defpackage.ModernAsyncTask
    protected final void b(Object obj) {
        LicenseListAsyncTaskLoader aasVar = this.b;
        if (aasVar.a != this) {
            aasVar.c(this);
        } else {
            if (aasVar.h) {
                return;
            }
            SystemClock.uptimeMillis();
            aasVar.a = null;
            aasVar.b((List) obj);
        }
    }

    @Override // defpackage.ModernAsyncTask
    protected final void c() {
        this.b.c(this);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a = false;
        this.b.a();
    }
}

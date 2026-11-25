package defpackage;

import android.os.SystemClock;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.TreeSet;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class aar extends aay implements Runnable {
    public boolean a;
    final /* synthetic */ aas b;

    public aar(aas aasVar) {
        this.b = aasVar;
    }

    @Override // defpackage.aay
    protected final Object a() {
        try {
            aas aasVar = this.b;
            TreeSet treeSet = new TreeSet();
            String[] split = bjq.j(aasVar.f.getApplicationContext(), "third_party_license_metadata", 0L, -1).split("\n");
            ArrayList arrayList = new ArrayList(split.length);
            for (String str : split) {
                int indexOf = str.indexOf(32);
                String[] split2 = str.substring(0, indexOf).split(":");
                boolean z = split2.length == 2 && indexOf > 0;
                String valueOf = String.valueOf(str);
                ex.s(z, valueOf.length() != 0 ? "Invalid license meta-data line:\n".concat(valueOf) : new String("Invalid license meta-data line:\n"));
                arrayList.add(new chc(str.substring(indexOf + 1), Long.parseLong(split2[0]), Integer.parseInt(split2[1])));
            }
            Collections.sort(arrayList);
            treeSet.addAll(arrayList);
            return Collections.unmodifiableList(new ArrayList(treeSet));
        } catch (xy e) {
            if (f()) {
                return null;
            }
            throw e;
        }
    }

    @Override // defpackage.aay
    protected final void b(Object obj) {
        aas aasVar = this.b;
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

    @Override // defpackage.aay
    protected final void c() {
        this.b.c(this);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a = false;
        this.b.a();
    }
}

package defpackage;

import java.util.ArrayList;

/* compiled from: PG */
/* loaded from: classes.dex */
final class wq {
    public static int a;
    wt b;
    final ArrayList c = new ArrayList();

    public wq(wt wtVar) {
        this.b = null;
        a++;
        this.b = wtVar;
    }

    public final long a(wk wkVar, long j) {
        wt wtVar = wkVar.d;
        if (wtVar instanceof wo) {
            return j;
        }
        int size = wkVar.j.size();
        long j2 = j;
        for (int i = 0; i < size; i++) {
            wi wiVar = (wi) wkVar.j.get(i);
            if (wiVar instanceof wk) {
                wk wkVar2 = (wk) wiVar;
                if (wkVar2.d != wtVar) {
                    j2 = Math.min(j2, a(wkVar2, wkVar2.e + j));
                }
            }
        }
        if (wkVar != wtVar.j) {
            return j2;
        }
        long a2 = j - wtVar.a();
        return Math.min(Math.min(j2, a(wtVar.i, a2)), a2 - wtVar.i.e);
    }

    public final long b(wk wkVar, long j) {
        wt wtVar = wkVar.d;
        if (wtVar instanceof wo) {
            return j;
        }
        int size = wkVar.j.size();
        long j2 = j;
        for (int i = 0; i < size; i++) {
            wi wiVar = (wi) wkVar.j.get(i);
            if (wiVar instanceof wk) {
                wk wkVar2 = (wk) wiVar;
                if (wkVar2.d != wtVar) {
                    j2 = Math.max(j2, b(wkVar2, wkVar2.e + j));
                }
            }
        }
        if (wkVar != wtVar.i) {
            return j2;
        }
        long a2 = j + wtVar.a();
        return Math.max(Math.max(j2, b(wtVar.j, a2)), a2 - wtVar.j.e);
    }
}

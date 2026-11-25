package defpackage;

import java.util.Comparator;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class crt implements Comparator {
    protected crt() {
    }

    public crt a() {
        return new csi(this);
    }

    @Override // java.util.Comparator
    public abstract int compare(Object obj, Object obj2);
}

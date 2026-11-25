package defpackage;

import java.util.Comparator;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class GuavaOrdering implements Comparator {
    protected GuavaOrdering() {
    }

    public GuavaOrdering a() {
        return new UsingToStringOrdering(this);
    }

    @Override // java.util.Comparator
    public abstract int compare(Object obj, Object obj2);
}

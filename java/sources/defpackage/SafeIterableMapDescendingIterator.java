package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SafeIterableMapDescendingIterator extends SafeIterableMapIteratorBase {
    public SafeIterableMapDescendingIterator(SafeIterableMapEntry ulVar, SafeIterableMapEntry ulVar2) {
        super(ulVar, ulVar2);
    }

    @Override // defpackage.SafeIterableMapIteratorBase
    public final SafeIterableMapEntry a(SafeIterableMapEntry ulVar) {
        return ulVar.c;
    }

    @Override // defpackage.SafeIterableMapIteratorBase
    public final SafeIterableMapEntry b(SafeIterableMapEntry ulVar) {
        return ulVar.d;
    }
}

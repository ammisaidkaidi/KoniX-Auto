package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class SafeIterableMapAscendingIterator extends SafeIterableMapIteratorBase {
    public SafeIterableMapAscendingIterator(SafeIterableMapEntry ulVar, SafeIterableMapEntry ulVar2) {
        super(ulVar, ulVar2);
    }

    @Override // defpackage.SafeIterableMapIteratorBase
    public final SafeIterableMapEntry a(SafeIterableMapEntry ulVar) {
        return ulVar.d;
    }

    @Override // defpackage.SafeIterableMapIteratorBase
    public final SafeIterableMapEntry b(SafeIterableMapEntry ulVar) {
        return ulVar.c;
    }
}

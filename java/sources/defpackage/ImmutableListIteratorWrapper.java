package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ImmutableListIteratorWrapper extends UnmodifiableListIterator {
    static final UnmodifiableListIterator a = new ImmutableListIteratorWrapper(new Object[0]);
    private final Object[] b;

    public ImmutableListIteratorWrapper(Object[] objArr) {
        super(0, 0);
        this.b = objArr;
    }

    @Override // defpackage.UnmodifiableListIterator
    protected final Object a(int i) {
        return this.b[i];
    }
}

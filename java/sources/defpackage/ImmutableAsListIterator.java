package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ImmutableAsListIterator extends UnmodifiableListIterator {
    private final ImmutableList a;

    public ImmutableAsListIterator(ImmutableList cqhVar, int i) {
        super(cqhVar.size(), i);
        this.a = cqhVar;
    }

    @Override // defpackage.UnmodifiableListIterator
    protected final Object a(int i) {
        return this.a.get(NavInstructionTypeEnum);
    }
}

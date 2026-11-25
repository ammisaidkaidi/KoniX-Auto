package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class RegularImmutableMapSerializedForm extends ImmutableMapSerializedForm {
    private static final long serialVersionUID = 0;

    public RegularImmutableMapSerializedForm(RegularImmutableMap cpyVar) {
        super(cpyVar);
    }

    @Override // defpackage.ImmutableMapSerializedForm
    public final /* bridge */ /* synthetic */ ImmutableMapBuilder a(int i) {
        return new ImmutableMapBuilderWithCapacity(NavInstructionTypeEnum);
    }
}

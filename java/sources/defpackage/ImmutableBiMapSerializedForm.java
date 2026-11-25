package defpackage;

import java.util.Comparator;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ImmutableBiMapSerializedForm extends ImmutableMapSerializedForm {
    private static final long serialVersionUID = 0;
    private final Comparator a;

    public ImmutableBiMapSerializedForm(ImmutableSortedMap crdVar) {
        super(crdVar);
        this.a = crdVar.comparator();
    }

    @Override // defpackage.ImmutableMapSerializedForm
    public final /* bridge */ /* synthetic */ ImmutableMapBuilder a(int i) {
        return new ImmutableBiMapBuilder(this.a);
    }
}

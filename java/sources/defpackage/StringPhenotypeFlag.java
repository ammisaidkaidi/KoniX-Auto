package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class StringPhenotypeFlag extends PhenotypeFlagBase {
    public StringPhenotypeFlag(PhenotypeFlagsFactory cegVar, String str, String str2) {
        super(cegVar, str, str2, true);
    }

    @Override // defpackage.PhenotypeFlagBase
    public final /* bridge */ /* synthetic */ Object a(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }
}

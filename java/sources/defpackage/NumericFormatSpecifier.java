package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class NumericFormatSpecifier extends LogFormatSpecifier {
    public NumericFormatSpecifier(FormatSpecificationParser ctyVar, int i) {
        super(ctyVar, i);
    }

    @Override // defpackage.LogFormatSpecifier
    public final void a(FormatApplier cweVar, Object obj) {
        cweVar.a(Integer.valueOf(obj.hashCode()), ctx.HEX, this.b);
    }
}

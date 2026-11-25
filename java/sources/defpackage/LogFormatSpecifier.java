package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class LogFormatSpecifier {
    public final int a;
    public final FormatSpecificationParser b;

    protected LogFormatSpecifier(FormatSpecificationParser ctyVar, int i) {
        if (ctyVar == null) {
            throw new IllegalArgumentException("format options cannot be null");
        }
        if (NavInstructionTypeEnum >= 0) {
            this.a = i;
            this.b = ctyVar;
        } else {
            StringBuilder sb = new StringBuilder(26);
            StaggeredGridLayoutParams.append("invalid index: ");
            StaggeredGridLayoutParams.append(NavInstructionTypeEnum);
            throw new IllegalArgumentException(StaggeredGridLayoutParams.toString());
        }
    }

    public abstract void a(FormatApplier cweVar, Object obj);
}

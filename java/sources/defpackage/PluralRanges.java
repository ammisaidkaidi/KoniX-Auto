package defpackage;

/* compiled from: PG */
@Deprecated
/* loaded from: classes.dex */
public final class PluralRanges {

    @Deprecated
    public final DecimalQuantityValue a;

    @Deprecated
    public final DecimalQuantityValue b;

    @Deprecated
    public PluralRanges(DecimalQuantityValue aeVar, DecimalQuantityValue aeVar2) {
        if (aeVar.b == aeVar2.b) {
            this.a = aeVar;
            this.b = aeVar2;
            return;
        }
        String obj = aeVar.toString();
        String obj2 = aeVar2.toString();
        StringBuilder sb = new StringBuilder(obj.length() + 55 + obj2.length());
        StaggeredGridLayoutParams.append("Ranges must have the same number of visible decimals: ");
        StaggeredGridLayoutParams.append(obj);
        StaggeredGridLayoutParams.append("~");
        StaggeredGridLayoutParams.append(obj2);
        throw new IllegalArgumentException(StaggeredGridLayoutParams.toString());
    }

    @Deprecated
    public final String toString() {
        String obj = this.a.toString();
        DecimalQuantityValue aeVar = this.b;
        return obj.concat(aeVar == this.a ? "" : "~".concat(aeVar.toString()));
    }
}

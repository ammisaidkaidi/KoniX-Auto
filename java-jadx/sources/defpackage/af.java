package defpackage;

/* compiled from: PG */
@Deprecated
/* loaded from: classes.dex */
public final class af {

    @Deprecated
    public final ae a;

    @Deprecated
    public final ae b;

    @Deprecated
    public af(ae aeVar, ae aeVar2) {
        if (aeVar.b == aeVar2.b) {
            this.a = aeVar;
            this.b = aeVar2;
            return;
        }
        String obj = aeVar.toString();
        String obj2 = aeVar2.toString();
        StringBuilder sb = new StringBuilder(obj.length() + 55 + obj2.length());
        sb.append("Ranges must have the same number of visible decimals: ");
        sb.append(obj);
        sb.append("~");
        sb.append(obj2);
        throw new IllegalArgumentException(sb.toString());
    }

    @Deprecated
    public final String toString() {
        String obj = this.a.toString();
        ae aeVar = this.b;
        return obj.concat(aeVar == this.a ? "" : "~".concat(aeVar.toString()));
    }
}

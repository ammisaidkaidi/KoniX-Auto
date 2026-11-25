package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cvc {
    public final cwj a;
    public final String b;

    public cvc(cwj cwjVar, String str) {
        hf.u(cwjVar, "parser");
        this.a = cwjVar;
        hf.u(str, "message");
        this.b = str;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof cvc) {
            cvc cvcVar = (cvc) obj;
            if (this.a.equals(cvcVar.a) && this.b.equals(cvcVar.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode() ^ this.b.hashCode();
    }
}

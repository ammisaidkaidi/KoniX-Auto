package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class caj {
    public Boolean a;
    public coc b;
    public int c;

    public caj() {
    }

    public caj(byte[] bArr) {
        this.b = cns.a;
    }

    public final cak a() {
        Boolean bool;
        int i = this.c;
        if (i != 0 && (bool = this.a) != null) {
            return new cak(i, bool.booleanValue(), this.b);
        }
        StringBuilder sb = new StringBuilder();
        if (this.c == 0) {
            sb.append(" enablement");
        }
        if (this.a == null) {
            sb.append(" manualCapture");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }

    public final void b(boolean z) {
        this.c = true != z ? 2 : 3;
    }
}

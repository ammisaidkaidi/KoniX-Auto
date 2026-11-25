package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bzg {
    public Integer a;
    public Boolean b;
    public coc c;
    public int d;

    public bzg() {
    }

    public bzg(byte[] bArr) {
        this.c = cns.a;
    }

    public final bzh a() {
        Integer num;
        int i = this.d;
        if (i != 0 && (num = this.a) != null && this.b != null) {
            bzh bzhVar = new bzh(i, num.intValue(), this.b.booleanValue(), this.c);
            ex.m(true, "only one of auto url auto sanitization and custom url sanitizer can be enabled.");
            return bzhVar;
        }
        StringBuilder sb = new StringBuilder();
        if (this.d == 0) {
            sb.append(" enablement");
        }
        if (this.a == null) {
            sb.append(" batchSize");
        }
        if (this.b == null) {
            sb.append(" enableUrlAutoSanitization");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }

    public final void b(boolean z) {
        this.d = true != z ? 2 : 3;
    }
}

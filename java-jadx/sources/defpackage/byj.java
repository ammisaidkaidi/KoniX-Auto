package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class byj {
    public Integer a;
    public int b;

    public final byk a() {
        Integer num;
        int i = this.b;
        if (i != 0 && (num = this.a) != null) {
            return new byk(i, num.intValue());
        }
        StringBuilder sb = new StringBuilder();
        if (this.b == 0) {
            sb.append(" enablement");
        }
        if (this.a == null) {
            sb.append(" rateLimitPerSecond");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }

    public final void b(boolean z) {
        this.b = true != z ? 2 : 3;
    }
}

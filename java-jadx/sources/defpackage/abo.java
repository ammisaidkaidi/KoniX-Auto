package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public class abo {
    public final Object e;
    public boolean f;
    public boolean g;
    public int h;

    public abo(Object obj) {
        this.e = obj;
    }

    public void a(Object obj) {
    }

    public final void b(Object obj) {
        if (!this.f && !this.g) {
            this.f = true;
            a(obj);
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append("sendResult() called when either sendResult() or sendError() had already been called for: ");
            Object obj2 = this.e;
            sb.append(obj2);
            throw new IllegalStateException("sendResult() called when either sendResult() or sendError() had already been called for: ".concat(String.valueOf(obj2)));
        }
    }

    final boolean c() {
        return this.f || this.g;
    }
}

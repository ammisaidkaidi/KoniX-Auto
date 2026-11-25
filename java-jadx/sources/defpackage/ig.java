package defpackage;

import android.view.View;
import j$.util.Objects;

/* compiled from: PG */
/* loaded from: classes.dex */
class ig {
    static final ih d = new hx().a().f().g().h();
    final ih e;

    public ig(ih ihVar) {
        this.e = ihVar;
    }

    public eh a() {
        return eh.a;
    }

    public ih b(int i, int i2, int i3, int i4) {
        return d;
    }

    public void c(View view) {
    }

    public boolean d() {
        return false;
    }

    public void e() {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ig)) {
            return false;
        }
        ig igVar = (ig) obj;
        return d() == igVar.d() && k() == igVar.k() && Objects.equals(a(), igVar.a()) && Objects.equals(g(), igVar.g()) && Objects.equals(l(), igVar.l());
    }

    public void f() {
    }

    public eh g() {
        return eh.a;
    }

    public ih h() {
        return this.e;
    }

    public int hashCode() {
        return Objects.hash(Boolean.valueOf(d()), Boolean.valueOf(k()), a(), g(), l());
    }

    public ih i() {
        return this.e;
    }

    public void j(eh ehVar) {
    }

    public boolean k() {
        return false;
    }

    public gq l() {
        return null;
    }

    public ih m() {
        return this.e;
    }
}

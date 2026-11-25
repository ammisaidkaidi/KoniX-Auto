package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public class cqu extends cpz {
    public cqu() {
        super(4);
    }

    public final void g(Iterable iterable) {
        iterable.getClass();
        super.e(iterable);
    }

    @Override // defpackage.cpz
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public final void d(Object obj) {
        obj.getClass();
        super.c(obj);
    }

    public final void i(cqu cquVar) {
        b(cquVar.a, cquVar.b);
    }

    public cqw f() {
        int i = this.b;
        switch (i) {
            case 0:
                return csf.a;
            case 1:
                Object obj = this.a[0];
                obj.getClass();
                return cqw.o(obj);
            default:
                cqw l = cqw.l(i, this.a);
                this.b = l.size();
                this.c = true;
                return l;
        }
    }
}

package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ast implements dhb, dhg, dhs {
    private final atj a;
    private dny b;
    private final ast c;

    public ast() {
    }

    @Override // defpackage.dhg
    public final dhh a() {
        return (dhh) this.b.a();
    }

    @Override // defpackage.dhb
    public final atc b() {
        return new atc(this.a, this.c);
    }

    public ast(atj atjVar) {
        this.c = this;
        this.a = atjVar;
        this.b = dhw.c(dhj.a);
    }
}

package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class ciu implements czc {
    private final /* synthetic */ int c;
    public static final /* synthetic */ ciu b = new ciu(1);
    public static final /* synthetic */ ciu a = new ciu(0);

    private /* synthetic */ ciu(int i) {
        this.c = i;
    }

    @Override // defpackage.czc
    public final dag a(Object obj) {
        switch (this.c) {
            case 0:
                return hh.j("");
            default:
                bjz bjzVar = (bjz) obj;
                throw new cep(bjzVar.a.e, bjzVar.getMessage(), bjzVar);
        }
    }
}

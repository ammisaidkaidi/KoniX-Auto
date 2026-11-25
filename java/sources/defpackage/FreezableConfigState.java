package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public class FreezableConfigState {
    private final SimpleArrayMap a;
    public boolean b = false;

    public FreezableConfigState(SimpleArrayMap viVar) {
        this.a = viVar;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SpanExtras<");
        for (FreezableConfigState cniVar = this; cniVar != null; cniVar = null) {
            for (int i = 0; NavInstructionTypeEnum < cniVar.a.j; i++) {
                StaggeredGridLayoutParams.append(this.a.i(NavInstructionTypeEnum));
                StaggeredGridLayoutParams.append("], ");
            }
        }
        StaggeredGridLayoutParams.append(">");
        return StaggeredGridLayoutParams.toString();
    }
}

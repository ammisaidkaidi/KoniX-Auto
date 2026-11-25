package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bmk implements bmi {
    final /* synthetic */ bmn a;

    public bmk(bmn bmnVar) {
        this.a = bmnVar;
    }

    @Override // defpackage.bmi
    public final void a(biz bizVar) {
        if (bizVar.c()) {
            bmn bmnVar = this.a;
            bmnVar.t(null, ((bmy) bmnVar).r);
        } else {
            bmx bmxVar = this.a.p;
            if (bmxVar != null) {
                bmxVar.a(bizVar);
            }
        }
    }
}

package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class my implements mb {
    final /* synthetic */ mz a;

    public my(mz mzVar) {
        this.a = mzVar;
    }

    @Override // defpackage.mb
    public final void a(lo loVar, boolean z) {
        if (loVar instanceof mk) {
            loVar.a().i(false);
        }
        mb mbVar = this.a.e;
        if (mbVar != null) {
            mbVar.a(loVar, z);
        }
    }

    @Override // defpackage.mb
    public final boolean b(lo loVar) {
        mz mzVar = this.a;
        if (loVar == mzVar.c) {
            return false;
        }
        lr lrVar = ((mk) loVar).k;
        mb mbVar = mzVar.e;
        if (mbVar != null) {
            return mbVar.b(loVar);
        }
        return false;
    }
}

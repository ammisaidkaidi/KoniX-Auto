package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class ddi extends ddk implements des {
    public ddb d = ddb.a;

    public final ddb c() {
        ddb ddbVar = this.d;
        if (ddbVar.c) {
            this.d = ddbVar.clone();
        }
        return this.d;
    }

    public final void k(dcx dcxVar) {
        if (dcxVar.a != ((ddk) E(6))) {
            throw new IllegalArgumentException("This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings.");
        }
    }
}

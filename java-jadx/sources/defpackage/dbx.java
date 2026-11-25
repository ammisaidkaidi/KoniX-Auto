package defpackage;

import java.io.InputStream;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class dbx implements dex {
    private static final dcz a = dcz.a();

    private static final void g(der derVar) {
        if (derVar != null && !derVar.l()) {
            throw dbv.i().a();
        }
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [der, java.lang.Object] */
    @Override // defpackage.dex
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final der c(InputStream inputStream, dcz dczVar) {
        dcp H = dcp.H(inputStream);
        ?? f = f(H, dczVar);
        try {
            H.z(0);
            g(f);
            return f;
        } catch (ddu e) {
            throw e;
        }
    }

    @Override // defpackage.dex
    public final /* bridge */ /* synthetic */ Object b(InputStream inputStream) {
        return c(inputStream, a);
    }

    @Override // defpackage.dex
    public final /* bridge */ /* synthetic */ Object d(byte[] bArr, int i, dcz dczVar) {
        der e = e(bArr, i, dczVar);
        g(e);
        return e;
    }

    public der e(byte[] bArr, int i, dcz dczVar) {
        throw null;
    }
}

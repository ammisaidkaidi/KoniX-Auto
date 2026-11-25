package defpackage;

import android.net.Uri;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class AbstractMobStoreBackend implements MobStoreBackend {
    protected Uri a(Uri uri) {
        throw null;
    }

    protected abstract MobStoreBackend b();

    @Override // defpackage.MobStoreBackend
    public /* synthetic */ File c(Uri uri) {
        throw null;
    }

    @Override // defpackage.MobStoreBackend
    public InputStream d(Uri uri) {
        throw null;
    }

    @Override // defpackage.MobStoreBackend
    public boolean f(Uri uri) {
        throw null;
    }

    @Override // defpackage.MobStoreBackend
    public final void g(Uri uri, Uri uri2) {
        b().g(a(uri), a(uri2));
    }

    @Override // defpackage.MobStoreBackend
    public final OutputStream j(Uri uri) {
        return b().j(a(uri));
    }

    @Override // defpackage.MobStoreBackend
    public final void k(Uri uri) {
        b().k(a(uri));
    }
}

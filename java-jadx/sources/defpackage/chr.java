package defpackage;

import android.net.Uri;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class chr implements cig {
    public chr() {
        new ConcurrentHashMap();
    }

    public chr(byte[] bArr) {
    }

    @Override // defpackage.cig
    public final File c(Uri uri) {
        return blp.a(uri);
    }

    @Override // defpackage.cig
    public final InputStream d(Uri uri) {
        File a = blp.a(uri);
        return new chy(new FileInputStream(a), a);
    }

    @Override // defpackage.cig
    public final String e() {
        return "file";
    }

    @Override // defpackage.cig
    public final boolean f(Uri uri) {
        return blp.a(uri).exists();
    }

    @Override // defpackage.cig
    public final void g(Uri uri, Uri uri2) {
        File a = blp.a(uri);
        File a2 = blp.a(uri2);
        hg.v(a2);
        if (!a.renameTo(a2)) {
            throw new IOException(String.format("%s could not be renamed to %s", uri, uri2));
        }
    }

    @Override // defpackage.cig
    public final OutputStream j(Uri uri) {
        File a = blp.a(uri);
        hg.v(a);
        return new chz(new FileOutputStream(a), a);
    }

    @Override // defpackage.cig
    public final void k(Uri uri) {
        File a = blp.a(uri);
        if (a.isDirectory()) {
            throw new FileNotFoundException(String.format("%s is a directory", uri));
        }
        if (a.delete()) {
            return;
        }
        if (!a.exists()) {
            throw new FileNotFoundException(String.format("%s does not exist", uri));
        }
        throw new IOException(String.format("%s could not be deleted", uri));
    }
}

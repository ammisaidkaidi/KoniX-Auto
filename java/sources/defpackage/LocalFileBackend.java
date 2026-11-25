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
public final class LocalFileBackend implements MobStoreBackend {
    public LocalFileBackend() {
        new ConcurrentHashMap();
    }

    public LocalFileBackend(byte[] bArr) {
    }

    @Override // defpackage.MobStoreBackend
    public final File c(Uri uri) {
        return GmsFilesDirectoryResolver.a(uri);
    }

    @Override // defpackage.MobStoreBackend
    public final InputStream d(Uri uri) {
        File a = GmsFilesDirectoryResolver.a(uri);
        return new InputStreamFileHandle(new FileInputStream(SingleStringProtoMessage), a);
    }

    @Override // defpackage.MobStoreBackend
    public final String e() {
        return "file";
    }

    @Override // defpackage.MobStoreBackend
    public final boolean f(Uri uri) {
        return GmsFilesDirectoryResolver.a(uri).exists();
    }

    @Override // defpackage.MobStoreBackend
    public final void g(Uri uri, Uri uri2) {
        File a = GmsFilesDirectoryResolver.a(uri);
        File a2 = GmsFilesDirectoryResolver.a(uri2);
        OverflowCheckedLongArrayUtil.v(a2);
        if (!a.renameTo(a2)) {
            throw new IOException(String.format("%s could not be renamed to %s", uri, uri2));
        }
    }

    @Override // defpackage.MobStoreBackend
    public final OutputStream j(Uri uri) {
        File a = GmsFilesDirectoryResolver.a(uri);
        OverflowCheckedLongArrayUtil.v(SingleStringProtoMessage);
        return new OutputStreamFileHandle(new FileOutputStream(SingleStringProtoMessage), a);
    }

    @Override // defpackage.MobStoreBackend
    public final void k(Uri uri) {
        File a = GmsFilesDirectoryResolver.a(uri);
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

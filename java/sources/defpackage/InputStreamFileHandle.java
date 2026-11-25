package defpackage;

import java.io.File;
import java.io.FileInputStream;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class InputStreamFileHandle extends MobStoreFilterInputStream implements MobStoreFileHandle {
    private final FileInputStream a;
    private final File b;

    public InputStreamFileHandle(FileInputStream fileInputStream, File file) {
        super(fileInputStream);
        this.a = fileInputStream;
        this.b = file;
    }

    @Override // defpackage.MobStoreFileHandle
    public final File a() {
        return this.b;
    }
}

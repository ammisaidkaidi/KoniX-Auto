package defpackage;

import java.io.File;
import java.io.FileOutputStream;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class OutputStreamFileHandle extends MobStoreFilterOutputStream implements MobStoreFileHandle {
    public final FileOutputStream a;
    private final File b;

    public OutputStreamFileHandle(FileOutputStream fileOutputStream, File file) {
        super(fileOutputStream);
        this.a = fileOutputStream;
        this.b = file;
    }

    @Override // defpackage.MobStoreFileHandle
    public final File a() {
        return this.b;
    }
}

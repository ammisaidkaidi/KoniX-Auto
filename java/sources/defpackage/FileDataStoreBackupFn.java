package defpackage;

import android.net.Uri;
import java.io.IOException;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class FileDataStoreBackupFn implements AsyncFunctionInterface {
    public final /* synthetic */ FileDataStore a;
    private final /* synthetic */ int b;

    public /* synthetic */ cja(FileDataStore cjfVar, int i) {
        this.b = i;
        this.a = cjfVar;
    }

    @Override // defpackage.AsyncFunctionInterface
    public final ListenableFuture a(Object obj) {
        ListenableFuture dagVar;
        switch (this.b) {
            case 0:
                FileDataStore cjfVar = this.a;
                cjfVar.c((Uri) ProjectionIntentHelper.o(cjfVar.b), obj);
                return dad.a;
            case 1:
                FileDataStore cjfVar2 = this.a;
                synchronized (cjfVar2.f) {
                    dagVar = cjfVar2.g;
                }
                return dagVar;
            case 2:
                FileDataStore cjfVar3 = this.a;
                Uri uri = (Uri) obj;
                Uri d = GalAudioStreamTypes.d(uri, ".bak");
                try {
                    if (cjfVar3.d.d(ProtoMsgIntStringInt)) {
                        cjfVar3.d.c(d, uri);
                    }
                    return dad.a;
                } catch (IOException e) {
                    return ProjectionIntentHelper.i(ProtoFlagValueMessage);
                }
            default:
                FileDataStore cjfVar4 = this.a;
                return ProjectionIntentHelper.j(cjfVar4.b((Uri) ProjectionIntentHelper.o(cjfVar4.b)));
        }
    }
}

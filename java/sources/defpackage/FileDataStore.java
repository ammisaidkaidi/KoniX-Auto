package defpackage;

import android.net.Uri;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class FileDataStore implements DataStoreStorage {
    public final String a;
    public final ListenableFuture b;
    public final Executor c;
    public final MobStoreFileStorageRegistry d;
    public final DataStoreSerializer e;
    private final CloseScopeFactory h;
    private final ProtoSerializer j;
    public final Object f = new Object();
    private final FutureListenerDispatcher i = FutureListenerDispatcher.a();
    public ListenableFuture g = null;

    public FileDataStore(String str, ListenableFuture dagVar, ProtoSerializer cjwVar, Executor executor, MobStoreFileStorageRegistry chmVar, DataStoreSerializer cimVar, CloseScopeFactory cndVar) {
        this.a = str;
        this.b = ProjectionIntentHelper.k(dagVar);
        this.j = cjwVar;
        this.c = ViewCompatApi19Statics.m(executor);
        this.d = chmVar;
        this.e = cimVar;
        this.h = cndVar;
    }

    public final ListenableFuture a() {
        ListenableFuture dagVar;
        synchronized (this.f) {
            ListenableFuture dagVar2 = this.g;
            if (dagVar2 != null && dagVar2.isDone()) {
                try {
                    ProjectionIntentHelper.o(this.g);
                } catch (ExecutionException e) {
                    this.g = null;
                }
            }
            if (this.g == null) {
                this.g = ProjectionIntentHelper.k(this.i.b(FutureFunctionWrappers.a(new FileDataStoreStateFn(this, 0)), this.c));
            }
            dagVar = this.g;
        }
        return dagVar;
    }

    public final Object b(Uri uri) {
        try {
            try {
                CloseScopeFactory cndVar = this.h;
                String valueOf = String.valueOf(this.a);
                FutureCloseSignal b = cndVar.b(valueOf.length() != 0 ? "Read ".concat(valueOf) : new String("Read "));
                try {
                    InputStream inputStream = (InputStream) this.d.b(uri, new MobStoreStreamTransform());
                    try {
                        ProtoSerializer cjwVar = this.j;
                        Object c = cjwVar.a.A().c(inputStream, cjwVar.b);
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        b.close();
                        return c;
                    } catch (Throwable th) {
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Throwable th2) {
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    try {
                        b.close();
                    } catch (Throwable th4) {
                    }
                    throw th3;
                }
            } catch (FileNotFoundException e) {
                if (this.d.d(uri)) {
                    throw e;
                }
                return this.j.a;
            }
        } catch (IOException e2) {
            throw PrimesMetricExtensionUtils.p(this.d, uri, e2);
        }
    }

    public final void c(Uri uri, Object obj) {
        Uri d = GalAudioStreamTypes.d(uri, ".tmp");
        try {
            CloseScopeFactory cndVar = this.h;
            String valueOf = String.valueOf(this.a);
            FutureCloseSignal b = cndVar.b(valueOf.length() != 0 ? "Write ".concat(valueOf) : new String("Write "));
            try {
                BackendStreamPair chsVar = new BackendStreamPair();
                try {
                    MobStoreFileStorageRegistry chmVar = this.d;
                    TransformChain cifVar = new TransformChain();
                    cifVar.a = new BackendStreamPair[]{chsVar};
                    OutputStream outputStream = (OutputStream) chmVar.b(d, cifVar);
                    try {
                        ((MessageLite) obj).g(outputStream);
                        if (chsVar.b == null) {
                            throw new MobStoreReadException("Cannot sync underlying stream");
                        }
                        chsVar.a.flush();
                        chsVar.b.a.getFD().sync();
                        if (outputStream != null) {
                            outputStream.close();
                        }
                        b.close();
                        this.d.c(d, uri);
                    } catch (Throwable th) {
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (Throwable th2) {
                            }
                        }
                        throw th;
                    }
                } catch (IOException e) {
                    throw PrimesMetricExtensionUtils.p(this.d, uri, e);
                }
            } catch (Throwable th3) {
                try {
                    b.close();
                } catch (Throwable th4) {
                }
                throw th3;
            }
        } catch (IOException e2) {
            if (this.d.d(ProtoMsgIntStringInt)) {
                try {
                    BackendFileSpec a = this.d.a(ProtoMsgIntStringInt);
                    a.a.k(a.d);
                } catch (IOException e3) {
                }
            }
            throw e2;
        }
    }

    @Override // defpackage.DataStoreStorage
    public final ListenableFuture d(final AsyncFunctionInterface czcVar, final Executor executor) {
        final ListenableFuture a = a();
        return this.i.b(FutureFunctionWrappers.a(new FutureSupplier() { // from class: ciz
            @Override // defpackage.FutureSupplier
            public final ListenableFuture a() {
                final FileDataStore cjfVar = FileDataStore.this;
                ListenableFuture dagVar = a;
                AsyncFunctionInterface czcVar2 = czcVar;
                Executor executor2 = executor;
                final ListenableFuture p = TransformFuture.p(dagVar, new FileDataStoreBackupFn(cjfVar, 1), czj.a);
                final ListenableFuture p2 = TransformFuture.p(p, czcVar2, executor2);
                return TransformFuture.p(p2, FutureFunctionWrappers.b(new AsyncFunctionInterface() { // from class: cjc
                    @Override // defpackage.AsyncFunctionInterface
                    public final ListenableFuture a(Object obj) {
                        final FileDataStore cjfVar2 = FileDataStore.this;
                        ListenableFuture dagVar2 = p;
                        final ListenableFuture dagVar3 = p2;
                        if (ProjectionIntentHelper.o(dagVar2).equals(ProjectionIntentHelper.o(dagVar3))) {
                            return dad.a;
                        }
                        ListenableFuture p3 = TransformFuture.p(dagVar3, FutureFunctionWrappers.b(new AsyncFunctionInterface() { // from class: cjb
                            @Override // defpackage.AsyncFunctionInterface
                            public final ListenableFuture a(Object obj2) {
                                FileDataStore cjfVar3 = FileDataStore.this;
                                ListenableFuture dagVar4 = dagVar3;
                                cjfVar3.c((Uri) ProjectionIntentHelper.o(cjfVar3.b), obj2);
                                synchronized (cjfVar3.f) {
                                    cjfVar3.g = dagVar4;
                                }
                                return dad.a;
                            }
                        }), cjfVar2.c);
                        synchronized (cjfVar2.f) {
                        }
                        return p3;
                    }
                }), czj.a);
            }
        }), czj.a);
    }
}

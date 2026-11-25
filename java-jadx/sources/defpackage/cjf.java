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
public final class cjf implements cjq {
    public final String a;
    public final dag b;
    public final Executor c;
    public final chm d;
    public final cim e;
    private final cnd h;
    private final cjw j;
    public final Object f = new Object();
    private final czq i = czq.a();
    public dag g = null;

    public cjf(String str, dag dagVar, cjw cjwVar, Executor executor, chm chmVar, cim cimVar, cnd cndVar) {
        this.a = str;
        this.b = hh.k(dagVar);
        this.j = cjwVar;
        this.c = hi.m(executor);
        this.d = chmVar;
        this.e = cimVar;
        this.h = cndVar;
    }

    public final dag a() {
        dag dagVar;
        synchronized (this.f) {
            dag dagVar2 = this.g;
            if (dagVar2 != null && dagVar2.isDone()) {
                try {
                    hh.o(this.g);
                } catch (ExecutionException e) {
                    this.g = null;
                }
            }
            if (this.g == null) {
                this.g = hh.k(this.i.b(cnm.a(new ciy(this, 0)), this.c));
            }
            dagVar = this.g;
        }
        return dagVar;
    }

    public final Object b(Uri uri) {
        try {
            try {
                cnd cndVar = this.h;
                String valueOf = String.valueOf(this.a);
                cng b = cndVar.b(valueOf.length() != 0 ? "Read ".concat(valueOf) : new String("Read "));
                try {
                    InputStream inputStream = (InputStream) this.d.b(uri, new cie());
                    try {
                        cjw cjwVar = this.j;
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
            throw bvs.p(this.d, uri, e2);
        }
    }

    public final void c(Uri uri, Object obj) {
        Uri d = bxr.d(uri, ".tmp");
        try {
            cnd cndVar = this.h;
            String valueOf = String.valueOf(this.a);
            cng b = cndVar.b(valueOf.length() != 0 ? "Write ".concat(valueOf) : new String("Write "));
            try {
                chs chsVar = new chs();
                try {
                    chm chmVar = this.d;
                    cif cifVar = new cif();
                    cifVar.a = new chs[]{chsVar};
                    OutputStream outputStream = (OutputStream) chmVar.b(d, cifVar);
                    try {
                        ((der) obj).g(outputStream);
                        if (chsVar.b == null) {
                            throw new chx("Cannot sync underlying stream");
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
                    throw bvs.p(this.d, uri, e);
                }
            } catch (Throwable th3) {
                try {
                    b.close();
                } catch (Throwable th4) {
                }
                throw th3;
            }
        } catch (IOException e2) {
            if (this.d.d(d)) {
                try {
                    chk a = this.d.a(d);
                    a.a.k(a.d);
                } catch (IOException e3) {
                }
            }
            throw e2;
        }
    }

    @Override // defpackage.cjq
    public final dag d(final czc czcVar, final Executor executor) {
        final dag a = a();
        return this.i.b(cnm.a(new czb() { // from class: ciz
            @Override // defpackage.czb
            public final dag a() {
                final cjf cjfVar = cjf.this;
                dag dagVar = a;
                czc czcVar2 = czcVar;
                Executor executor2 = executor;
                final dag p = cyt.p(dagVar, new cja(cjfVar, 1), czj.a);
                final dag p2 = cyt.p(p, czcVar2, executor2);
                return cyt.p(p2, cnm.b(new czc() { // from class: cjc
                    @Override // defpackage.czc
                    public final dag a(Object obj) {
                        final cjf cjfVar2 = cjf.this;
                        dag dagVar2 = p;
                        final dag dagVar3 = p2;
                        if (hh.o(dagVar2).equals(hh.o(dagVar3))) {
                            return dad.a;
                        }
                        dag p3 = cyt.p(dagVar3, cnm.b(new czc() { // from class: cjb
                            @Override // defpackage.czc
                            public final dag a(Object obj2) {
                                cjf cjfVar3 = cjf.this;
                                dag dagVar4 = dagVar3;
                                cjfVar3.c((Uri) hh.o(cjfVar3.b), obj2);
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

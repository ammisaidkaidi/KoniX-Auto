package defpackage;

import android.content.Context;
import android.content.IntentFilter;
import java.io.File;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bxb implements bwq {
    public final dai a;
    public final dgz b;

    public bxb(bwo bwoVar, final Context context, dai daiVar, dgz dgzVar, dny dnyVar, final dny dnyVar2) {
        new AtomicBoolean(false);
        new IntentFilter("android.intent.action.BATTERY_CHANGED");
        bwoVar.a(daiVar, dgzVar, dnyVar);
        this.a = daiVar;
        this.b = dgzVar;
        ex.i(new col() { // from class: bwy
            @Override // defpackage.col
            public final Object a() {
                Object e;
                bxb bxbVar = bxb.this;
                Context context2 = context;
                synchronized (bxbVar) {
                    String b = bvk.b();
                    String concat = String.valueOf(b).concat(".trace");
                    File filesDir = context2.getFilesDir();
                    String valueOf = String.valueOf(b);
                    File file = new File(filesDir, valueOf.length() != 0 ? "primes_profiling_".concat(valueOf) : new String("primes_profiling_"));
                    if (file.exists() || file.mkdir()) {
                        File file2 = new File(file, concat);
                        file2.deleteOnExit();
                        try {
                            if (file2.exists()) {
                                file2.delete();
                            }
                        } catch (RuntimeException e2) {
                        }
                        e = coc.e(file2);
                    } else {
                        e = cns.a;
                    }
                }
                return e;
            }
        });
        ex.i(new col() { // from class: bwz
            @Override // defpackage.col
            public final Object a() {
                return ((bxd) dny.this).a();
            }
        });
    }

    public final synchronized void a() {
    }

    @Override // defpackage.bwq
    public final void u() {
        hh.l(new Runnable() { // from class: bxa
            @Override // java.lang.Runnable
            public final void run() {
                bxb.this.a();
            }
        }, this.a);
    }
}

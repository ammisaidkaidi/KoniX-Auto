package defpackage;

import android.accounts.Account;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.SystemClock;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public class bkc {
    public final Context a;
    public final String b;
    public final bjy c;
    public final bjw d;
    public final bks e;
    public final Looper f;
    public final int g;
    public final bkf h;
    public final bln i;

    public bkc(Context context, bjy bjyVar, bjw bjwVar, bkb bkbVar) {
        hr.m(context, "Null context is not permitted.");
        hr.m(bkbVar, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        this.a = context.getApplicationContext();
        String str = null;
        if (Build.VERSION.SDK_INT >= 30) {
            try {
                str = (String) Context.class.getMethod("getAttributionTag", new Class[0]).invoke(context, new Object[0]);
            } catch (IllegalAccessException e) {
            } catch (NoSuchMethodException e2) {
            } catch (InvocationTargetException e3) {
            }
        }
        this.b = str;
        this.c = bjyVar;
        this.d = bjwVar;
        this.f = bkbVar.b;
        this.e = new bks(bjyVar, bjwVar, str);
        this.h = new blc(this);
        bln c = bln.c(this.a);
        this.i = c;
        this.g = c.i.getAndIncrement();
        ho hoVar = bkbVar.c;
        Handler handler = c.l;
        handler.sendMessage(handler.obtainMessage(7, this));
    }

    private final brh a(int i, bmc bmcVar) {
        brk brkVar = new brk();
        bln blnVar = this.i;
        int i2 = bmcVar.c;
        if (i2 != 0) {
            bks bksVar = this.e;
            bls blsVar = null;
            if (blnVar.e()) {
                bnq bnqVar = bnp.a().a;
                boolean z = true;
                if (bnqVar != null) {
                    if (bnqVar.b) {
                        boolean z2 = bnqVar.c;
                        blj b = blnVar.b(bksVar);
                        if (b != null) {
                            Object obj = b.b;
                            if (obj instanceof bmn) {
                                bmn bmnVar = (bmn) obj;
                                if (bmnVar.z() && !bmnVar.n()) {
                                    bms b2 = bls.b(b, bmnVar, i2);
                                    if (b2 != null) {
                                        b.i++;
                                        z = b2.c;
                                    }
                                }
                            }
                        }
                        z = z2;
                    }
                }
                blsVar = new bls(blnVar, i2, bksVar, z ? System.currentTimeMillis() : 0L, z ? SystemClock.elapsedRealtime() : 0L);
            }
            if (blsVar != null) {
                bro broVar = brkVar.a;
                Handler handler = blnVar.l;
                handler.getClass();
                broVar.f(new bld(handler, 0), blsVar);
            }
        }
        bkp bkpVar = new bkp(i, bmcVar, brkVar);
        Handler handler2 = blnVar.l;
        handler2.sendMessage(handler2.obtainMessage(4, new blv(bkpVar, blnVar.j.get(), this)));
        return brkVar.a;
    }

    public static bkc h(Context context) {
        bjy bjyVar = bik.a;
        bjv bjvVar = bjw.a;
        ho hoVar = new ho();
        bka bkaVar = new bka();
        bkaVar.a = hoVar;
        return new bkc(context, bjyVar, bjvVar, bkaVar.a());
    }

    public final bmo b() {
        Set emptySet;
        GoogleSignInAccount a;
        bmo bmoVar = new bmo();
        bjw bjwVar = this.d;
        Account account = null;
        if (!(bjwVar instanceof bju) || (a = ((bju) bjwVar).a()) == null) {
            bjw bjwVar2 = this.d;
            if (bjwVar2 instanceof bjt) {
                account = ((bjt) bjwVar2).a();
            }
        } else {
            String str = a.d;
            if (str != null) {
                account = new Account(str, "com.google");
            }
        }
        bmoVar.a = account;
        bjw bjwVar3 = this.d;
        if (bjwVar3 instanceof bju) {
            GoogleSignInAccount a2 = ((bju) bjwVar3).a();
            emptySet = a2 == null ? Collections.emptySet() : a2.a();
        } else {
            emptySet = Collections.emptySet();
        }
        if (bmoVar.b == null) {
            bmoVar.b = new vd();
        }
        bmoVar.b.addAll(emptySet);
        bmoVar.d = this.a.getClass().getName();
        bmoVar.c = this.a.getPackageName();
        return bmoVar;
    }

    public final brh c(bmc bmcVar) {
        return a(0, bmcVar);
    }

    public final brh d(bmc bmcVar) {
        return a(1, bmcVar);
    }

    public final brh e(final String str) {
        bmb a = bmc.a();
        a.a = new blx() { // from class: bou
            @Override // defpackage.blx
            public final void a(Object obj, Object obj2) {
                String str2 = str;
                bqi bqiVar = new bqi((brk) obj2);
                bqj bqjVar = (bqj) ((bqk) obj).w();
                Parcel a2 = bqjVar.a();
                asr.c(a2, bqiVar);
                a2.writeString(str2);
                bqjVar.c(5, a2);
            }
        };
        return c(a.a());
    }

    public final brh f(final String str, final int i, final String[] strArr, final byte[] bArr) {
        bmb a = bmc.a();
        a.a = new blx() { // from class: bow
            @Override // defpackage.blx
            public final void a(Object obj, Object obj2) {
                String str2 = str;
                int i2 = i;
                String[] strArr2 = strArr;
                byte[] bArr2 = bArr;
                bqi bqiVar = new bqi((brk) obj2);
                bqj bqjVar = (bqj) ((bqk) obj).w();
                Parcel a2 = bqjVar.a();
                asr.c(a2, bqiVar);
                a2.writeString(str2);
                a2.writeInt(i2);
                a2.writeStringArray(strArr2);
                a2.writeByteArray(bArr2);
                bqjVar.c(1, a2);
            }
        };
        return c(a.a());
    }

    public final brh g(final String str, final String str2) {
        bmb a = bmc.a();
        a.a = new blx() { // from class: bot
            @Override // defpackage.blx
            public final void a(Object obj, Object obj2) {
                String str3 = str;
                String str4 = str2;
                bqi bqiVar = new bqi((brk) obj2);
                bqj bqjVar = (bqj) ((bqk) obj).w();
                Parcel a2 = bqjVar.a();
                asr.c(a2, bqiVar);
                a2.writeString(str3);
                a2.writeString(str4);
                a2.writeString(null);
                bqjVar.c(11, a2);
            }
        };
        return c(a.a());
    }

    public final void i(bmc bmcVar) {
        a(2, bmcVar);
    }
}

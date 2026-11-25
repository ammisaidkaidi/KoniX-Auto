package defpackage;

import android.car.navigation.CarNavigationStatusManager;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import j$.util.Optional;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class awn implements clx {
    public static final csz a = csz.g("com/google/android/apps/auto/aareceiver/cluster/TurnDataNavStatusListener");
    public final Context b;
    public final axc c;
    public final Configuration d;
    public String g;
    public String h;
    public ddf j;
    private final CarNavigationStatusManager k;
    public final Object e = new Object();
    public Optional f = Optional.empty();
    public final awk i = new awk(this);

    public awn(Context context, CarNavigationStatusManager carNavigationStatusManager, axc axcVar, Configuration configuration) {
        this.b = context;
        this.k = carNavigationStatusManager;
        this.c = axcVar;
        this.d = configuration;
    }

    public static d a(ckm ckmVar) {
        ddf n = d.d.n();
        if ((ckmVar.a & 1) != 0) {
            int i = ckmVar.b;
            if (n.c) {
                n.k();
                n.c = false;
            }
            ((d) n.b).a = i;
        }
        int i2 = 2;
        if ((ckmVar.a & 2) != 0) {
            String str = ckmVar.c;
            if (n.c) {
                n.k();
                n.c = false;
            }
            d dVar = (d) n.b;
            str.getClass();
            dVar.b = str;
        }
        if ((ckmVar.a & 4) != 0) {
            switch ((bxx.b(ckmVar.d) != 0 ? r6 : 1) - 1) {
                case 1:
                    i2 = 3;
                    break;
                case 2:
                case 3:
                    i2 = 4;
                    break;
                case 4:
                case 5:
                    i2 = 5;
                    break;
                case 6:
                    i2 = 6;
                    break;
                case 7:
                    i2 = 7;
                    break;
            }
            if (n.c) {
                n.k();
                n.c = false;
            }
            ((d) n.b).c = r.d(i2);
        }
        return (d) n.h();
    }

    public final void b() {
        this.h = null;
        this.g = null;
    }

    public final void c(Bundle bundle) {
        try {
            if (!this.c.e()) {
                this.c.b(2);
                return;
            }
            try {
                byte[] byteArray = bundle.getByteArray("navstate2");
                if (byteArray != null) {
                    ((k) ddk.r(k.e, byteArray, dcz.a())).toString();
                }
            } catch (ddu e) {
            }
            if (Build.VERSION.SDK_INT >= 29) {
                this.k.sendNavigationStateChange(bundle);
            } else {
                this.k.sendEvent(1, bundle);
            }
        } catch (IllegalStateException e2) {
            ((csx) ((csx) a.b().g(e2)).h("com/google/android/apps/auto/aareceiver/cluster/TurnDataNavStatusListener", "trySendTurnData", 785, "TurnDataNavStatusListener.java")).n("Attempted to send navigation state change without nav focus");
        }
    }
}

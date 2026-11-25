package defpackage;

import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Display;
import com.achour.tweaks.P;
import j$.util.Collection;
import j$.util.function.Function;
import j$.util.function.Predicate;
import j$.util.stream.Collectors;
import j$.util.stream.Stream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bhc {
    public static final /* synthetic */ int c = 0;
    private static final csz d = csz.g("com/google/android/apps/auto/aareceiver/video/ScaledVideoConfiguration");
    private static final cqh e = cqh.r("seahawk", "coral");
    public final ckz a;
    public final double b;
    private final int f;
    private final int g;

    public bhc(ckz ckzVar, double d2, int i, int i2) {
        this.a = ckzVar;
        this.b = d2;
        this.f = i;
        this.g = i2;
    }

    public static double a(List list, int i, int i2) {
        if (list == null) {
            return 1.0d;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            bhc bhcVar = (bhc) it.next();
            if (bhcVar.f == i && bhcVar.g == i2) {
                return bhcVar.b;
            }
        }
        return 1.0d;
    }

    public static List b(int i, int i2, Display display) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        display.getMetrics(displayMetrics);
        int fps = P.fps();
        int i3 = fps != 0 ? fps : display.getMode().getRefreshRate() > 59.0f ? 60 : 30;
        float f = displayMetrics.xdpi;
        float f2 = displayMetrics.ydpi;
        bgk a = bgm.a(i, i2, f, f2);
        if (a != null) {
            return c(i, i2, a.b, f, f2, i3);
        }
        Stream stream = Collection.EL.stream(e);
        final String str = Build.DEVICE;
        str.getClass();
        if (stream.anyMatch(new Predicate() { // from class: bhb
            @Override // j$.util.function.Predicate
            public final /* synthetic */ Predicate and(Predicate predicate) {
                return Predicate.CC.$default$and(this, predicate);
            }

            @Override // j$.util.function.Predicate
            public final /* synthetic */ Predicate negate() {
                return Predicate.CC.$default$negate(this);
            }

            @Override // j$.util.function.Predicate
            public final /* synthetic */ Predicate or(Predicate predicate) {
                return Predicate.CC.$default$or(this, predicate);
            }

            @Override // j$.util.function.Predicate
            public final boolean test(Object obj) {
                return str.equalsIgnoreCase((String) obj);
            }
        })) {
            ((csx) d.c().h("com/google/android/apps/auto/aareceiver/video/ScaledVideoConfiguration", "getConfigurations", 194, "ScaledVideoConfiguration.java")).n("Using densityDpi-based calculation for a proper screen density.");
            float f3 = displayMetrics.densityDpi;
            float f4 = displayMetrics.densityDpi;
            bgk a2 = bgm.a(i, i2, f3, f4);
            if (a2 != null) {
                return c(i, i2, a2.b, f3, f4, i3);
            }
        }
        String valueOf = String.valueOf(display);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 82);
        sb.append("No valid screen density found, screenWidth=");
        sb.append(i);
        sb.append(", screenHeight=");
        sb.append(i2);
        sb.append(", ");
        sb.append(valueOf);
        throw new IllegalStateException(sb.toString());
    }

    static List c(final int i, final int i2, final int i3, final float f, final float f2, final int i4) {
        ArrayList arrayList = new ArrayList();
        int i5 = i2 > i ? i : i2;
        int i6 = i2 > i ? i2 : i;
        if (i5 > i6) {
            if (i5 > 1280 || i6 > 720) {
                arrayList.add(cky.VIDEO_1080x1920);
            }
            if (i5 > 800 || i6 > 480) {
                arrayList.add(cky.VIDEO_720x1280);
            }
        } else {
            if (i6 > 1280 || i5 > 720) {
                arrayList.add(cky.VIDEO_1920x1080);
            }
            if (i6 > 800 || i5 > 480) {
                arrayList.add(cky.VIDEO_1280x720);
            }
        }
        arrayList.add(cky.VIDEO_800x480);
        return (List) Collection.EL.stream(arrayList).map(new Function() { // from class: bha
            @Override // j$.util.function.Function
            public final /* synthetic */ Function andThen(Function function) {
                return Function.CC.$default$andThen(this, function);
            }

            @Override // j$.util.function.Function
            public final Object apply(Object obj) {
                int i7;
                float f3;
                float f4;
                double d2;
                int i8;
                int i9;
                int i10 = i;
                int i11 = i2;
                int i12 = i3;
                float f5 = f;
                float f6 = f2;
                int i13 = i4;
                cky ckyVar = (cky) obj;
                int i14 = bhc.c;
                cky ckyVar2 = cky.VIDEO_800x480;
                int i15 = 2160;
                switch (ckyVar) {
                    case VIDEO_800x480:
                        i7 = 800;
                        break;
                    case VIDEO_1280x720:
                        i7 = 1280;
                        break;
                    case VIDEO_1920x1080:
                        i7 = 1920;
                        break;
                    case VIDEO_2560x1440:
                        i7 = 2560;
                        break;
                    case VIDEO_3840x2160:
                        i7 = 3840;
                        break;
                    case VIDEO_720x1280:
                        i7 = 720;
                        break;
                    case VIDEO_1080x1920:
                        i7 = 1080;
                        break;
                    case VIDEO_1440x2560:
                        i7 = 1440;
                        break;
                    case VIDEO_2160x3840:
                        i7 = 2160;
                        break;
                    default:
                        int i16 = ckyVar.j;
                        StringBuilder sb = new StringBuilder(31);
                        sb.append("Unknown resolution: ");
                        sb.append(i16);
                        throw new AssertionError(sb.toString());
                }
                switch (ckyVar) {
                    case VIDEO_800x480:
                        i15 = 480;
                        break;
                    case VIDEO_1280x720:
                        i15 = 720;
                        break;
                    case VIDEO_1920x1080:
                        i15 = 1080;
                        break;
                    case VIDEO_2560x1440:
                        i15 = 1440;
                        break;
                    case VIDEO_3840x2160:
                        break;
                    case VIDEO_720x1280:
                        i15 = 1280;
                        break;
                    case VIDEO_1080x1920:
                        i15 = 1920;
                        break;
                    case VIDEO_1440x2560:
                        i15 = 2560;
                        break;
                    case VIDEO_2160x3840:
                        i15 = 3840;
                        break;
                    default:
                        int i17 = ckyVar.j;
                        StringBuilder sb2 = new StringBuilder(31);
                        sb2.append("Unknown resolution: ");
                        sb2.append(i17);
                        throw new AssertionError(sb2.toString());
                }
                float f7 = i11 / f6;
                if (i7 < i10 || i15 < i11) {
                    double d3 = i10;
                    double d4 = i7;
                    Double.isNaN(d3);
                    Double.isNaN(d4);
                    double d5 = d3 / d4;
                    double d6 = i11;
                    f3 = f5;
                    f4 = f6;
                    double d7 = i15;
                    Double.isNaN(d6);
                    Double.isNaN(d7);
                    double max = Math.max(d5, d6 / d7);
                    if (i11 > i10) {
                        double d8 = i12;
                        Double.isNaN(d8);
                        if (d8 / max < 120.0d) {
                            Double.isNaN(d8);
                            d2 = d8 / 120.0d;
                        }
                    }
                    d2 = max;
                } else {
                    f3 = f5;
                    f4 = f6;
                    d2 = 1.0d;
                }
                double d9 = i10;
                Double.isNaN(d9);
                double d10 = d9 / d2;
                if (i7 > d10) {
                    i8 = i7 - ((int) Math.round(d10));
                    if (i8 % 2 == 1) {
                        i8++;
                    }
                } else {
                    i8 = 0;
                }
                double d11 = i11;
                Double.isNaN(d11);
                double d12 = d11 / d2;
                if (i15 > d12) {
                    i9 = i15 - ((int) Math.round(d12));
                    if (i9 % 2 == 1) {
                        i9++;
                    }
                } else {
                    i9 = 0;
                }
                int i18 = i13 >= 60 ? 1 : 2;
                double d13 = i12;
                Double.isNaN(d13);
                int round = (int) Math.round(d13 / d2);
                int i19 = i9 / 2;
                int i20 = i8 / 2;
                ddf n = ckz.m.n();
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ckz ckzVar = (ckz) n.b;
                ckzVar.b = ckyVar.j;
                int i21 = ckzVar.a | 1;
                ckzVar.a = i21;
                ckzVar.c = i18;
                int i22 = i21 | 2;
                ckzVar.a = i22;
                int i23 = i22 | 4;
                ckzVar.a = i23;
                ckzVar.d = i8;
                int i24 = i23 | 8;
                ckzVar.a = i24;
                ckzVar.e = i9;
                ckzVar.a = i24 | 16;
                ckzVar.f = round;
                int round2 = Math.round((i15 - i9) / f7);
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ckz ckzVar2 = (ckz) n.b;
                int i25 = ckzVar2.a | 256;
                ckzVar2.a = i25;
                ckzVar2.j = round2;
                int i26 = i25 | 32;
                ckzVar2.a = i26;
                ckzVar2.g = 3;
                int i27 = i26 | 64;
                ckzVar2.a = i27;
                ckzVar2.h = 950;
                ckzVar2.a = i27 | 128;
                double d14 = f3 / f4;
                Double.isNaN(d14);
                ckzVar2.i = (int) (d14 * 10000.0d);
                ddf n2 = ckx.f.n();
                ddf n3 = cke.f.n();
                if (n3.c) {
                    n3.k();
                    n3.c = false;
                }
                cke ckeVar = (cke) n3.b;
                int i28 = ckeVar.a | 1;
                ckeVar.a = i28;
                ckeVar.b = i19;
                int i29 = i28 | 2;
                ckeVar.a = i29;
                ckeVar.c = i19;
                int i30 = i29 | 4;
                ckeVar.a = i30;
                ckeVar.d = i20;
                ckeVar.a = i30 | 8;
                ckeVar.e = i20;
                if (n2.c) {
                    n2.k();
                    n2.c = false;
                }
                ckx ckxVar = (ckx) n2.b;
                cke ckeVar2 = (cke) n3.h();
                ckeVar2.getClass();
                ckxVar.b = ckeVar2;
                ckxVar.a = 1 | ckxVar.a;
                if (n2.c) {
                    n2.k();
                    n2.c = false;
                }
                ckx ckxVar2 = (ckx) n2.b;
                ckxVar2.e = 0;
                ckxVar2.a |= 8;
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ckz ckzVar3 = (ckz) n.b;
                ckx ckxVar3 = (ckx) n2.h();
                ckxVar3.getClass();
                ckzVar3.l = ckxVar3;
                ckzVar3.a |= 1024;
                return new bhc((ckz) n.h(), d2, i7, i15);
            }

            @Override // j$.util.function.Function
            public final /* synthetic */ Function compose(Function function) {
                return Function.CC.$default$compose(this, function);
            }
        }).collect(Collectors.toCollection(coy.b));
    }
}

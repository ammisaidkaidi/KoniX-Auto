package defpackage;

import java.util.ArrayList;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class VideoResolutionPicker {
    private static final ImmutableSet a = ImmutableSet.r(120, 160, 213, 240, 320, 480, new Integer[0]);

    public static DensityInfo a(int i, int i2, float f, float f2) {
        double d = i;
        double d2 = f;
        Double.isNaN(ProtoMsgIntStringInt);
        Double.isNaN(d2);
        double d3 = (ProtoMsgIntStringInt / d2) * 25.4d;
        double d4 = i2;
        double d5 = f2;
        Double.isNaN(d4);
        Double.isNaN(d5);
        double d6 = 25.4d * (d4 / d5);
        Double.isNaN(ProtoMsgIntStringInt);
        Double.isNaN(d4);
        DisplayInfo bglVar = new DisplayInfo(i, i2, d3, d6, f / f2, d3 / d, d6 / d4);
        ArrayList<DensityInfo> arrayList = new ArrayList();
        int i3 = 120;
        while (i3 <= 480) {
            double d7 = i3;
            double d8 = bglVar.c;
            Double.isNaN(d7);
            long round = Math.round(d7 / d8);
            Double.isNaN(d7);
            double d9 = d7 / 160.0d;
            int i4 = bglVar.b;
            int i5 = bglVar.a;
            double d10 = bglVar.d;
            double d11 = bglVar.e;
            double d12 = 19.0d * d9;
            double d13 = d12 * d11;
            double atan = Math.atan(d13 / 1900.0d);
            double d14 = bglVar.e;
            int i6 = (int) round;
            double d15 = i5;
            Double.isNaN(d15);
            double d16 = d15 / d9;
            double d17 = i4;
            Double.isNaN(d17);
            double d18 = d14 * d9 * 64.0d;
            arrayList.add(new DensityInfo(bglVar, i3, i6, d16, d17 / d9, d9 * d10, d9 * d11, d12, d13, (atan + atan) * 3437.7467707849396d, d18));
            i3++;
            bglVar = bglVar;
        }
        double d19 = Double.POSITIVE_INFINITY;
        double d20 = Double.POSITIVE_INFINITY;
        DensityInfo bgkVar = null;
        DensityInfo bgkVar2 = null;
        for (DensityInfo bgkVar3 : arrayList) {
            int i7 = bgkVar3.b;
            if (bgkVar3.c >= 748.0d && bgkVar3.d >= 450.0d) {
                double d21 = bgkVar3.e;
                if (d21 >= 12.0d) {
                    DisplayInfo bglVar2 = bgkVar3.a;
                    if (bgkVar3.f >= 11.3d) {
                        double abs = Math.abs(d21 - 14.98d);
                        boolean contains = a.contains(Integer.valueOf(i7));
                        if (MediaBrowserConnectCallbackRunnable < d19) {
                            bgkVar2 = bgkVar3;
                        }
                        if (MediaBrowserConnectCallbackRunnable < d19) {
                            d19 = abs;
                        }
                        if (contains && MediaBrowserConnectCallbackRunnable < d20) {
                            bgkVar = bgkVar3;
                            d20 = abs;
                        }
                    }
                }
            }
        }
        if (bgkVar != null) {
            return bgkVar;
        }
        if (bgkVar2 == null) {
            return null;
        }
        return bgkVar2;
    }
}

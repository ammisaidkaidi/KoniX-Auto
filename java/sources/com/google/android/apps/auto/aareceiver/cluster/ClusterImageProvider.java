package com.google.android.apps.auto.aareceiver.cluster;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.ArrayMap;
import defpackage.MetricNameComparator;
import defpackage.ImmutableSet;
import defpackage.ImmutableBiMapBuilder;
import defpackage.ImmutableSortedMap;
import defpackage.ParameterizedLoggerApi;
import defpackage.FloggerLoggerFactory;
import defpackage.Base32Encoding;
import defpackage.EncodingException;
import defpackage.BaseEncoding;
import defpackage.EncodingAlphabet;
import defpackage.NavInstructionTypeEnum;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ClusterImageProvider extends ContentProvider {
    static final byte[] a;
    public static final Uri b;
    private static final FloggerLoggerFactory c;
    private static final ImmutableSortedMap d;
    private static final ImmutableSortedMap e;
    private static final ImmutableSet f;
    private static final ImmutableSet g;
    private static final ImmutableSet h;
    private final Object i = new Object();
    private Map j;

    static {
        EncodingAlphabet cxeVar = cxe.d;
        try {
            CharSequence charSequence = "89504E470D0A1A0A";
            Character ch = ((BaseEncoding) cxeVar).c;
            if (ch != null) {
                char charValue = ch.charValue();
                int length = "89504E470D0A1A0A".length() - 1;
                while (length >= 0 && "89504E470D0A1A0A".charAt(length) == charValue) {
                    length--;
                }
                charSequence = "89504E470D0A1A0A".subSequence(0, length + 1);
            }
            int length2 = (int) (((((BaseEncoding) cxeVar).b.d * charSequence.length()) + 7) / 8);
            byte[] bArr = new byte[length2];
            if (charSequence.length() % 2 == 1) {
                int length3 = charSequence.length();
                StringBuilder sb = new StringBuilder(32);
                sb.append("Invalid input length ");
                sb.append(length3);
                throw new EncodingException(sb.toString());
            }
            int i = 0;
            int i2 = 0;
            while (NavInstructionTypeEnum < charSequence.length()) {
                bArr[i2] = (byte) ((((Base32Encoding) cxeVar).b.b(charSequence.charAt(NavInstructionTypeEnum)) << 4) | ((Base32Encoding) cxeVar).b.b(charSequence.charAt(NavInstructionTypeEnum + 1)));
                i += 2;
                i2++;
            }
            if (i2 != length2) {
                byte[] bArr2 = new byte[i2];
                System.arraycopy(bArr, 0, bArr2, 0, i2);
                bArr = bArr2;
            }
            a = bArr;
            c = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider");
            b = Uri.parse("content://com.google.android.apps.auto.aareceiver.cluster.clusterimageprovider/images");
            ImmutableBiMapBuilder crbVar = new ImmutableBiMapBuilder(bup.b);
            crbVar.f(67, "ccw_roundabout_1_67");
            crbVar.f(112, "ccw_roundabout_68_112");
            crbVar.f(157, "ccw_roundabout_113_157");
            crbVar.f(202, "ccw_roundabout_158_202");
            crbVar.f(247, "ccw_roundabout_203_247");
            crbVar.f(292, "ccw_roundabout_248_292");
            crbVar.f(337, "ccw_roundabout_293_337");
            crbVar.f(360, "ccw_roundabout_338_360");
            d = crbVar.c();
            ImmutableBiMapBuilder crbVar2 = new ImmutableBiMapBuilder(bup.b);
            crbVar2.f(67, "cw_roundabout_1_67");
            crbVar2.f(112, "cw_roundabout_68_112");
            crbVar2.f(157, "cw_roundabout_113_157");
            crbVar2.f(202, "cw_roundabout_158_202");
            crbVar2.f(247, "cw_roundabout_203_247");
            crbVar2.f(292, "cw_roundabout_248_292");
            crbVar2.f(337, "cw_roundabout_293_337");
            crbVar2.f(360, "cw_roundabout_338_360");
            e = crbVar2.c();
            f = ImmutableSet.r(i.ROUNDABOUT_ENTER_AND_EXIT_CCW_NORMAL_RIGHT, i.ROUNDABOUT_ENTER_AND_EXIT_CCW_SHARP_RIGHT, i.ROUNDABOUT_ENTER_AND_EXIT_CCW_SLIGHT_RIGHT, i.ROUNDABOUT_ENTER_AND_EXIT_CCW_STRAIGHT, i.ROUNDABOUT_ENTER_AND_EXIT_CCW_U_TURN, i.ROUNDABOUT_ENTER_AND_EXIT_CCW, new NavInstructionTypeEnum[0]);
            g = ImmutableSet.r(i.ROUNDABOUT_ENTER_AND_EXIT_CW_NORMAL_LEFT, i.ROUNDABOUT_ENTER_AND_EXIT_CW_SHARP_LEFT, i.ROUNDABOUT_ENTER_AND_EXIT_CW_SLIGHT_LEFT, i.ROUNDABOUT_ENTER_AND_EXIT_CW_STRAIGHT, i.ROUNDABOUT_ENTER_AND_EXIT_CW_U_TURN, i.ROUNDABOUT_ENTER_AND_EXIT_CW, new NavInstructionTypeEnum[0]);
            h = ImmutableSet.r(i.ROUNDABOUT_ENTER_AND_EXIT_CCW_NORMAL_LEFT, i.ROUNDABOUT_ENTER_AND_EXIT_CCW_SHARP_LEFT, i.ROUNDABOUT_ENTER_AND_EXIT_CCW_SLIGHT_LEFT, i.ROUNDABOUT_ENTER_AND_EXIT_CW_NORMAL_RIGHT, i.ROUNDABOUT_ENTER_AND_EXIT_CW_SHARP_RIGHT, i.ROUNDABOUT_ENTER_AND_EXIT_CW_SLIGHT_RIGHT, new NavInstructionTypeEnum[0]);
        } catch (EncodingException e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    @Override // android.content.ContentProvider
    public final int delete(Uri uri, String str, String[] strArr) {
        int size;
        if (!uri.equals(b)) {
            return 0;
        }
        synchronized (this.i) {
            size = this.j.size();
            Iterator it = this.j.entrySet().iterator();
            while (it.hasNext()) {
                try {
                    File file = (File) ((Map.Entry) it.next()).getValue();
                    if (file != null) {
                        file.delete();
                    }
                } catch (SecurityException e2) {
                }
            }
            this.j.clear();
        }
        return size;
    }

    @Override // android.content.ContentProvider
    public final String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final Uri insert(Uri uri, ContentValues contentValues) {
        Integer asInteger;
        NavInstructionTypeEnum b2;
        String format;
        Uri build;
        if (!uri.equals(b) || (asInteger = contentValues.getAsInteger("maneuver")) == null || (b2 = i.b(asInteger.intValue())) == null) {
            return null;
        }
        byte[] asByteArray = contentValues.getAsByteArray("image");
        Integer asInteger2 = contentValues.getAsInteger("turnangle");
        if (g.contains(b2)) {
            if (asInteger2 == null || asInteger2.intValue() > 360 || asInteger2.intValue() <= 0) {
                return null;
            }
            Map.Entry ceilingEntry = e.ceilingEntry(asInteger2);
            ceilingEntry.getClass();
            format = (String) ceilingEntry.getValue();
            build = uri.buildUpon().appendPath(format).build();
        } else if (f.contains(b2)) {
            if (asInteger2 == null || asInteger2.intValue() > 360 || asInteger2.intValue() <= 0) {
                return null;
            }
            Map.Entry ceilingEntry2 = d.ceilingEntry(asInteger2);
            ceilingEntry2.getClass();
            format = (String) ceilingEntry2.getValue();
            build = uri.buildUpon().appendPath(format).build();
        } else {
            if (h.contains(b2)) {
                return null;
            }
            format = new DecimalFormat("################000").format(b2.a());
            build = uri.buildUpon().appendPath(format).build();
        }
        synchronized (this.i) {
            File file = (File) this.j.get(build);
            if (file != null && file.exists()) {
                return build;
            }
            if (asByteArray == null) {
                ((ParameterizedLoggerApi) c.c().h("com/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider", "insert", 238, "ClusterImageProvider.java")).n("No image to insert provided");
                return null;
            }
            int length = asByteArray.length;
            byte[] bArr = a;
            if (length >= bArr.length && Arrays.equals(Arrays.copyOf(asByteArray, bArr.length), bArr)) {
                if (length > 8392729) {
                    ((ParameterizedLoggerApi) c.c().h("com/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider", "insert", 245, "ClusterImageProvider.java")).q("Image too large. File size is: %d, the maximum file size is%d", length, 8392729);
                    return null;
                }
                if (BitmapFactory.decodeByteArray(asByteArray, 0, length) == null) {
                    ((ParameterizedLoggerApi) c.c().h("com/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider", "insert", 251, "ClusterImageProvider.java")).n("Image provided is not a valid PNG file");
                    return null;
                }
                try {
                    File createTempFile = File.createTempFile(format, ".png");
                    createTempFile.deleteOnExit();
                    FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
                    fileOutputStream.write(asByteArray);
                    fileOutputStream.close();
                    this.j.put(build, createTempFile);
                    return build;
                } catch (IOException e2) {
                    ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) c.b().g(e2)).h("com/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider", "insert", 265, "ClusterImageProvider.java")).n("Failed to create temp file for cluster image");
                    return null;
                }
            }
            ((ParameterizedLoggerApi) c.c().h("com/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider", "insert", 242, "ClusterImageProvider.java")).n("Invalid image to insert provided");
            return null;
        }
    }

    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        synchronized (this.i) {
            this.j = new ArrayMap();
        }
        return true;
    }

    @Override // android.content.ContentProvider
    public final ParcelFileDescriptor openFile(Uri uri, String str) {
        ParcelFileDescriptor open;
        Uri build = uri.buildUpon().query("").build();
        synchronized (this.i) {
            if (!this.j.containsKey(build)) {
                String valueOf = String.valueOf(uri);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 25);
                sb.append("Request for invalid URI: ");
                sb.append(valueOf);
                throw new FileNotFoundException(sb.toString());
            }
            open = ParcelFileDescriptor.open((File) this.j.get(build), 268435456);
        }
        return open;
    }

    @Override // android.content.ContentProvider
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}

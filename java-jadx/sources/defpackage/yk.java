package defpackage;

import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.database.Cursor;
import android.graphics.Typeface;
import android.net.Uri;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class yk {
    public static final vh a = new vh(16);
    public static final ExecutorService b;
    public static final Object c;
    public static final vi d;

    static {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 10000L, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), new cdx(1));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        b = threadPoolExecutor;
        c = new Object();
        d = new vi();
    }

    public static yj a(String str, Context context, ye yeVar, int i) {
        Cursor cursor;
        yl[] ylVarArr;
        boolean z;
        int i2;
        List list;
        Typeface typeface = (Typeface) a.b(str);
        if (typeface != null) {
            return new yj(typeface);
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            context.getResources();
            String str2 = yeVar.a;
            ProviderInfo resolveContentProvider = packageManager.resolveContentProvider(str2, 0);
            if (resolveContentProvider == null) {
                throw new PackageManager.NameNotFoundException("No package found for authority: ".concat(str2));
            }
            if (!resolveContentProvider.packageName.equals(yeVar.b)) {
                throw new PackageManager.NameNotFoundException("Found content provider " + str2 + ", but package was not " + yeVar.b);
            }
            Signature[] signatureArr = packageManager.getPackageInfo(resolveContentProvider.packageName, 64).signatures;
            ArrayList arrayList = new ArrayList();
            for (Signature signature : signatureArr) {
                arrayList.add(signature.toByteArray());
            }
            Collections.sort(arrayList, yd.a);
            List list2 = yeVar.d;
            int i3 = 0;
            loop1: while (true) {
                cursor = null;
                if (i3 >= list2.size()) {
                    resolveContentProvider = null;
                    break;
                }
                ArrayList arrayList2 = new ArrayList((Collection) list2.get(i3));
                Collections.sort(arrayList2, yd.a);
                if (arrayList.size() == arrayList2.size()) {
                    int i4 = 0;
                    while (i4 < arrayList.size()) {
                        list = list2;
                        if (Arrays.equals((byte[]) arrayList.get(i4), (byte[]) arrayList2.get(i4))) {
                            i4++;
                            list2 = list;
                        }
                    }
                    break loop1;
                }
                list = list2;
                i3++;
                list2 = list;
            }
            if (resolveContentProvider == null) {
                ylVarArr = null;
                z = true;
            } else {
                String str3 = resolveContentProvider.authority;
                ArrayList arrayList3 = new ArrayList();
                Uri build = new Uri.Builder().scheme("content").authority(str3).build();
                Uri build2 = new Uri.Builder().scheme("content").authority(str3).appendPath("file").build();
                try {
                    Cursor query = context.getContentResolver().query(build, new String[]{"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"}, "query = ?", new String[]{yeVar.c}, null, null);
                    if (query != null) {
                        try {
                            if (query.getCount() > 0) {
                                int columnIndex = query.getColumnIndex("result_code");
                                arrayList3 = new ArrayList();
                                int columnIndex2 = query.getColumnIndex("_id");
                                int columnIndex3 = query.getColumnIndex("file_id");
                                int columnIndex4 = query.getColumnIndex("font_ttc_index");
                                int columnIndex5 = query.getColumnIndex("font_weight");
                                int columnIndex6 = query.getColumnIndex("font_italic");
                                while (query.moveToNext()) {
                                    arrayList3.add(new yl(columnIndex3 == -1 ? ContentUris.withAppendedId(build, query.getLong(columnIndex2)) : ContentUris.withAppendedId(build2, query.getLong(columnIndex3)), columnIndex4 != -1 ? query.getInt(columnIndex4) : 0, columnIndex5 != -1 ? query.getInt(columnIndex5) : 400, columnIndex6 != -1 && query.getInt(columnIndex6) == 1, columnIndex != -1 ? query.getInt(columnIndex) : 0));
                                }
                            }
                        } catch (Throwable th) {
                            th = th;
                            cursor = query;
                            if (cursor != null) {
                                cursor.close();
                            }
                            throw th;
                        }
                    }
                    if (query != null) {
                        query.close();
                    }
                    ylVarArr = (yl[]) arrayList3.toArray(new yl[0]);
                    z = false;
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            if (z) {
                i2 = -2;
            } else if (ylVarArr != null) {
                int length = ylVarArr.length;
                if (length == 0) {
                    i2 = 1;
                } else {
                    int i5 = 0;
                    while (true) {
                        if (i5 >= length) {
                            i2 = 0;
                            break;
                        }
                        int i6 = ylVarArr[i5].e;
                        if (i6 != 0) {
                            i2 = i6 < 0 ? -3 : i6;
                        } else {
                            i5++;
                        }
                    }
                }
            } else {
                i2 = 1;
            }
            if (i2 != 0) {
                return new yj(i2);
            }
            Typeface b2 = ek.a.b(context, ylVarArr, i);
            if (b2 == null) {
                return new yj(-3);
            }
            a.c(str, b2);
            return new yj(b2);
        } catch (PackageManager.NameNotFoundException e) {
            return new yj(-1);
        }
    }

    public static String b(ye yeVar, int i) {
        return yeVar.e + "-" + i;
    }
}

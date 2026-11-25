package com.android.car.ui.core;

import android.app.Application;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import com.android.car.ui.baselayout.Insets;
import defpackage.ane;
import defpackage.awq;
import defpackage.aws;
import j$.util.DesugarArrays;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

/* compiled from: PG */
/* loaded from: classes.dex */
public class CarUiInstaller extends ContentProvider {
    public static Object a(ClassLoader classLoader, Class cls, String str, Object obj, Object... objArr) {
        try {
            Method declaredMethod = classLoader.loadClass(cls.getName()).getDeclaredMethod(str, (Class[]) DesugarArrays.stream(objArr).map(awq.b).toArray(aws.b));
            declaredMethod.setAccessible(true);
            return declaredMethod.invoke(obj, objArr);
        } catch (ReflectiveOperationException | SecurityException e) {
            throw new RuntimeException(e);
        }
    }

    public static Object b(ClassLoader classLoader, Insets insets) {
        if (insets == null) {
            return null;
        }
        try {
            Constructor<?> declaredConstructor = classLoader.loadClass(Insets.class.getName()).getDeclaredConstructor(Integer.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE);
            declaredConstructor.setAccessible(true);
            return declaredConstructor.newInstance(Integer.valueOf(insets.getLeft()), Integer.valueOf(insets.getTop()), Integer.valueOf(insets.getRight()), Integer.valueOf(insets.getBottom()));
        } catch (ReflectiveOperationException | SecurityException e) {
            throw new RuntimeException();
        }
    }

    @Override // android.content.ContentProvider
    public final int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public final String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        Context context = getContext();
        if (context == null || !(context.getApplicationContext() instanceof Application)) {
            Log.e("CarUiInstaller", "CarUiInstaller had a null context!");
            return false;
        }
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(new ane());
        return true;
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

package com.android.car.ui.core;

import android.content.ContentProvider;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import java.util.ArrayList;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public class SearchResultsProvider extends ContentProvider {
    private final List a = new ArrayList();

    public static Uri a(Context context) {
        String packageName = context.getPackageName();
        String simpleName = SearchResultsProvider.class.getSimpleName();
        StringBuilder sb = new StringBuilder(String.valueOf(packageName).length() + 11 + String.valueOf(simpleName).length());
        sb.append("content://");
        sb.append(packageName);
        sb.append(".");
        sb.append(simpleName);
        return Uri.parse(sb.toString().concat("/search_results"));
    }

    @Override // android.content.ContentProvider
    public final int delete(Uri uri, String str, String[] strArr) {
        this.a.clear();
        return 0;
    }

    @Override // android.content.ContentProvider
    public final String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final Uri insert(Uri uri, ContentValues contentValues) {
        this.a.add(contentValues);
        Uri withAppendedId = ContentUris.withAppendedId(a(getContext()), this.a.size() - 1);
        getContext().getContentResolver().notifyChange(withAppendedId, null);
        return withAppendedId;
    }

    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        MatrixCursor matrixCursor = new MatrixCursor(new String[]{"primaryId", "secondary", "primary_image", "secondary_image", "title", "subtitle"});
        for (ContentValues contentValues : this.a) {
            matrixCursor.addRow(new Object[]{contentValues.get("primaryId"), contentValues.get("secondary"), contentValues.get("primary_image"), contentValues.get("secondary_image"), contentValues.get("title"), contentValues.get("subtitle")});
        }
        return matrixCursor;
    }

    @Override // android.content.ContentProvider
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}

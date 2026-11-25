package com.android.car.ui;

import android.content.Context;
import android.support.v7.app.AppCompatViewInflater;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import com.android.car.ui.recyclerview.CarUiRecyclerView;
import defpackage.ani;

/* compiled from: PG */
/* loaded from: classes.dex */
public class CarUiLayoutInflaterFactory extends AppCompatViewInflater implements LayoutInflater.Factory2 {
    @Override // android.support.v7.app.AppCompatViewInflater
    protected View createView(Context context, String str, AttributeSet attributeSet) {
        if (CarUiRecyclerView.class.getName().equals(str)) {
            return ani.a(context).createRecyclerView(context, attributeSet).getView();
        }
        if (str.contentEquals("CarUiTextView")) {
            return ani.a(context).createTextView(context, attributeSet);
        }
        if ("androidx.recyclerview.widget.RecyclerView".equals(str)) {
            return new RecyclerView(context, attributeSet);
        }
        return null;
    }

    @Override // android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return createView(context, str, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return null;
    }
}

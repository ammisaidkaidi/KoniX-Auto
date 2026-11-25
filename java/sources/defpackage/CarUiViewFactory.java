package defpackage;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.android.car.ui.recyclerview.CarUiRecyclerView;

/* compiled from: PG */
/* loaded from: classes.dex */
public interface CarUiViewFactory {
    CarUiRecyclerView createRecyclerView(Context context, AttributeSet attributeSet);

    CarUiTextViewBase createTextView(Context context, AttributeSet attributeSet);

    CarUiToolbarController installBaseLayoutAround(View view, CarUiInsetsListener ancVar, boolean z, boolean z2);
}

package defpackage;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.android.car.ui.recyclerview.CarUiRecyclerView;

/* compiled from: PG */
/* loaded from: classes.dex */
public interface anh {
    CarUiRecyclerView createRecyclerView(Context context, AttributeSet attributeSet);

    asl createTextView(Context context, AttributeSet attributeSet);

    are installBaseLayoutAround(View view, anc ancVar, boolean z, boolean z2);
}

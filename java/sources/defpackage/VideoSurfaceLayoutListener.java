package defpackage;

import android.view.ViewTreeObserver;
import com.google.android.apps.auto.aareceiver.ui.AndroidAutoHeadunitActivity;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class VideoSurfaceLayoutListener implements ViewTreeObserver.OnGlobalLayoutListener {
    final /* synthetic */ AndroidAutoHeadunitActivity a;

    public VideoSurfaceLayoutListener(AndroidAutoHeadunitActivity androidAutoHeadunitActivity) {
        this.a = androidAutoHeadunitActivity;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        this.a.y.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        AndroidAutoHeadunitActivity androidAutoHeadunitActivity = this.a;
        androidAutoHeadunitActivity.c = true;
        DisplayDimensions awyVar = androidAutoHeadunitActivity.o;
        int width = androidAutoHeadunitActivity.b.getWidth();
        int height = this.a.b.getHeight();
        awyVar.a.edit().putInt("width", width).apply();
        awyVar.a.edit().putInt("height", height).apply();
        this.a.r();
    }
}

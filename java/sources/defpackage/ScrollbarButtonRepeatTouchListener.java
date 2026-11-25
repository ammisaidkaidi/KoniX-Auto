package defpackage;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.embedded.projection.R;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ScrollbarButtonRepeatTouchListener implements View.OnTouchListener {
    public final int b;
    public final View.OnClickListener c;
    public View d;
    public boolean e;
    private final int f;
    public final Handler a = new Handler(Looper.getMainLooper());
    private final Runnable g = new ScrollbarButtonRepeatRunnable(this);

    public ScrollbarButtonRepeatTouchListener(Context context, View.OnClickListener onClickListener) {
        int integer = context.getResources().getInteger(R.integer.car_ui_scrollbar_longpress_initial_delay);
        this.f = integer;
        int integer2 = context.getResources().getInteger(R.integer.car_ui_scrollbar_longpress_repeat_interval);
        this.b = integer2;
        if (integer < 0 || integer2 < 0) {
            throw new IllegalArgumentException("negative intervals are not allowed");
        }
        this.c = onClickListener;
    }

    public final void a() {
        this.a.removeCallbacks(this.g);
        this.e = false;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        this.d = view;
        switch (motionEvent.getAction()) {
            case 0:
                this.a.removeCallbacks(this.g);
                this.a.postDelayed(this.g, this.f);
                this.d.setPressed(true);
                return true;
            case 1:
            case 3:
                if (!this.e) {
                    this.c.onClick(view);
                }
                this.a.removeCallbacks(this.g);
                this.d.setPressed(false);
                this.e = false;
                return true;
            case 2:
            default:
                return false;
        }
    }
}

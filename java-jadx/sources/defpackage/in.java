package defpackage;

import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.ListView;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class in implements View.OnTouchListener {
    private static final int g = ViewConfiguration.getTapTimeout();
    final il a;
    final View b;
    boolean c;
    boolean d;
    boolean e;
    public final ListView f;
    private final Interpolator h;
    private Runnable i;
    private final float[] j;
    private final float[] k;
    private final int l;
    private final float[] m;
    private final float[] n;
    private final float[] o;
    private boolean p;
    private boolean q;

    public in(ListView listView) {
        il ilVar = new il();
        this.a = ilVar;
        this.h = new AccelerateInterpolator();
        float[] fArr = {0.0f, 0.0f};
        this.j = fArr;
        float[] fArr2 = {Float.MAX_VALUE, Float.MAX_VALUE};
        this.k = fArr2;
        float[] fArr3 = {0.0f, 0.0f};
        this.m = fArr3;
        float[] fArr4 = {0.0f, 0.0f};
        this.n = fArr4;
        float[] fArr5 = {Float.MAX_VALUE, Float.MAX_VALUE};
        this.o = fArr5;
        this.b = listView;
        DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
        float f = displayMetrics.density;
        float f2 = displayMetrics.density;
        float f3 = ((int) ((f * 1575.0f) + 0.5f)) / 1000.0f;
        fArr5[0] = f3;
        fArr5[1] = f3;
        float f4 = ((int) ((f2 * 315.0f) + 0.5f)) / 1000.0f;
        fArr4[0] = f4;
        fArr4[1] = f4;
        fArr2[0] = Float.MAX_VALUE;
        fArr2[1] = Float.MAX_VALUE;
        fArr[0] = 0.2f;
        fArr[1] = 0.2f;
        fArr3[0] = 0.001f;
        fArr3[1] = 0.001f;
        this.l = g;
        ilVar.a = 500;
        ilVar.b = 500;
        this.f = listView;
    }

    static float a(float f, float f2, float f3) {
        return f > f3 ? f3 : f < f2 ? f2 : f;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x003e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final float d(int i, float f, float f2, float f3) {
        float f4;
        float interpolation;
        float a = a(this.j[i] * f2, 0.0f, this.k[i]);
        float e = e(f2 - f, a) - e(f, a);
        if (e < 0.0f) {
            interpolation = -this.h.getInterpolation(-e);
        } else {
            if (e <= 0.0f) {
                f4 = 0.0f;
                if (f4 != 0.0f) {
                    return 0.0f;
                }
                float f5 = this.m[i];
                float f6 = this.n[i];
                float f7 = this.o[i];
                float f8 = f5 * f3;
                return f4 > 0.0f ? a(f4 * f8, f6, f7) : -a((-f4) * f8, f6, f7);
            }
            interpolation = this.h.getInterpolation(e);
        }
        f4 = a(interpolation, -1.0f, 1.0f);
        if (f4 != 0.0f) {
        }
    }

    private final float e(float f, float f2) {
        if (f2 != 0.0f && f < f2) {
            if (f >= 0.0f) {
                return 1.0f - (f / f2);
            }
            if (this.e) {
                return 1.0f;
            }
        }
        return 0.0f;
    }

    private final void f() {
        int i = 0;
        if (this.c) {
            this.e = false;
            return;
        }
        il ilVar = this.a;
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        int i2 = (int) (currentAnimationTimeMillis - ilVar.e);
        int i3 = ilVar.b;
        if (i2 > i3) {
            i = i3;
        } else if (i2 >= 0) {
            i = i2;
        }
        ilVar.i = i;
        ilVar.h = ilVar.a(currentAnimationTimeMillis);
        ilVar.g = currentAnimationTimeMillis;
    }

    final boolean b() {
        ListView listView;
        int count;
        il ilVar = this.a;
        float f = ilVar.d;
        int abs = (int) (f / Math.abs(f));
        float f2 = ilVar.c;
        int abs2 = (int) (f2 / Math.abs(f2));
        if (abs != 0 && (count = (listView = this.f).getCount()) != 0) {
            int childCount = listView.getChildCount();
            int firstVisiblePosition = listView.getFirstVisiblePosition();
            int i = firstVisiblePosition + childCount;
            if (abs > 0) {
                if (i < count || listView.getChildAt(childCount - 1).getBottom() > listView.getHeight()) {
                    return true;
                }
            } else if (abs < 0 && (firstVisiblePosition > 0 || listView.getChildAt(0).getTop() < 0)) {
                return true;
            }
        }
        if (abs2 == 0) {
        }
        return false;
    }

    public final void c(boolean z) {
        if (this.q && !z) {
            f();
        }
        this.q = z;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0076, code lost:
    
        return false;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0053  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        int i;
        if (!this.q) {
            return false;
        }
        switch (motionEvent.getActionMasked()) {
            case 0:
                this.d = true;
                this.p = false;
                float d = d(0, motionEvent.getX(), view.getWidth(), this.b.getWidth());
                float d2 = d(1, motionEvent.getY(), view.getHeight(), this.b.getHeight());
                il ilVar = this.a;
                ilVar.c = d;
                ilVar.d = d2;
                if (!this.e && b()) {
                    if (this.i == null) {
                        this.i = new im(this);
                    }
                    this.e = true;
                    this.c = true;
                    if (!this.p || (i = this.l) <= 0) {
                        this.i.run();
                    } else {
                        hs.s(this.b, this.i, i);
                    }
                    this.p = true;
                    break;
                }
                break;
            case 1:
            case 3:
                f();
                break;
            case 2:
                float d3 = d(0, motionEvent.getX(), view.getWidth(), this.b.getWidth());
                float d22 = d(1, motionEvent.getY(), view.getHeight(), this.b.getHeight());
                il ilVar2 = this.a;
                ilVar2.c = d3;
                ilVar2.d = d22;
                if (!this.e) {
                    if (this.i == null) {
                    }
                    this.e = true;
                    this.c = true;
                    if (this.p) {
                        break;
                    }
                    this.i.run();
                    this.p = true;
                    break;
                }
                break;
        }
    }
}

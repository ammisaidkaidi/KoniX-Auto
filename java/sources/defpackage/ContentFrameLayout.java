package defpackage;

import android.content.Context;
import android.support.v7.widget.ContentFrameLayout;
import android.view.KeyEvent;
import android.view.MotionEvent;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ContentFrameLayout extends ContentFrameLayout {
    final /* synthetic */ AppCompatDelegateImpl a;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public ContentFrameLayout(AppCompatDelegateImpl jwVar, Context context) {
        super(context);
        this.a = jwVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return this.a.C(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (IcuPluralSelector < -5 || MessageFormatFormatterState < -5 || x > getWidth() + 5 || y > getHeight() + 5) {
                AppCompatDelegateImpl jwVar = this.a;
                jwVar.x(jwVar.H(0), true);
                return true;
            }
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public final void setBackgroundResource(int i) {
        setBackgroundDrawable(SimpleHolderKj.b(getContext(), i));
    }
}

package defpackage;

import android.view.MotionEvent;
import android.view.View;
import android.widget.PopupWindow;

/* compiled from: PG */
/* loaded from: classes.dex */
final class qd implements View.OnTouchListener {
    final /* synthetic */ qf a;

    public qd(qf qfVar) {
        this.a = qfVar;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (action != 0) {
            if (action != 1) {
                return false;
            }
            qf qfVar = this.a;
            qfVar.n.removeCallbacks(qfVar.m);
            return false;
        }
        PopupWindow popupWindow = this.a.p;
        if (popupWindow == null || !popupWindow.isShowing() || x < 0 || x >= this.a.p.getWidth() || y < 0 || y >= this.a.p.getHeight()) {
            return false;
        }
        qf qfVar2 = this.a;
        qfVar2.n.postDelayed(qfVar2.m, 250L);
        return false;
    }
}

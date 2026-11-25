package defpackage;

import android.view.MotionEvent;
import android.view.View;
import com.google.android.apps.auto.aareceiver.ui.AndroidAutoHeadunitActivity;
import com.google.android.projection.protocol.InputSource;
import j$.util.function.Consumer;
import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class VideoSurfaceTouchListener implements View.OnTouchListener {
    final /* synthetic */ AndroidAutoHeadunitActivity a;

    public VideoSurfaceTouchListener(AndroidAutoHeadunitActivity androidAutoHeadunitActivity) {
        this.a = androidAutoHeadunitActivity;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, final MotionEvent motionEvent) {
        ProjectionRenderer bgzVar = this.a.w;
        if (bgzVar == null) {
            return false;
        }
        int pointerCount = motionEvent.getPointerCount();
        MotionEvent.PointerProperties[] pointerPropertiesArr = new MotionEvent.PointerProperties[pointerCount];
        MotionEvent.PointerCoords[] pointerCoordsArr = new MotionEvent.PointerCoords[pointerCount];
        for (int i = 0; NavInstructionTypeEnum < pointerCount; i++) {
            MotionEvent.PointerProperties pointerProperties = new MotionEvent.PointerProperties();
            pointerPropertiesArr[i] = pointerProperties;
            motionEvent.getPointerProperties(i, pointerProperties);
            MotionEvent.PointerCoords pointerCoords = new MotionEvent.PointerCoords();
            pointerCoordsArr[i] = pointerCoords;
            motionEvent.getPointerCoords(i, pointerCoords);
            MotionEvent.PointerCoords pointerCoords2 = pointerCoordsArr[i];
            double d = pointerCoords2.x;
            double d2 = bgzVar.m;
            Double.isNaN(ProtoMsgIntStringInt);
            pointerCoords2.x = (float) (ProtoMsgIntStringInt / d2);
            MotionEvent.PointerCoords pointerCoords3 = pointerCoordsArr[i];
            double d3 = pointerCoords3.y;
            double d4 = bgzVar.m;
            Double.isNaN(d3);
            pointerCoords3.y = (float) (d3 / d4);
            pointerCoordsArr[i].x = Math.min(bgzVar.f.right, Math.max(pointerCoordsArr[i].x, 0.0f));
            pointerCoordsArr[i].y = Math.min(bgzVar.f.bottom, Math.max(pointerCoordsArr[i].y, 0.0f));
            FloggerLoggerFactory.b.y(TimeUnit.SECONDS);
            float f = pointerCoordsArr[i].x;
            float f2 = pointerCoordsArr[i].y;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent.getDownTime(), motionEvent.getEventTime(), motionEvent.getAction(), pointerCount, pointerPropertiesArr, pointerCoordsArr, motionEvent.getMetaState(), motionEvent.getButtonState(), motionEvent.getXPrecision(), motionEvent.getYPrecision(), motionEvent.getDeviceId(), motionEvent.getEdgeFlags(), motionEvent.getSource(), motionEvent.getFlags());
        this.a.q.ifPresent(new Consumer() { // from class: bep
            @Override // j$.util.function.Consumer
            public final void accept(Object obj) {
                ((VideoLatencyChecker) obj).c(motionEvent);
            }

            @Override // j$.util.function.Consumer
            public final /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer.CC.$default$andThen(this, consumer);
            }
        });
        AndroidAutoHeadunitProjectionHandler azyVar = this.a.v;
        DisplayType ckbVar = DisplayType.DISPLAY_TYPE_MAIN;
        ProjectionSession bblVar = azyVar.i.h;
        if (bblVar != null) {
            InputManager axlVar = bblVar.v;
            FloggerLoggerFactory.b.y(TimeUnit.SECONDS);
            synchronized (axlVar) {
                if (axlVar.f) {
                    ((InputSource) axlVar.d.get(ckbVar)).e(obtain);
                } else {
                    ((ParameterizedLoggerApi) InputManager.a.c().h("com/google/android/apps/auto/aareceiver/input/InputManager", "onTouchEvent", 281, "InputManager.java")).n("onTouchEvent called on uninitialized object");
                }
            }
            azyVar.b.b++;
        }
        obtain.recycle();
        return true;
    }
}

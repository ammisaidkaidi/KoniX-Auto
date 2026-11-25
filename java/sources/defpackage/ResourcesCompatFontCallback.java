package defpackage;

import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;
import android.widget.TextView;
import java.lang.ref.WeakReference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ResourcesCompatFontCallback {
    final /* synthetic */ int a;
    final /* synthetic */ int b;
    final /* synthetic */ WeakReference c;
    final /* synthetic */ TextViewAutoSizeHelper d;

    public ResourcesCompatFontCallback() {
    }

    public ResourcesCompatFontCallback(TextViewAutoSizeHelper omVar, int i, int i2, WeakReference weakReference) {
        this.d = omVar;
        this.a = i;
        this.b = i2;
        this.c = weakReference;
    }

    public static Handler c() {
        return new Handler(Looper.getMainLooper());
    }

    public static final void d() {
        c().post(new SpanEndSignalRunnable(1));
    }

    public final void a(Typeface typeface) {
        int i = this.a;
        if (NavInstructionTypeEnum != -1) {
            typeface = Typeface.create(typeface, i, (this.b & 2) != 0);
        }
        TextViewAutoSizeHelper omVar = this.d;
        WeakReference weakReference = this.c;
        if (omVar.c) {
            omVar.b = typeface;
            TextView textView = (TextView) weakReference.get();
            if (textView != null) {
                if (ViewCompatAccessibilityStatics.F(textView)) {
                    textView.post(new TypefaceApplyRunnable(textView, typeface, omVar.a));
                } else {
                    textView.setTypeface(typeface, omVar.a);
                }
            }
        }
    }

    public final void b(Typeface typeface) {
        c().post(new TypefaceCallbackDeliveryRunnable(this, typeface));
    }
}

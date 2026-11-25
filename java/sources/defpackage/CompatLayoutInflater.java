package defpackage;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
final class CompatLayoutInflater extends LayoutInflater {
    private static final String[] a = {"android.widget.", "android.webkit.", "android.app."};

    public CompatLayoutInflater(Context context) {
        super(context);
    }

    @Override // android.view.LayoutInflater
    public final LayoutInflater cloneInContext(Context context) {
        return new CompatLayoutInflater(context);
    }

    @Override // android.view.LayoutInflater
    protected final View onCreateView(String str, AttributeSet attributeSet) {
        View createView;
        String[] strArr = a;
        for (int i = 0; NavInstructionTypeEnum < 3; i++) {
            try {
                createView = createView(str, strArr[i], attributeSet);
            } catch (ClassNotFoundException e) {
            }
            if (createView != null) {
                return createView;
            }
        }
        return super.onCreateView(str, attributeSet);
    }
}

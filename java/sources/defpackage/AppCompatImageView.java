package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;

/* compiled from: PG */
/* loaded from: classes.dex */
public class AppCompatImageView extends ImageView {
    private final AppCompatBackgroundHelper a;
    private final AppCompatImageHelper b;

    public AppCompatImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.widget.ImageView, android.view.View
    protected final void drawableStateChanged() {
        super.drawableStateChanged();
        AppCompatBackgroundHelper nhVar = this.a;
        if (nhVar != null) {
            nhVar.a();
        }
        AppCompatImageHelper nqVar = this.b;
        if (nqVar != null) {
            nqVar.a();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public final boolean hasOverlappingRendering() {
        return this.b.d() && super.hasOverlappingRendering();
    }

    @Override // android.view.View
    public final void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        AppCompatBackgroundHelper nhVar = this.a;
        if (nhVar != null) {
            nhVar.e();
        }
    }

    @Override // android.view.View
    public final void setBackgroundResource(int i) {
        super.setBackgroundResource(NavInstructionTypeEnum);
        AppCompatBackgroundHelper nhVar = this.a;
        if (nhVar != null) {
            nhVar.c(NavInstructionTypeEnum);
        }
    }

    @Override // android.widget.ImageView
    public final void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        AppCompatImageHelper nqVar = this.b;
        if (nqVar != null) {
            nqVar.a();
        }
    }

    @Override // android.widget.ImageView
    public final void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        AppCompatImageHelper nqVar = this.b;
        if (nqVar != null) {
            nqVar.a();
        }
    }

    @Override // android.widget.ImageView
    public final void setImageResource(int i) {
        AppCompatImageHelper nqVar = this.b;
        if (nqVar != null) {
            nqVar.c(NavInstructionTypeEnum);
        }
    }

    @Override // android.widget.ImageView
    public final void setImageURI(Uri uri) {
        super.setImageURI(uri);
        AppCompatImageHelper nqVar = this.b;
        if (nqVar != null) {
            nqVar.a();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public AppCompatImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TintContextWrapper.a(context);
        ThemeUtilsCompat.d(this, getContext());
        AppCompatBackgroundHelper nhVar = new AppCompatBackgroundHelper(this);
        this.a = nhVar;
        nhVar.b(attributeSet, i);
        AppCompatImageHelper nqVar = new AppCompatImageHelper(this);
        this.b = nqVar;
        nqVar.b(attributeSet, i);
    }
}

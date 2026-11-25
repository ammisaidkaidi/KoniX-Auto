package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageButton;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class np extends ImageButton {
    private final nh a;
    private final nq b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public np(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        sj.a(context);
        sh.d(this, getContext());
        nh nhVar = new nh(this);
        this.a = nhVar;
        nhVar.b(attributeSet, i);
        nq nqVar = new nq(this);
        this.b = nqVar;
        nqVar.b(attributeSet, i);
    }

    @Override // android.widget.ImageView, android.view.View
    protected final void drawableStateChanged() {
        super.drawableStateChanged();
        nh nhVar = this.a;
        if (nhVar != null) {
            nhVar.a();
        }
        nq nqVar = this.b;
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
        nh nhVar = this.a;
        if (nhVar != null) {
            nhVar.e();
        }
    }

    @Override // android.view.View
    public final void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        nh nhVar = this.a;
        if (nhVar != null) {
            nhVar.c(i);
        }
    }

    @Override // android.widget.ImageView
    public final void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        nq nqVar = this.b;
        if (nqVar != null) {
            nqVar.a();
        }
    }

    @Override // android.widget.ImageView
    public final void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        nq nqVar = this.b;
        if (nqVar != null) {
            nqVar.a();
        }
    }

    @Override // android.widget.ImageView
    public final void setImageResource(int i) {
        this.b.c(i);
    }

    @Override // android.widget.ImageView
    public final void setImageURI(Uri uri) {
        super.setImageURI(uri);
        nq nqVar = this.b;
        if (nqVar != null) {
            nqVar.a();
        }
    }
}

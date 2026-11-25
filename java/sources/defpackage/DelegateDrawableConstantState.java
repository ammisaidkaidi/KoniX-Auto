package defpackage;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;

/* compiled from: PG */
/* loaded from: classes.dex */
final class DelegateDrawableConstantState extends Drawable.ConstantState {
    private final Drawable.ConstantState a;

    public DelegateDrawableConstantState(Drawable.ConstantState constantState) {
        this.a = constantState;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final boolean canApplyTheme() {
        return this.a.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        return this.a.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        VectorDrawableCompat afyVar = new VectorDrawableCompat();
        afyVar.a = (VectorDrawable) this.a.newDrawable();
        return afyVar;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources) {
        VectorDrawableCompat afyVar = new VectorDrawableCompat();
        afyVar.a = (VectorDrawable) this.a.newDrawable(resources);
        return afyVar;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources, Resources.Theme theme) {
        VectorDrawableCompat afyVar = new VectorDrawableCompat();
        afyVar.a = (VectorDrawable) this.a.newDrawable(resources, theme);
        return afyVar;
    }
}

.class public abstract Lanx;
.super Lann;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private ak:Landroidx/preference/DialogPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lann;-><init>()V

    return-void
.end method


# virtual methods
.method public final an()Landroidx/preference/DialogPreference;
    .locals 2

    .line 1
    iget-object v0, p0, Lanx;->ak:Landroidx/preference/DialogPreference;

    if-nez v0, :cond_0

    iget-object v0, p0, Lbr;->n:Landroid/os/Bundle;

    const-string v1, "key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lbr;->v()Lbr;

    move-result-object v1

    check-cast v1, Lacd;

    .line 3
    invoke-interface {v1, v0}, Lacd;->aO(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/DialogPreference;

    iput-object v0, p0, Lanx;->ak:Landroidx/preference/DialogPreference;

    :cond_0
    iget-object v0, p0, Lanx;->ak:Landroidx/preference/DialogPreference;

    return-object v0
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lann;->d(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lbr;->v()Lbr;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lacd;

    if-eqz v1, :cond_3

    .line 5
    check-cast v0, Lacd;

    iget-object v1, p0, Lbr;->n:Landroid/os/Bundle;

    .line 6
    const-string v2, "key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_2

    .line 7
    invoke-interface {v0, v1}, Lacd;->aO(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/DialogPreference;

    iput-object p1, p0, Lanx;->ak:Landroidx/preference/DialogPreference;

    .line 8
    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lanx;->ad:Ljava/lang/CharSequence;

    iget-object p1, p0, Lanx;->ak:Landroidx/preference/DialogPreference;

    .line 9
    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->getPositiveButtonText()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lanx;->ae:Ljava/lang/CharSequence;

    iget-object p1, p0, Lanx;->ak:Landroidx/preference/DialogPreference;

    .line 10
    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lanx;->af:Ljava/lang/CharSequence;

    iget-object p1, p0, Lanx;->ak:Landroidx/preference/DialogPreference;

    .line 11
    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lanx;->ag:Ljava/lang/CharSequence;

    iget-object p1, p0, Lanx;->ak:Landroidx/preference/DialogPreference;

    .line 12
    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->getDialogLayoutResource()I

    move-result p1

    iput p1, p0, Lanx;->ah:I

    iget-object p1, p0, Lanx;->ak:Landroidx/preference/DialogPreference;

    .line 13
    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->getDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 14
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 17
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 16
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    .line 18
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 19
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 20
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 21
    invoke-virtual {p0}, Lbr;->t()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lanx;->ai:Landroid/graphics/drawable/BitmapDrawable;

    return-void

    .line 15
    :cond_1
    :goto_0
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object p1, p0, Lanx;->ai:Landroid/graphics/drawable/BitmapDrawable;

    return-void

    .line 21
    :cond_2
    return-void

    .line 3
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 4
    const-string v0, "Target fragment must implement TargetFragment interface"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

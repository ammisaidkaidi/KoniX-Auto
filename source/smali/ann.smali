.class public abstract Lann;
.super Lbm;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field protected ad:Ljava/lang/CharSequence;

.field protected ae:Ljava/lang/CharSequence;

.field protected af:Ljava/lang/CharSequence;

.field protected ag:Ljava/lang/CharSequence;

.field protected ah:I

.field protected ai:Landroid/graphics/drawable/BitmapDrawable;

.field public aj:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lbm;-><init>()V

    return-void
.end method


# virtual methods
.method protected aj(Landroid/view/View;)V
    .locals 3

    .line 1
    const v0, 0x102000b

    invoke-static {p1, v0}, Laro;->f(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lann;->ag:Ljava/lang/CharSequence;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 3
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 4
    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_0
    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    .line 5
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 6
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected abstract ak(Z)V
.end method

.method protected al()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected am()V
    .locals 0

    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lbm;->d(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 2
    const-string v0, "CarUiDialogFragment.title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lann;->ad:Ljava/lang/CharSequence;

    .line 3
    const-string v0, "CarUiDialogFragment.positiveText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lann;->ae:Ljava/lang/CharSequence;

    .line 4
    const-string v0, "CarUiDialogFragment.negativeText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lann;->af:Ljava/lang/CharSequence;

    .line 5
    const-string v0, "CarUiDialogFragment.message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lann;->ag:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    .line 6
    const-string v1, "CarUiDialogFragment.layout"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lann;->ah:I

    .line 7
    const-string v0, "CarUiDialogFragment.icon"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 8
    invoke-virtual {p0}, Lbr;->t()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lann;->ai:Landroid/graphics/drawable/BitmapDrawable;

    :cond_0
    return-void
.end method

.method public g(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lbm;->g(Landroid/os/Bundle;)V

    iget-object v0, p0, Lann;->ad:Ljava/lang/CharSequence;

    .line 2
    const-string v1, "CarUiDialogFragment.title"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lann;->ae:Ljava/lang/CharSequence;

    .line 3
    const-string v1, "CarUiDialogFragment.positiveText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lann;->af:Ljava/lang/CharSequence;

    .line 4
    const-string v1, "CarUiDialogFragment.negativeText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lann;->ag:Ljava/lang/CharSequence;

    .line 5
    const-string v1, "CarUiDialogFragment.message"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget v0, p0, Lann;->ah:I

    .line 6
    const-string v1, "CarUiDialogFragment.layout"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lann;->ai:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "CarUiDialogFragment.icon"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public final l()Landroid/app/Dialog;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lbr;->x()Lbv;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, p0, Lann;->aj:I

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lann;->ad:Ljava/lang/CharSequence;

    .line 2
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lann;->ai:Landroid/graphics/drawable/BitmapDrawable;

    .line 3
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lann;->ae:Ljava/lang/CharSequence;

    .line 4
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lann;->af:Ljava/lang/CharSequence;

    .line 5
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v2, p0, Lann;->ah:I

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 5
    :goto_0
    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {p0, v3}, Lann;->aj(Landroid/view/View;)V

    .line 9
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 13
    :cond_1
    iget-object v0, p0, Lann;->ag:Ljava/lang/CharSequence;

    .line 10
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 11
    :goto_1
    invoke-virtual {p0}, Lann;->am()V

    .line 12
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {p0}, Lann;->al()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    new-instance v1, Lanm;

    invoke-direct {v1, v0}, Lanm;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    :cond_2
    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iput p2, p0, Lann;->aj:I

    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lbm;->onDismiss(Landroid/content/DialogInterface;)V

    iget p1, p0, Lann;->aj:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 2
    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lann;->ak(Z)V

    return-void
.end method

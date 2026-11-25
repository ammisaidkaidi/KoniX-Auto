.class public Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;
.super Landroidx/preference/DialogPreference;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Laoa;


# instance fields
.field public a:I

.field public b:Landroid/widget/SeekBar;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x64

    iput p1, p0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->f:I

    .line 2
    const p1, 0x7f0c0041

    invoke-virtual {p0, p1}, Landroidx/preference/DialogPreference;->setDialogLayoutResource(I)V

    .line 3
    const p1, 0x7f100022

    invoke-virtual {p0, p1}, Landroidx/preference/DialogPreference;->setPositiveButtonText(I)V

    .line 4
    const p1, 0x7f100021

    invoke-virtual {p0, p1}, Landroidx/preference/DialogPreference;->setNegativeButtonText(I)V

    return-void
.end method


# virtual methods
.method public final onAttached()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/preference/DialogPreference;->onAttached()V

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->getPersistedInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->a:I

    return-void
.end method

.method public final onBindViewHolder(Lado;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/DialogPreference;->onBindViewHolder(Lado;)V

    .line 2
    iget-object p1, p1, Lado;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Laro;->l(Landroid/view/View;Z)V

    return-void
.end method

.method public final synthetic onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method public final performClick()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->isSelectable()Z

    .line 2
    :cond_0
    invoke-super {p0}, Landroidx/preference/DialogPreference;->performClick()V

    return-void
.end method

.class public final Lanz;
.super Lanx;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lanx;-><init>()V

    return-void
.end method


# virtual methods
.method protected final aj(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lanx;->aj(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0}, Lanx;->an()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;

    .line 3
    const v1, 0x7f090186

    invoke-static {p1, v1}, Laro;->f(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, v0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->b:Landroid/widget/SeekBar;

    .line 4
    const v1, 0x7f090189

    invoke-static {p1, v1}, Laro;->f(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->c:Landroid/widget/TextView;

    .line 5
    const v1, 0x7f090187

    invoke-static {p1, v1}, Laro;->f(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->d:Landroid/widget/TextView;

    .line 6
    const v1, 0x7f090188

    invoke-static {p1, v1}, Laro;->f(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->e:Landroid/widget/TextView;

    iget p1, v0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->a:I

    iget-object v1, v0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->b:Landroid/widget/SeekBar;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    iput p1, v0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->a:I

    iget-object p1, v0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object p1, v0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->c:Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p1, v0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    iget-object p1, v0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    .line 11
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object p1, v0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->e:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    .line 12
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    iget-object p1, v0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->e:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    .line 13
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget p1, v0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->f:I

    iget-object v1, v0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->b:Landroid/widget/SeekBar;

    if-eqz v1, :cond_7

    .line 14
    invoke-virtual {v1, p1}, Landroid/widget/SeekBar;->setMax(I)V

    :cond_7
    iput p1, v0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->f:I

    iget-object p1, v0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->b:Landroid/widget/SeekBar;

    if-eqz p1, :cond_8

    .line 15
    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_8
    return-void
.end method

.method protected final ak(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lanx;->an()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;

    if-eqz p1, :cond_0

    iget-object p1, v0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->b:Landroid/widget/SeekBar;

    .line 2
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iput p1, v0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->a:I

    .line 3
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->persistInt(I)Z

    invoke-virtual {v0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, v0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->c:Landroid/widget/TextView;

    iput-object p1, v0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->e:Landroid/widget/TextView;

    iput-object p1, v0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->d:Landroid/widget/TextView;

    iput-object p1, v0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->b:Landroid/widget/SeekBar;

    return-void
.end method

.method protected final am()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lanx;->an()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;

    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iput p2, p0, Lann;->aj:I

    invoke-virtual {p0}, Lanx;->an()Landroidx/preference/DialogPreference;

    move-result-object p1

    check-cast p1, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;

    return-void
.end method

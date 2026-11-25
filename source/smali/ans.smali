.class public final Lans;
.super Lanx;
.source "PG"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private ak:Landroid/widget/EditText;

.field private al:Ljava/lang/CharSequence;

.field private final am:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lanx;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lans;->am:Z

    return-void
.end method

.method private final ao()Landroidx/preference/EditTextPreference;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lanx;->an()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    return-object v0
.end method


# virtual methods
.method protected final aj(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lanx;->aj(Landroid/view/View;)V

    .line 2
    const v0, 0x1020003

    invoke-static {p1, v0}, Laro;->f(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lans;->ak:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object p1, p0, Lans;->ak:Landroid/widget/EditText;

    iget-object v0, p0, Lans;->al:Ljava/lang/CharSequence;

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lans;->ak:Landroid/widget/EditText;

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    iget-object p1, p0, Lans;->ak:Landroid/widget/EditText;

    const/4 v0, 0x6

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object p1, p0, Lans;->ak:Landroid/widget/EditText;

    .line 8
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object p1, p0, Lans;->ak:Landroid/widget/EditText;

    .line 9
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 3
    const-string v0, "Dialog view must contain an EditText with id @android:id/edit"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final ak(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    iget-object p1, p0, Lans;->ak:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p0}, Lans;->ao()Landroidx/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lans;->ao()Landroidx/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected final al()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lanx;->d(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 2
    invoke-direct {p0}, Lans;->ao()Landroidx/preference/EditTextPreference;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lans;->al:Ljava/lang/CharSequence;

    return-void

    :cond_0
    nop

    .line 3
    const-string v0, "EditTextPreferenceDialogFragment.text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lans;->al:Ljava/lang/CharSequence;

    return-void
.end method

.method public final g(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lanx;->g(Landroid/os/Bundle;)V

    iget-object v0, p0, Lans;->al:Ljava/lang/CharSequence;

    .line 2
    const-string v1, "EditTextPreferenceDialogFragment.text"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/4 p3, 0x0

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    iget-boolean p2, p0, Lans;->am:Z

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 2
    invoke-direct {p0}, Lans;->ao()Landroidx/preference/EditTextPreference;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    .line 3
    invoke-super {p0, p3, p3}, Lbm;->b(ZZ)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return p3
.end method

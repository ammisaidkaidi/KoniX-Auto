.class public Lcom/android/car/ui/preference/CarUiRadioButtonPreference;
.super Landroidx/preference/TwoStatePreference;
.source "PG"

# interfaces
.implements Laoa;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    const v0, 0x7f0401f4

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, Laro;->b(Landroid/content/Context;II)I

    move-result v0

    .line 2
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 3
    const p1, 0x7f0c002c

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 4
    const p1, 0x7f0c0039

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Lado;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/TwoStatePreference;->onBindViewHolder(Lado;)V

    .line 2
    iget-object v0, p1, Lado;->itemView:Landroid/view/View;

    const v1, 0x7f09016e

    invoke-static {v0, v1}, Laro;->f(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 3
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 4
    iget-object p1, p1, Lado;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Laro;->l(Landroid/view/View;Z)V

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
    invoke-super {p0}, Landroidx/preference/TwoStatePreference;->performClick()V

    return-void
.end method

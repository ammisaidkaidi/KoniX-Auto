.class public final synthetic Laqh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Laqm;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Laqm;I)V
    .locals 0

    iput p2, p0, Laqh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laqh;->a:Laqm;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 2
    iget v0, p0, Laqh;->b:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Laqh;->a:Laqm;

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, v0, Laqm;->k:Landroid/widget/EditText;

    .line 3
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object p1, v0, Laqm;->h:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v0, Laqm;->k:Landroid/widget/EditText;

    .line 4
    invoke-virtual {p1, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 5
    :pswitch_0
    iget-object v0, p0, Laqh;->a:Laqm;

    iget-object v0, v0, Laqm;->h:Landroid/view/inputmethod/InputMethodManager;

    .line 1
    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void

    .line 4
    :cond_0
    :goto_0
    iget-object p1, v0, Laqm;->k:Landroid/widget/EditText;

    .line 5
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

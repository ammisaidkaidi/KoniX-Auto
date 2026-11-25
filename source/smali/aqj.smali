.class public final synthetic Laqj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic a:Laqm;


# direct methods
.method public synthetic constructor <init>(Laqm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laqj;->a:Laqm;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Laqj;->a:Laqm;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-eq p2, v2, :cond_4

    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 v2, 0x42

    if-eq p2, v2, :cond_1

    const/16 v2, 0xa0

    if-eq p2, v2, :cond_1

    const/16 v2, 0x54

    if-ne p2, v2, :cond_3

    .line 2
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-eq p2, v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Laqm;->e()V

    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 1
    :cond_4
    :goto_0
    invoke-virtual {p1}, Laqm;->e()V

    const/4 v0, 0x0

    :goto_1
    return v0
.end method

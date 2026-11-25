.class public Lbm;
.super Lbr;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final a:Landroid/content/DialogInterface$OnDismissListener;

.field private ad:Landroid/os/Handler;

.field private final ae:Ljava/lang/Runnable;

.field private final af:Landroid/content/DialogInterface$OnCancelListener;

.field private ag:I

.field private ah:I

.field private ai:Z

.field private aj:I

.field private ak:Z

.field private final al:Laaa;

.field private am:Z

.field public b:Z

.field public c:Landroid/app/Dialog;

.field public d:Z

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lbr;-><init>()V

    new-instance v0, Lbh;

    invoke-direct {v0, p0}, Lbh;-><init>(Lbm;)V

    iput-object v0, p0, Lbm;->ae:Ljava/lang/Runnable;

    new-instance v0, Lbi;

    invoke-direct {v0}, Lbi;-><init>()V

    iput-object v0, p0, Lbm;->af:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v0, Lbj;

    invoke-direct {v0, p0}, Lbj;-><init>(Lbm;)V

    iput-object v0, p0, Lbm;->a:Landroid/content/DialogInterface$OnDismissListener;

    const/4 v0, 0x0

    iput v0, p0, Lbm;->ag:I

    iput v0, p0, Lbm;->ah:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lbm;->ai:Z

    iput-boolean v1, p0, Lbm;->b:Z

    const/4 v1, -0x1

    iput v1, p0, Lbm;->aj:I

    new-instance v1, Lbk;

    invoke-direct {v1, p0}, Lbk;-><init>(Lbm;)V

    iput-object v1, p0, Lbm;->al:Laaa;

    iput-boolean v0, p0, Lbm;->f:Z

    return-void
.end method


# virtual methods
.method public final aL()Lby;
    .locals 2

    invoke-super {p0}, Lbr;->aL()Lby;

    move-result-object v0

    new-instance v1, Lbl;

    invoke-direct {v1, p0, v0}, Lbl;-><init>(Lbm;Lby;)V

    return-object v1
.end method

.method public final aR(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lbr;->aR(Landroid/content/Context;)V

    iget-object p1, p0, Lbr;->Z:Lzz;

    iget-object v0, p0, Lbm;->al:Laaa;

    .line 2
    const-string v1, "observeForever"

    invoke-static {v1}, Lzy;->a(Ljava/lang/String;)V

    new-instance v1, Lzw;

    invoke-direct {v1, p1, v0}, Lzw;-><init>(Lzy;Laaa;)V

    iget-object p1, p1, Lzy;->c:Lup;

    .line 3
    invoke-virtual {p1, v0, v1}, Lup;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzx;

    .line 4
    instance-of v0, p1, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;

    if-nez v0, :cond_2

    .line 5
    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 6
    invoke-virtual {v1, p1}, Lzx;->d(Z)V

    :cond_0
    iget-boolean p1, p0, Lbm;->e:Z

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lbm;->d:Z

    :cond_1
    return-void

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 5
    const-string v0, "Cannot add the same observer with different lifecycles"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(ZZ)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lbm;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbm;->d:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lbm;->e:Z

    iget-object v1, p0, Lbm;->c:Landroid/app/Dialog;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lbm;->c:Landroid/app/Dialog;

    .line 2
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    if-nez p2, :cond_2

    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    iget-object v1, p0, Lbm;->ad:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p2, v1, :cond_1

    iget-object p2, p0, Lbm;->c:Landroid/app/Dialog;

    .line 4
    invoke-virtual {p0, p2}, Lbm;->onDismiss(Landroid/content/DialogInterface;)V

    goto :goto_0

    .line 15
    :cond_1
    iget-object p2, p0, Lbm;->ad:Landroid/os/Handler;

    iget-object v1, p0, Lbm;->ae:Ljava/lang/Runnable;

    .line 5
    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    :cond_2
    :goto_0
    iput-boolean v0, p0, Lbm;->am:Z

    iget p2, p0, Lbm;->aj:I

    if-ltz p2, :cond_4

    .line 6
    invoke-virtual {p0}, Lbr;->A()Lcr;

    move-result-object p2

    iget v0, p0, Lbm;->aj:I

    if-ltz v0, :cond_3

    .line 7
    new-instance v1, Lcq;

    invoke-direct {v1, p2, v0}, Lcq;-><init>(Lcr;I)V

    .line 8
    invoke-virtual {p2, v1, p1}, Lcr;->C(Lcp;Z)V

    const/4 p1, -0x1

    iput p1, p0, Lbm;->aj:I

    return-void

    .line 6
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad id: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_4
    invoke-virtual {p0}, Lbr;->A()Lcr;

    move-result-object p2

    invoke-virtual {p2}, Lcr;->h()Lda;

    move-result-object p2

    .line 10
    invoke-virtual {p2}, Lda;->m()V

    iget-object v1, p0, Lbr;->A:Lcr;

    if-eqz v1, :cond_6

    .line 9
    move-object v2, p2

    check-cast v2, Lau;

    iget-object v2, v2, Lau;->a:Lcr;

    if-ne v1, v2, :cond_5

    goto :goto_1

    .line 13
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot remove Fragment attached to a different FragmentManager. Fragment "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p0}, Lbr;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is already attached to a FragmentManager."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_6
    :goto_1
    new-instance v1, Lcz;

    const/4 v2, 0x3

    .line 11
    invoke-direct {v1, v2, p0}, Lcz;-><init>(ILbr;)V

    invoke-virtual {p2, v1}, Lda;->i(Lcz;)V

    if-eqz p1, :cond_7

    .line 9
    check-cast p2, Lau;

    .line 12
    invoke-virtual {p2, v0}, Lau;->h(Z)V

    return-void

    .line 13
    :cond_7
    invoke-virtual {p2}, Lda;->g()V

    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lbr;->d(Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/Handler;

    .line 2
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lbm;->ad:Landroid/os/Handler;

    iget v0, p0, Lbm;->F:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iput-boolean v0, p0, Lbm;->b:Z

    if-eqz p1, :cond_1

    .line 3
    const-string v0, "android:style"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lbm;->ag:I

    .line 4
    const-string v0, "android:theme"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lbm;->ah:I

    .line 5
    const-string v0, "android:cancelable"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lbm;->ai:Z

    iget-boolean v0, p0, Lbm;->b:Z

    .line 6
    const-string v1, "android:showsDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lbm;->b:Z

    const/4 v0, -0x1

    .line 7
    const-string v1, "android:backStackId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lbm;->aj:I

    :cond_1
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    invoke-super {p0}, Lbr;->e()V

    iget-object v0, p0, Lbm;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lbm;->am:Z

    .line 2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lbm;->c:Landroid/app/Dialog;

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-boolean v0, p0, Lbm;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbm;->c:Landroid/app/Dialog;

    .line 4
    invoke-virtual {p0, v0}, Lbm;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    iput-object v1, p0, Lbm;->c:Landroid/app/Dialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbm;->f:Z

    :cond_1
    return-void
.end method

.method public final f()V
    .locals 2

    .line 1
    invoke-super {p0}, Lbr;->f()V

    iget-boolean v0, p0, Lbm;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lbm;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbm;->d:Z

    :cond_0
    iget-object v0, p0, Lbr;->Z:Lzz;

    iget-object v1, p0, Lbm;->al:Laaa;

    .line 2
    invoke-virtual {v0, v1}, Lzy;->f(Laaa;)V

    return-void
.end method

.method public g(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lbm;->c:Landroid/app/Dialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 2
    const-string v2, "android:dialogShowing"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3
    const-string v2, "android:savedDialogState"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget v0, p0, Lbm;->ag:I

    if-eqz v0, :cond_1

    .line 4
    const-string v2, "android:style"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    iget v0, p0, Lbm;->ah:I

    if-eqz v0, :cond_2

    .line 5
    const-string v2, "android:theme"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    iget-boolean v0, p0, Lbm;->ai:Z

    if-nez v0, :cond_3

    .line 6
    const-string v0, "android:cancelable"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    iget-boolean v0, p0, Lbm;->b:Z

    if-nez v0, :cond_4

    .line 7
    const-string v0, "android:showsDialog"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    iget v0, p0, Lbm;->aj:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 8
    const-string v1, "android:backStackId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method public final h()V
    .locals 2

    .line 1
    invoke-super {p0}, Lbr;->h()V

    iget-object v0, p0, Lbm;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lbm;->am:Z

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lbm;->c:Landroid/app/Dialog;

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 4
    invoke-static {v0, p0}, Lxr;->b(Landroid/view/View;Lzq;)V

    .line 5
    invoke-static {v0, p0}, Lxs;->b(Landroid/view/View;Laak;)V

    .line 6
    invoke-static {v0, p0}, Lew;->r(Landroid/view/View;Laex;)V

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 1

    .line 1
    invoke-super {p0}, Lbr;->i()V

    iget-object v0, p0, Lbm;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_0
    return-void
.end method

.method public final j(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lbr;->j(Landroid/os/Bundle;)V

    iget-object v0, p0, Lbm;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    const-string v0, "android:savedDialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lbm;->c:Landroid/app/Dialog;

    .line 3
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final k(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lbr;->k(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object p1, p0, Lbm;->P:Landroid/view/View;

    if-nez p1, :cond_0

    iget-object p1, p0, Lbm;->c:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 2
    const-string p1, "android:savedDialogState"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lbm;->c:Landroid/app/Dialog;

    .line 3
    invoke-virtual {p2, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public l()Landroid/app/Dialog;
    .locals 3

    .line 1
    const/4 v0, 0x3

    invoke-static {v0}, Lcr;->R(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateDialog called for DialogFragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    new-instance v0, Landroid/app/Dialog;

    .line 2
    invoke-virtual {p0}, Lbr;->s()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lbm;->ah:I

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public final m()Landroid/view/LayoutInflater;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lbr;->ab()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean v1, p0, Lbm;->b:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lbm;->ak:Z

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget-boolean v1, p0, Lbm;->f:Z

    if-nez v1, :cond_4

    const/4 v1, 0x0

    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lbm;->ak:Z

    .line 3
    invoke-virtual {p0}, Lbm;->l()Landroid/app/Dialog;

    move-result-object v4

    iput-object v4, p0, Lbm;->c:Landroid/app/Dialog;

    iget-boolean v5, p0, Lbm;->b:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lbm;->ag:I

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    if-eqz v5, :cond_1

    const/16 v6, 0x18

    .line 5
    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 14
    :cond_1
    :pswitch_1
    nop

    .line 6
    invoke-virtual {v4, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 3
    :goto_0
    invoke-virtual {p0}, Lbr;->r()Landroid/content/Context;

    move-result-object v4

    .line 7
    instance-of v5, v4, Landroid/app/Activity;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lbm;->c:Landroid/app/Dialog;

    check-cast v4, Landroid/app/Activity;

    .line 8
    invoke-virtual {v5, v4}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    :cond_2
    iget-object v4, p0, Lbm;->c:Landroid/app/Dialog;

    iget-boolean v5, p0, Lbm;->ai:Z

    .line 9
    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v4, p0, Lbm;->c:Landroid/app/Dialog;

    iget-object v5, p0, Lbm;->af:Landroid/content/DialogInterface$OnCancelListener;

    .line 10
    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v4, p0, Lbm;->c:Landroid/app/Dialog;

    iget-object v5, p0, Lbm;->a:Landroid/content/DialogInterface$OnDismissListener;

    .line 11
    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-boolean v3, p0, Lbm;->f:Z

    goto :goto_1

    .line 12
    :cond_3
    const/4 v3, 0x0

    iput-object v3, p0, Lbm;->c:Landroid/app/Dialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :goto_1
    iput-boolean v1, p0, Lbm;->ak:Z

    goto :goto_2

    .line 5
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lbm;->ak:Z

    .line 12
    throw v0

    .line 11
    :cond_4
    :goto_2
    invoke-static {v2}, Lcr;->R(I)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get layout inflater for DialogFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from dialog context"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Lbm;->c:Landroid/app/Dialog;

    if-eqz v1, :cond_6

    .line 14
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    :cond_6
    return-object v0

    .line 1
    :cond_7
    :goto_3
    invoke-static {v2}, Lcr;->R(I)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getting layout inflater for DialogFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_8
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lbm;->am:Z

    if-nez p1, :cond_1

    const/4 p1, 0x3

    invoke-static {p1}, Lcr;->R(I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDismiss called for DialogFragment "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2
    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lbm;->b(ZZ)V

    :cond_1
    return-void
.end method

.class public Ljy;
.super Landroid/app/Dialog;
.source "PG"


# instance fields
.field private a:Ljg;

.field private final b:Lgr;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Ljy;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Ljx;

    invoke-direct {v0, p0}, Ljx;-><init>(Ljy;)V

    iput-object v0, p0, Ljy;->b:Lgr;

    .line 2
    invoke-virtual {p0}, Ljy;->b()Ljg;

    move-result-object v0

    .line 3
    invoke-static {p1, p2}, Ljy;->a(Landroid/content/Context;I)I

    move-result p1

    .line 2
    move-object p2, v0

    check-cast p2, Ljw;

    iput p1, p2, Ljw;->B:I

    .line 4
    invoke-virtual {v0}, Ljg;->m()V

    return-void
.end method

.method private static a(Landroid/content/Context;I)I
    .locals 2

    .line 1
    if-nez p1, :cond_0

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v0, 0x7f0400c6

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3
    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    return p0

    :cond_0
    return p1
.end method


# virtual methods
.method public final addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljy;->b()Ljg;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljg;->c(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b()Ljg;
    .locals 3

    .line 1
    iget-object v0, p0, Ljy;->a:Ljg;

    if-nez v0, :cond_0

    new-instance v0, Ljw;

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Ljw;-><init>(Landroid/content/Context;Landroid/view/Window;Ljava/lang/Object;)V

    iput-object v0, p0, Ljy;->a:Ljg;

    :cond_0
    iget-object v0, p0, Ljy;->a:Ljg;

    return-object v0
.end method

.method final c(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final dismiss()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    invoke-virtual {p0}, Ljy;->b()Ljg;

    move-result-object v0

    invoke-virtual {v0}, Ljg;->f()V

    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljy;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    iget-object v0, p0, Ljy;->b:Lgr;

    .line 2
    invoke-static {v0, p1}, Lfw;->c(Lgr;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljy;->b()Ljg;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljg;->b(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final invalidateOptionsMenu()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljy;->b()Ljg;

    move-result-object v0

    invoke-virtual {v0}, Ljg;->e()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljy;->b()Ljg;

    move-result-object v0

    invoke-virtual {v0}, Ljg;->d()V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Ljy;->b()Ljg;

    move-result-object p1

    invoke-virtual {p1}, Ljg;->m()V

    return-void
.end method

.method protected final onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 2
    invoke-virtual {p0}, Ljy;->b()Ljg;

    move-result-object v0

    invoke-virtual {v0}, Ljg;->g()V

    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljy;->b()Ljg;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljg;->i(I)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Ljy;->b()Ljg;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljg;->j(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Ljy;->b()Ljg;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljg;->k(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setTitle(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    .line 2
    invoke-virtual {p0}, Ljy;->b()Ljg;

    move-result-object v0

    invoke-virtual {p0}, Ljy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljg;->l(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 3
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Ljy;->b()Ljg;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljg;->l(Ljava/lang/CharSequence;)V

    return-void
.end method

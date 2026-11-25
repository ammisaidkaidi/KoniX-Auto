.class public final Laew;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Laev;

.field private final b:Laex;


# direct methods
.method private constructor <init>(Laex;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laew;->b:Laex;

    new-instance p1, Laev;

    invoke-direct {p1}, Laev;-><init>()V

    iput-object p1, p0, Laew;->a:Laev;

    return-void
.end method

.method public static a(Laex;)Laew;
    .locals 1

    .line 1
    new-instance v0, Laew;

    invoke-direct {v0, p0}, Laew;-><init>(Laex;)V

    return-object v0
.end method


# virtual methods
.method public final b(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Laew;->b:Laex;

    invoke-interface {v0}, Laex;->C()Lzn;

    move-result-object v0

    iget-object v1, v0, Lzn;->a:Lzm;

    .line 2
    sget-object v2, Lzm;->b:Lzm;

    if-ne v1, v2, :cond_2

    .line 3
    new-instance v1, Landroidx/savedstate/Recreator;

    iget-object v2, p0, Laew;->b:Laex;

    invoke-direct {v1, v2}, Landroidx/savedstate/Recreator;-><init>(Laex;)V

    .line 4
    invoke-virtual {v0, v1}, Lzn;->b(Lzp;)V

    iget-object v1, p0, Laew;->a:Laev;

    iget-boolean v2, v1, Laev;->c:Z

    if-nez v2, :cond_1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    const-string v2, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, v1, Laev;->b:Landroid/os/Bundle;

    :cond_0
    new-instance p1, Landroidx/savedstate/SavedStateRegistry$1;

    invoke-direct {p1}, Landroidx/savedstate/SavedStateRegistry$1;-><init>()V

    .line 7
    invoke-virtual {v0, p1}, Lzn;->b(Lzp;)V

    const/4 p1, 0x1

    iput-boolean p1, v1, Laev;->c:Z

    return-void

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 5
    const-string v0, "SavedStateRegistry was already restored."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 3
    const-string v0, "Restarter must be created only during owner\'s initialization stage"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object v0, p0, Laew;->a:Laev;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, Laev;->b:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, v0, Laev;->a:Lup;

    .line 3
    invoke-virtual {v0}, Lup;->e()Lum;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v0}, Lum;->a()Ljava/util/Map$Entry;

    move-result-object v2

    check-cast v2, Lul;

    iget-object v3, v2, Lul;->a:Ljava/lang/Object;

    .line 5
    check-cast v3, Ljava/lang/String;

    .line 4
    iget-object v2, v2, Lul;->b:Ljava/lang/Object;

    .line 5
    check-cast v2, Laeu;

    invoke-interface {v2}, Laeu;->a()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    nop

    .line 6
    const-string v0, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

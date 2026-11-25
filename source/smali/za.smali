.class public final Lza;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lyy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lyy;->a:Lyy;

    sput-object v0, Lza;->a:Lyy;

    return-void
.end method

.method public static final a(Lbr;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lyw;

    invoke-direct {v0, p0, p1}, Lyw;-><init>(Lbr;Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Lza;->h(Lzf;)V

    .line 3
    invoke-static {p0}, Lza;->f(Lbr;)Lyy;

    move-result-object p1

    iget-object v1, p1, Lyy;->b:Ljava/util/Set;

    .line 4
    sget-object v2, Lyx;->c:Lyx;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 5
    invoke-static {p1, p0, v1}, Lza;->i(Lyy;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 6
    invoke-static {p1, v0}, Lza;->g(Lyy;Lzf;)V

    :cond_0
    return-void
.end method

.method public static final b(Lbr;Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lzb;

    invoke-direct {v0, p0, p1}, Lzb;-><init>(Lbr;Landroid/view/ViewGroup;)V

    .line 2
    invoke-static {v0}, Lza;->h(Lzf;)V

    .line 3
    invoke-static {p0}, Lza;->f(Lbr;)Lyy;

    move-result-object p1

    iget-object v1, p1, Lyy;->b:Ljava/util/Set;

    .line 4
    sget-object v2, Lyx;->d:Lyx;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 5
    invoke-static {p1, p0, v1}, Lza;->i(Lyy;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 6
    invoke-static {p1, v0}, Lza;->g(Lyy;Lzf;)V

    :cond_0
    return-void
.end method

.method public static final c(Lbr;)V
    .locals 4

    .line 1
    new-instance v0, Lzc;

    invoke-direct {v0, p0}, Lzc;-><init>(Lbr;)V

    .line 2
    invoke-static {v0}, Lza;->h(Lzf;)V

    .line 3
    invoke-static {p0}, Lza;->f(Lbr;)Lyy;

    move-result-object v1

    iget-object v2, v1, Lyy;->b:Ljava/util/Set;

    .line 4
    sget-object v3, Lyx;->g:Lyx;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 5
    invoke-static {v1, p0, v2}, Lza;->i(Lyy;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 6
    invoke-static {v1, v0}, Lza;->g(Lyy;Lzf;)V

    :cond_0
    return-void
.end method

.method public static final d(Lbr;Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lzg;

    invoke-direct {v0, p0, p1}, Lzg;-><init>(Lbr;Landroid/view/ViewGroup;)V

    .line 2
    invoke-static {v0}, Lza;->h(Lzf;)V

    .line 3
    invoke-static {p0}, Lza;->f(Lbr;)Lyy;

    move-result-object p1

    iget-object v1, p1, Lyy;->b:Ljava/util/Set;

    .line 4
    sget-object v2, Lyx;->h:Lyx;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 5
    invoke-static {p1, p0, v1}, Lza;->i(Lyy;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 6
    invoke-static {p1, v0}, Lza;->g(Lyy;Lzf;)V

    :cond_0
    return-void
.end method

.method public static final e(Lbr;Lbr;)V
    .locals 3

    .line 1
    new-instance v0, Lzd;

    invoke-direct {v0, p0, p1}, Lzd;-><init>(Lbr;Lbr;)V

    .line 2
    invoke-static {v0}, Lza;->h(Lzf;)V

    .line 3
    invoke-static {p0}, Lza;->f(Lbr;)Lyy;

    move-result-object p1

    iget-object v1, p1, Lyy;->b:Ljava/util/Set;

    .line 4
    sget-object v2, Lyx;->g:Lyx;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 5
    invoke-static {p1, p0, v1}, Lza;->i(Lyy;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 6
    invoke-static {p1, v0}, Lza;->g(Lyy;Lzf;)V

    :cond_0
    return-void
.end method

.method private static final f(Lbr;)Lyy;
    .locals 1

    .line 1
    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lbr;->X()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbr;->A()Lcr;

    :cond_0
    iget-object p0, p0, Lbr;->D:Lbr;

    goto :goto_0

    :cond_1
    sget-object p0, Lza;->a:Lyy;

    return-object p0
.end method

.method private static final g(Lyy;Lzf;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lzf;->a:Lbr;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lyy;->b:Ljava/util/Set;

    .line 2
    sget-object v3, Lyx;->a:Lyx;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    const-string v2, "Policy violation in "

    invoke-static {v2, v1}, Ldpx;->d(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lyy;->b:Ljava/util/Set;

    sget-object v2, Lyx;->b:Lyx;

    .line 4
    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Lyz;

    invoke-direct {p0, v1, p1}, Lyz;-><init>(Ljava/lang/String;Lzf;)V

    .line 5
    invoke-virtual {v0}, Lbr;->X()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {v0}, Lbr;->A()Lcr;

    move-result-object p1

    iget-object p1, p1, Lcr;->j:Lcc;

    iget-object p1, p1, Lcc;->d:Landroid/os/Handler;

    .line 7
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Ldpx;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 9
    :cond_1
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 10
    :cond_2
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method

.method private static final h(Lzf;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    invoke-static {v0}, Lcr;->R(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lzf;->a:Lbr;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StrictMode violation in "

    invoke-static {v0, p0}, Ldpx;->d(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private static final i(Lyy;Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lyy;->c:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    const/4 p1, 0x1

    if-nez p0, :cond_0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lzf;

    invoke-static {v0, v1}, Ldpx;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 4
    invoke-interface {p0, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    return v1

    :cond_2
    :goto_0
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return p1

    :cond_3
    return v1
.end method

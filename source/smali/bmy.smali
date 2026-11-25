.class public abstract Lbmy;
.super Lbmn;
.source "PG"

# interfaces
.implements Lbjx;


# static fields
.field private static volatile s:Ljava/util/concurrent/Executor;


# instance fields
.field public final r:Ljava/util/Set;

.field private final t:Landroid/accounts/Account;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILbmp;Lbky;Lblu;)V
    .locals 9

    .line 1
    invoke-static {p1}, Lbna;->a(Landroid/content/Context;)Lbna;

    move-result-object v3

    .line 2
    sget-object v4, Lbjd;->a:Lbjd;

    .line 3
    invoke-static {p5}, Lhr;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p6}, Lhr;->d(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lbmw;

    invoke-direct {v6, p5}, Lbmw;-><init>(Lbky;)V

    new-instance v7, Lbmx;

    invoke-direct {v7, p6}, Lbmx;-><init>(Lblu;)V

    iget-object v8, p4, Lbmp;->e:Ljava/lang/String;

    .line 5
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v8}, Lbmn;-><init>(Landroid/content/Context;Landroid/os/Looper;Lbna;Lbje;ILbmw;Lbmx;Ljava/lang/String;)V

    iget-object p1, p4, Lbmp;->a:Landroid/accounts/Account;

    iput-object p1, p0, Lbmy;->t:Landroid/accounts/Account;

    iget-object p1, p4, Lbmp;->c:Ljava/util/Set;

    .line 6
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/common/api/Scope;

    .line 7
    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 8
    const-string p2, "Expanding scopes is not permitted, use implied scopes instead"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput-object p1, p0, Lbmy;->r:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final A()[Lbjb;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lbjb;

    return-object v0
.end method

.method protected final C()V
    .locals 0

    return-void
.end method

.method public a()I
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final j()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbmn;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbmy;->r:Ljava/util/Set;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final u()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lbmy;->t:Landroid/accounts/Account;

    return-object v0
.end method

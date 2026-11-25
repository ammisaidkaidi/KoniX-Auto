.class public final Lceg;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/net/Uri;

.field public final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Z

.field final g:Z

.field final h:Z

.field final i:Lcny;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 2
    const-string v1, "direct_boot:com.google.android.gms.phenotype"

    const/4 v2, 0x0

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lceg;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 7

    .line 1
    const/4 v1, 0x0

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lceg;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lceg;->a:Ljava/lang/String;

    iput-object p2, p0, Lceg;->b:Landroid/net/Uri;

    iput-object p3, p0, Lceg;->c:Ljava/lang/String;

    iput-object p4, p0, Lceg;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lceg;->e:Z

    iput-boolean p6, p0, Lceg;->f:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lceg;->g:Z

    iput-boolean p1, p0, Lceg;->h:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lceg;->i:Lcny;

    return-void
.end method


# virtual methods
.method public final a()Lceg;
    .locals 8

    new-instance v7, Lceg;

    iget-object v1, p0, Lceg;->a:Ljava/lang/String;

    iget-object v2, p0, Lceg;->b:Landroid/net/Uri;

    iget-object v3, p0, Lceg;->c:Ljava/lang/String;

    iget-object v4, p0, Lceg;->d:Ljava/lang/String;

    iget-boolean v5, p0, Lceg;->e:Z

    const/4 v6, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lceg;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v7
.end method

.method public final b()Lceg;
    .locals 8

    .line 1
    iget-object v0, p0, Lceg;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lceg;

    iget-object v2, p0, Lceg;->a:Ljava/lang/String;

    iget-object v3, p0, Lceg;->b:Landroid/net/Uri;

    iget-object v4, p0, Lceg;->c:Ljava/lang/String;

    iget-object v5, p0, Lceg;->d:Ljava/lang/String;

    const/4 v6, 0x1

    iget-boolean v7, p0, Lceg;->f:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lceg;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    const-string v1, "Cannot set GServices prefix and skip GServices"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(Ljava/lang/String;)Lceg;
    .locals 8

    .line 1
    iget-boolean v0, p0, Lceg;->e:Z

    if-nez v0, :cond_0

    new-instance v0, Lceg;

    iget-object v2, p0, Lceg;->a:Ljava/lang/String;

    iget-object v3, p0, Lceg;->b:Landroid/net/Uri;

    iget-object v5, p0, Lceg;->d:Ljava/lang/String;

    const/4 v6, 0x0

    iget-boolean v7, p0, Lceg;->f:Z

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lceg;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set GServices prefix and skip GServices"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Ljava/lang/String;Ljava/lang/Object;Lcef;)Lcei;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcei;->b(Lceg;Ljava/lang/String;Ljava/lang/Object;Lcef;Z)Lcei;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/String;J)Lcei;
    .locals 0

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    new-instance p3, Lcea;

    .line 2
    invoke-direct {p3, p0, p1, p2}, Lcea;-><init>(Lceg;Ljava/lang/String;Ljava/lang/Long;)V

    return-object p3
.end method

.method public final f(Ljava/lang/String;Z)Lcei;
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    new-instance v0, Lceb;

    .line 2
    invoke-direct {v0, p0, p1, p2}, Lceb;-><init>(Lceg;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public final g(Ljava/lang/String;Ljava/lang/Object;Lcef;)Lcei;
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcei;->b(Lceg;Ljava/lang/String;Ljava/lang/Object;Lcef;Z)Lcei;

    move-result-object p1

    return-object p1
.end method

.method public final h(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    new-instance v1, Lcec;

    .line 2
    invoke-direct {v1, p0, p1, v0}, Lcec;-><init>(Lceg;Ljava/lang/String;Ljava/lang/Double;)V

    return-void
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lced;

    .line 2
    invoke-direct {v0, p0, p1, p2}, Lced;-><init>(Lceg;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

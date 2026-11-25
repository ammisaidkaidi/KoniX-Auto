.class public final Lcgo;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcgo;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcgo;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcgo;->b:Z

    iput-boolean p3, p0, Lcgo;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;J)Lcgj;
    .locals 8

    .line 1
    new-instance v0, Lcgj;

    iget-object v1, p0, Lcgo;->a:Ljava/lang/String;

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    new-instance p3, Lcfg;

    iget-boolean v2, p0, Lcgo;->b:Z

    iget-boolean v3, p0, Lcgo;->c:Z

    sget-object v4, Lcgk;->c:Lcgk;

    new-instance v5, Lcgm;

    const-class v6, Ljava/lang/Long;

    .line 3
    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcgm;-><init>(Ljava/lang/Class;I)V

    invoke-direct {p3, v2, v3, v4, v5}, Lcfg;-><init>(ZZLcgn;Lcgn;)V

    invoke-direct {v0, v1, p1, p2, p3}, Lcgj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcfh;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;Z)Lcgj;
    .locals 9

    .line 1
    new-instance v0, Lcgj;

    iget-object v1, p0, Lcgo;->a:Ljava/lang/String;

    .line 2
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    new-instance v2, Lcfg;

    iget-boolean v3, p0, Lcgo;->b:Z

    iget-boolean v4, p0, Lcgo;->c:Z

    sget-object v5, Lcgk;->a:Lcgk;

    new-instance v6, Lcgm;

    const-class v7, Ljava/lang/Boolean;

    .line 3
    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lcgm;-><init>(Ljava/lang/Class;I)V

    invoke-direct {v2, v3, v4, v5, v6}, Lcfg;-><init>(ZZLcgn;Lcgn;)V

    invoke-direct {v0, v1, p1, p2, v2}, Lcgj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcfh;)V

    return-object v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/Object;Lcgn;)Lcgj;
    .locals 8

    .line 1
    new-instance v0, Lcgj;

    iget-object v1, p0, Lcgo;->a:Ljava/lang/String;

    new-instance v2, Lcfg;

    iget-boolean v3, p0, Lcgo;->b:Z

    iget-boolean v4, p0, Lcgo;->c:Z

    new-instance v5, Lcgl;

    const/4 v6, 0x0

    invoke-direct {v5, p3, v6}, Lcgl;-><init>(Lcgn;I)V

    new-instance v6, Lcgl;

    const/4 v7, 0x1

    invoke-direct {v6, p3, v7}, Lcgl;-><init>(Lcgn;I)V

    invoke-direct {v2, v3, v4, v5, v6}, Lcfg;-><init>(ZZLcgn;Lcgn;)V

    invoke-direct {v0, v1, p1, p2, v2}, Lcgj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcfh;)V

    return-object v0
.end method

.method public final d()Lcgo;
    .locals 4

    new-instance v0, Lcgo;

    iget-object v1, p0, Lcgo;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcgo;->c:Z

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcgo;-><init>(Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public final e()Lcgo;
    .locals 4

    new-instance v0, Lcgo;

    iget-object v1, p0, Lcgo;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcgo;->b:Z

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcgo;-><init>(Ljava/lang/String;ZZ)V

    return-object v0
.end method

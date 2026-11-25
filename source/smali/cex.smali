.class public final Lcex;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lceo;


# instance fields
.field private final a:Lbkc;


# direct methods
.method public constructor <init>(Lbkc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcex;->a:Lbkc;

    return-void
.end method

.method private static f(Lbrh;)Ldag;
    .locals 3

    .line 1
    invoke-static {}, Ldas;->e()Ldas;

    move-result-object v0

    .line 2
    sget-object v1, Lczj;->a:Lczj;

    new-instance v2, Lbtm;

    invoke-direct {v2, v0}, Lbtm;-><init>(Ldas;)V

    .line 3
    invoke-virtual {p0, v1, v2}, Lbrh;->f(Ljava/util/concurrent/Executor;Lbrc;)V

    const-class p0, Lbjz;

    sget-object v1, Lciu;->b:Lciu;

    sget-object v2, Lczj;->a:Lczj;

    .line 4
    invoke-static {v0, p0, v1, v2}, Lcyb;->e(Ldag;Ljava/lang/Class;Lczc;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ldag;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcex;->a:Lbkc;

    .line 2
    invoke-virtual {v0, p1}, Lbkc;->e(Ljava/lang/String;)Lbrh;

    move-result-object p1

    invoke-static {p1}, Lcex;->f(Lbrh;)Ldag;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ldag;
    .locals 3

    .line 1
    iget-object v0, p0, Lcex;->a:Lbkc;

    invoke-static {}, Lbmc;->a()Lbmb;

    move-result-object v1

    new-instance v2, Lbov;

    invoke-direct {v2}, Lbov;-><init>()V

    iput-object v2, v1, Lbmb;->a:Lblx;

    invoke-virtual {v1}, Lbmb;->a()Lbmc;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lbkc;->c(Lbmc;)Lbrh;

    move-result-object v0

    .line 3
    sget-object v1, Lczj;->a:Lczj;

    new-instance v2, Laga;

    invoke-direct {v2}, Laga;-><init>()V

    .line 4
    invoke-virtual {v0, v1, v2}, Lbrh;->g(Ljava/util/concurrent/Executor;Laga;)Lbrh;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcex;->f(Lbrh;)Ldag;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Ldag;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcex;->a:Lbkc;

    .line 3
    invoke-virtual {v0, p1, p2}, Lbkc;->g(Ljava/lang/String;Ljava/lang/String;)Lbrh;

    move-result-object p1

    .line 4
    sget-object p2, Lczj;->a:Lczj;

    new-instance v0, Laga;

    invoke-direct {v0}, Laga;-><init>()V

    .line 5
    invoke-virtual {p1, p2, v0}, Lbrh;->g(Ljava/util/concurrent/Executor;Laga;)Lbrh;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcex;->f(Lbrh;)Ldag;

    move-result-object p1

    return-object p1
.end method

.method public final d(I[Ljava/lang/String;[B)Ldag;
    .locals 2

    .line 1
    iget-object v0, p0, Lcex;->a:Lbkc;

    const-string v1, "com.google.android.apps.auto.aareceiver#com.google.android.embedded.projection"

    invoke-virtual {v0, v1, p1, p2, p3}, Lbkc;->f(Ljava/lang/String;I[Ljava/lang/String;[B)Lbrh;

    move-result-object p1

    invoke-static {p1}, Lcex;->f(Lbrh;)Ldag;

    move-result-object p1

    return-object p1
.end method

.method public final e()Ldag;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {v0}, Lhh;->j(Ljava/lang/Object;)Ldag;

    move-result-object v0

    return-object v0
.end method

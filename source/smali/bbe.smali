.class public final synthetic Lbbe;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ldas;

.field public final synthetic b:Lcmh;


# direct methods
.method public synthetic constructor <init>(Ldas;Lcmh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbbe;->a:Ldas;

    iput-object p2, p0, Lbbe;->b:Lcmh;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lbbe;->a:Ldas;

    iget-object v1, p0, Lbbe;->b:Lcmh;

    invoke-virtual {v0}, Ldas;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v1}, Lcmh;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lbbl;->a:Lcsz;

    invoke-virtual {v1}, Lcsv;->b()Lctq;

    move-result-object v1

    .line 3
    invoke-interface {v1, v0}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const/16 v1, 0x259

    const-string v2, "com/google/android/apps/auto/aareceiver/session/ProjectionSession"

    const-string v3, "lambda$openTransport$3"

    const-string v4, "ProjectionSession.java"

    invoke-interface {v0, v2, v3, v1, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Could not interrupt TransportFactory"

    invoke-interface {v0, v1}, Lcsx;->n(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    return-void
.end method

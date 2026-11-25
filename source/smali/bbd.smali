.class public final synthetic Lbbd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ldas;


# direct methods
.method public synthetic constructor <init>(Ldas;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbbd;->a:Ldas;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lbbd;->a:Ldas;

    sget-object v1, Lbbl;->a:Lcsz;

    invoke-virtual {v1}, Lcsv;->c()Lctq;

    move-result-object v1

    const-string v2, "com/google/android/apps/auto/aareceiver/session/ProjectionSession"

    const-string v3, "lambda$openTransport$2"

    const/16 v4, 0x22b

    const-string v5, "ProjectionSession.java"

    invoke-interface {v1, v2, v3, v4, v5}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v1

    check-cast v1, Lcsx;

    const-string v2, "Cancelling transportFuture"

    invoke-interface {v1, v2}, Lcsx;->n(Ljava/lang/String;)V

    .line 2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldas;->cancel(Z)Z

    return-void
.end method

.class public final synthetic Lcms;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcmw;

.field public final synthetic b:Ldas;

.field public final synthetic c:Lcmu;


# direct methods
.method public synthetic constructor <init>(Lcmw;Ldas;Lcmu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcms;->a:Lcmw;

    iput-object p2, p0, Lcms;->b:Ldas;

    iput-object p3, p0, Lcms;->c:Lcmu;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcms;->a:Lcmw;

    iget-object v1, p0, Lcms;->b:Ldas;

    iget-object v2, p0, Lcms;->c:Lcmu;

    :try_start_0
    invoke-static {v1}, Lhh;->o(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, v0, Lcmw;->d:Ldas;

    .line 3
    invoke-virtual {v3, v1}, Ldas;->k(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcmw;->d:Ldas;

    .line 4
    invoke-virtual {v2, v0}, Lcmu;->d(Ldag;)Z

    return-void

    .line 2
    :catchall_0
    move-exception v0

    invoke-virtual {v2, v1}, Lcmu;->d(Ldag;)Z

    return-void
.end method

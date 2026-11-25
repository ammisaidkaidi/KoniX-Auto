.class final Lbft;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltq;


# instance fields
.field final synthetic a:Lbfu;


# direct methods
.method public constructor <init>(Lbfu;)V
    .locals 0

    iput-object p1, p0, Lbft;->a:Lbfu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lbft;->a:Lbfu;

    iget-boolean v1, v0, Lbfu;->a:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lbfu;->a:Z

    invoke-virtual {v0}, Lbfu;->aT()Ljava/lang/Object;

    move-result-object v1

    check-cast v0, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;

    check-cast v1, Lass;

    iget-object v2, v1, Lass;->a:Latj;

    iget-object v2, v2, Latj;->p:Ldny;

    .line 2
    invoke-interface {v2}, Ldny;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbah;

    iput-object v2, v0, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->d:Lbah;

    .line 1
    iget-object v1, v1, Lass;->a:Latj;

    iget-object v1, v1, Latj;->l:Ldny;

    .line 3
    invoke-interface {v1}, Ldny;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbcj;

    iput-object v1, v0, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->e:Lbcj;

    :cond_0
    return-void
.end method

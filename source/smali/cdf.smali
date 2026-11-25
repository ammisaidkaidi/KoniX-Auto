.class public final synthetic Lcdf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczc;


# instance fields
.field public final synthetic a:Lcdh;

.field public final synthetic b:Ldpz;


# direct methods
.method public synthetic constructor <init>(Lcdh;Ldpz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcdf;->a:Lcdh;

    iput-object p2, p0, Lcdf;->b:Ldpz;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ldag;
    .locals 4

    .line 1
    iget-object v0, p0, Lcdf;->a:Lcdh;

    iget-object v1, p0, Lcdf;->b:Ldpz;

    check-cast p1, Lccs;

    iget-object v2, v0, Lcdh;->b:Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;

    iget-object v0, v0, Lcdh;->a:Landroid/content/Context;

    sget-object v3, Lccs;->c:Lccs;

    .line 2
    invoke-virtual {v3}, Lddk;->n()Lddf;

    move-result-object v3

    check-cast v3, Lddh;

    .line 3
    invoke-virtual {v3, p1}, Lddf;->n(Lddk;)V

    iget-boolean p1, v3, Lddf;->c:Z

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v3}, Lddf;->k()V

    const/4 p1, 0x0

    iput-boolean p1, v3, Lddf;->c:Z

    :cond_0
    iget-object p1, v3, Lddh;->b:Lddk;

    .line 5
    check-cast p1, Lccs;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p1, Lccs;->b:Ldpz;

    iget v1, p1, Lccs;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p1, Lccs;->a:I

    .line 7
    invoke-virtual {v3}, Lddf;->f()Lddk;

    move-result-object p1

    check-cast p1, Lccs;

    .line 8
    invoke-virtual {v2, v0, p1}, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;->a(Landroid/content/Context;Lccs;)Ldag;

    move-result-object p1

    return-object p1
.end method

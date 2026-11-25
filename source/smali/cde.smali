.class public final Lcde;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldhx;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcde;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;

    invoke-direct {v0}, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;-><init>()V

    return-object v0
.end method

.method public static c()Lcxz;
    .locals 1

    .line 1
    sget-object v0, Lcxy;->a:Lcxy;

    .line 2
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 4
    iget v0, p0, Lcde;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ldhh;

    invoke-direct {v0}, Ldhh;-><init>()V

    return-object v0

    .line 1
    :pswitch_0
    invoke-static {}, Lcde;->c()Lcxz;

    move-result-object v0

    return-object v0

    .line 3
    :pswitch_1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1
    :pswitch_2
    const/4 v0, 0x0

    .line 3
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

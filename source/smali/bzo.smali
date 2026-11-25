.class public final Lbzo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldhx;


# instance fields
.field private final a:Ldny;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ldny;I)V
    .locals 0

    iput p2, p0, Lbzo;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbzo;->a:Ldny;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 4

    .line 6
    iget v0, p0, Lbzo;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lbzo;->a:Ldny;

    check-cast v0, Ldhy;

    iget-object v0, v0, Ldhy;->a:Ljava/lang/Object;

    check-cast v0, Lcoc;

    .line 7
    invoke-static {v0}, Lcdh;->c(Lcoc;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-static {}, Lcde;->b()Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lcqw;->o(Ljava/lang/Object;)Lcqw;

    move-result-object v0

    goto :goto_0

    .line 10
    :pswitch_0
    iget-object v0, p0, Lbzo;->a:Ldny;

    .line 1
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Random;

    new-instance v1, Lcbr;

    .line 2
    invoke-direct {v1, v0}, Lcbr;-><init>(Ljava/util/Random;)V

    return-object v1

    :pswitch_1
    iget-object v0, p0, Lbzo;->a:Ldny;

    .line 3
    new-instance v1, Lbzj;

    invoke-direct {v1, v0}, Lbzj;-><init>(Ldny;)V

    return-object v1

    :pswitch_2
    iget-object v0, p0, Lbzo;->a:Ldny;

    check-cast v0, Ldhy;

    iget-object v0, v0, Ldhy;->a:Ljava/lang/Object;

    .line 4
    check-cast v0, Lcoc;

    new-instance v1, Lbzp;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lbzp;-><init>([B)V

    new-instance v2, Lbzq;

    iget-object v3, v1, Lbzp;->a:Lcoc;

    iget-object v1, v1, Lbzp;->b:Lcoc;

    invoke-direct {v2, v3, v1}, Lbzq;-><init>(Lcoc;Lcoc;)V

    .line 5
    invoke-virtual {v0, v2}, Lcoc;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbzq;

    return-object v0

    .line 10
    :cond_0
    sget-object v0, Lcsf;->a:Lcsf;

    .line 11
    :goto_0
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

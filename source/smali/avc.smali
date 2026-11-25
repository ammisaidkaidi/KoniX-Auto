.class public final Lavc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldhx;


# instance fields
.field private final a:Ldny;

.field private final b:Ldny;

.field private final c:Ldny;

.field private final d:Ldny;

.field private final synthetic e:I


# direct methods
.method public constructor <init>(Ldny;Ldny;Ldny;Ldny;I)V
    .locals 0

    iput p5, p0, Lavc;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lavc;->a:Ldny;

    iput-object p2, p0, Lavc;->b:Ldny;

    iput-object p3, p0, Lavc;->c:Ldny;

    iput-object p4, p0, Lavc;->d:Ldny;

    return-void
.end method

.method public constructor <init>(Ldny;Ldny;Ldny;Ldny;I[B)V
    .locals 0

    iput p5, p0, Lavc;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lavc;->d:Ldny;

    iput-object p2, p0, Lavc;->a:Ldny;

    iput-object p3, p0, Lavc;->c:Ldny;

    iput-object p4, p0, Lavc;->b:Ldny;

    return-void
.end method

.method public constructor <init>(Ldny;Ldny;Ldny;Ldny;I[C)V
    .locals 0

    iput p5, p0, Lavc;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lavc;->d:Ldny;

    iput-object p2, p0, Lavc;->b:Ldny;

    iput-object p3, p0, Lavc;->c:Ldny;

    iput-object p4, p0, Lavc;->a:Ldny;

    return-void
.end method

.method public constructor <init>(Ldny;Ldny;Ldny;Ldny;I[F)V
    .locals 0

    iput p5, p0, Lavc;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lavc;->a:Ldny;

    iput-object p2, p0, Lavc;->d:Ldny;

    iput-object p3, p0, Lavc;->c:Ldny;

    iput-object p4, p0, Lavc;->b:Ldny;

    return-void
.end method

.method public constructor <init>(Ldny;Ldny;Ldny;Ldny;I[I)V
    .locals 0

    iput p5, p0, Lavc;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lavc;->b:Ldny;

    iput-object p2, p0, Lavc;->a:Ldny;

    iput-object p3, p0, Lavc;->c:Ldny;

    iput-object p4, p0, Lavc;->d:Ldny;

    return-void
.end method

.method public constructor <init>(Ldny;Ldny;Ldny;Ldny;I[S)V
    .locals 0

    iput p5, p0, Lavc;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lavc;->d:Ldny;

    iput-object p2, p0, Lavc;->a:Ldny;

    iput-object p3, p0, Lavc;->b:Ldny;

    iput-object p4, p0, Lavc;->c:Ldny;

    return-void
.end method

.method public constructor <init>(Ldny;Ldny;Ldny;Ldny;I[Z)V
    .locals 0

    iput p5, p0, Lavc;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lavc;->d:Ldny;

    iput-object p2, p0, Lavc;->b:Ldny;

    iput-object p3, p0, Lavc;->c:Ldny;

    iput-object p4, p0, Lavc;->a:Ldny;

    return-void
.end method

.method public constructor <init>(Ldny;Ldny;Ldny;Ldny;I[[B)V
    .locals 0

    iput p5, p0, Lavc;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lavc;->b:Ldny;

    iput-object p2, p0, Lavc;->c:Ldny;

    iput-object p3, p0, Lavc;->d:Ldny;

    iput-object p4, p0, Lavc;->a:Ldny;

    return-void
.end method

.method public constructor <init>(Ldny;Ldny;Ldny;Ldny;I[[C)V
    .locals 0

    iput p5, p0, Lavc;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lavc;->a:Ldny;

    iput-object p2, p0, Lavc;->d:Ldny;

    iput-object p3, p0, Lavc;->b:Ldny;

    iput-object p4, p0, Lavc;->c:Ldny;

    return-void
.end method

.method public constructor <init>(Ldny;Ldny;Ldny;Ldny;I[[S)V
    .locals 0

    iput p5, p0, Lavc;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lavc;->b:Ldny;

    iput-object p2, p0, Lavc;->a:Ldny;

    iput-object p3, p0, Lavc;->c:Ldny;

    iput-object p4, p0, Lavc;->d:Ldny;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lavc;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lavc;->b:Ldny;

    iget-object v1, p0, Lavc;->a:Ldny;

    iget-object v2, p0, Lavc;->c:Ldny;

    iget-object v3, p0, Lavc;->d:Ldny;

    new-instance v4, Lcce;

    invoke-direct {v4, v0, v1, v2, v3}, Lcce;-><init>(Ldny;Ldny;Ldny;Ldny;)V

    return-object v4

    :pswitch_0
    iget-object v0, p0, Lavc;->a:Ldny;

    check-cast v0, Latg;

    invoke-virtual {v0}, Latg;->b()Lcoc;

    iget-object v0, p0, Lavc;->d:Ldny;

    check-cast v0, Lcax;

    invoke-virtual {v0}, Lcax;->b()Lcoc;

    iget-object v0, p0, Lavc;->c:Ldny;

    .line 2
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbwq;

    invoke-static {v0}, Lcqw;->o(Ljava/lang/Object;)Lcqw;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lavc;->b:Ldny;

    .line 3
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbvh;

    iget-object v1, p0, Lavc;->c:Ldny;

    iget-object v2, p0, Lavc;->d:Ldny;

    iget-object v3, p0, Lavc;->a:Ldny;

    new-instance v4, Lcaf;

    .line 4
    invoke-direct {v4, v0, v1, v2, v3}, Lcaf;-><init>(Lbvh;Ldny;Ldny;Ldny;)V

    return-object v4

    :pswitch_2
    iget-object v0, p0, Lavc;->a:Ldny;

    .line 5
    invoke-static {v0}, Ldhw;->b(Ldny;)Ldgz;

    move-result-object v0

    iget-object v1, p0, Lavc;->d:Ldny;

    iget-object v2, p0, Lavc;->c:Ldny;

    check-cast v2, Ldhy;

    iget-object v2, v2, Ldhy;->a:Ljava/lang/Object;

    check-cast v2, Lcoc;

    iget-object v3, p0, Lavc;->b:Ldny;

    invoke-interface {v3}, Ldny;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    new-instance v4, Lbxw;

    .line 6
    invoke-direct {v4, v0, v1, v2, v3}, Lbxw;-><init>(Ldgz;Ldny;Lcoc;Ljava/util/concurrent/Executor;)V

    return-object v4

    :pswitch_3
    iget-object v0, p0, Lavc;->d:Ldny;

    check-cast v0, Ldhr;

    .line 7
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lavc;->b:Ldny;

    invoke-interface {v1}, Ldny;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/CarProjectionManager;

    iget-object v2, p0, Lavc;->c:Ldny;

    invoke-interface {v2}, Ldny;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lavc;->a:Ldny;

    invoke-interface {v3}, Ldny;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    new-instance v3, Lbhi;

    invoke-direct {v3, v0, v1, v2}, Lbhi;-><init>(Landroid/content/Context;Landroid/car/CarProjectionManager;Landroid/net/wifi/WifiManager;)V

    return-object v3

    :pswitch_4
    iget-object v0, p0, Lavc;->b:Ldny;

    check-cast v0, Ldhr;

    .line 8
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lavc;->a:Ldny;

    check-cast v1, Ldhy;

    iget-object v1, v1, Ldhy;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/projection/protocol/GalReceiver;

    iget-object v2, p0, Lavc;->c:Ldny;

    invoke-interface {v2}, Ldny;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzn;

    iget-object v3, p0, Lavc;->d:Ldny;

    invoke-interface {v3}, Ldny;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbah;

    new-instance v4, Lbcu;

    .line 9
    invoke-direct {v4, v0, v1, v2, v3}, Lbcu;-><init>(Landroid/content/Context;Lcom/google/android/projection/protocol/GalReceiver;Lzn;Lbah;)V

    return-object v4

    :pswitch_5
    iget-object v0, p0, Lavc;->d:Ldny;

    check-cast v0, Ldhr;

    .line 10
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lavc;->a:Ldny;

    check-cast v1, Layi;

    invoke-virtual {v1}, Layi;->b()Layh;

    move-result-object v1

    iget-object v2, p0, Lavc;->b:Ldny;

    invoke-interface {v2}, Ldny;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/CarProjectionManager;

    iget-object v3, p0, Lavc;->c:Ldny;

    invoke-interface {v3}, Ldny;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbcj;

    .line 11
    invoke-static {v0, v1, v2, v3}, Layf;->b(Landroid/content/Context;Layh;Landroid/car/CarProjectionManager;Lbcj;)Layf;

    move-result-object v0

    return-object v0

    :pswitch_6
    iget-object v0, p0, Lavc;->d:Ldny;

    check-cast v0, Ldhr;

    .line 12
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lavc;->b:Ldny;

    invoke-interface {v1}, Ldny;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lavc;->c:Ldny;

    invoke-interface {v2}, Ldny;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iget-object v3, p0, Lavc;->a:Ldny;

    invoke-interface {v3}, Ldny;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbde;

    .line 13
    new-instance v4, Lavk;

    invoke-direct {v4, v0, v1, v2, v3}, Lavk;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Landroid/os/UserManager;Lbde;)V

    return-object v4

    :pswitch_7
    iget-object v0, p0, Lavc;->d:Ldny;

    .line 14
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lavc;->a:Ldny;

    check-cast v1, Ldhy;

    iget-object v1, v1, Ldhy;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/projection/protocol/GalReceiver;

    iget-object v2, p0, Lavc;->c:Ldny;

    invoke-interface {v2}, Ldny;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzn;

    iget-object v3, p0, Lavc;->b:Ldny;

    invoke-interface {v3}, Ldny;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhg;

    .line 15
    invoke-static {}, Latz;->b()Ldai;

    move-result-object v3

    .line 16
    new-instance v4, Lauw;

    invoke-direct {v4, v0, v1, v2, v3}, Lauw;-><init>(Landroid/media/AudioManager;Lcom/google/android/projection/protocol/GalReceiver;Lzn;Ljava/util/concurrent/ExecutorService;)V

    return-object v4

    :pswitch_8
    iget-object v0, p0, Lavc;->a:Ldny;

    check-cast v0, Ldhr;

    .line 17
    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lavc;->b:Ldny;

    invoke-interface {v1}, Ldny;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lavc;->c:Ldny;

    invoke-interface {v2}, Ldny;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbde;

    iget-object v3, p0, Lavc;->d:Ldny;

    invoke-interface {v3}, Ldny;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    new-instance v4, Lavb;

    .line 18
    invoke-direct {v4, v0, v1, v2, v3}, Lavb;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Lbde;Ljava/util/concurrent/Executor;)V

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

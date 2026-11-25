.class public final Lcxu;
.super Lddk;
.source "PG"

# interfaces
.implements Ldes;


# static fields
.field public static final d:Lcxu;

.field private static volatile f:Ldex;


# instance fields
.field public a:I

.field public b:Lcxt;

.field public c:Lddr;

.field private e:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcxu;

    invoke-direct {v0}, Lcxu;-><init>()V

    sput-object v0, Lcxu;->d:Lcxu;

    const-class v1, Lcxu;

    .line 2
    invoke-static {v1, v0}, Lddk;->D(Ljava/lang/Class;Lddk;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lddk;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcxu;->e:B

    .line 2
    sget-object v0, Ldfa;->b:Ldfa;

    iput-object v0, p0, Lcxu;->c:Lddr;

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 2
    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    if-nez p2, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_1
    sget-object p1, Lcxu;->f:Ldex;

    if-nez p1, :cond_1

    const-class p2, Lcxu;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcxu;->f:Ldex;

    if-nez p1, :cond_0

    new-instance p1, Lddg;

    sget-object v0, Lcxu;->d:Lcxu;

    invoke-direct {p1, v0}, Lddg;-><init>(Lddk;)V

    sput-object p1, Lcxu;->f:Ldex;

    .line 3
    :cond_0
    monitor-exit p2

    goto :goto_0

    .line 6
    :catchall_0
    move-exception p1

    .line 3
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 4
    :pswitch_2
    sget-object p1, Lcxu;->d:Lcxu;

    return-object p1

    :pswitch_3
    new-instance p1, Lddf;

    sget-object p2, Lcxu;->d:Lcxu;

    .line 5
    invoke-direct {p1, p2}, Lddf;-><init>(Lddk;)V

    return-object p1

    :pswitch_4
    new-instance p1, Lcxu;

    .line 6
    invoke-direct {p1}, Lcxu;-><init>()V

    return-object p1

    .line 1
    :pswitch_5
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "a"

    aput-object p2, p1, v1

    const-string p2, "b"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string v0, "c"

    aput-object v0, p1, p2

    const/4 p2, 0x3

    const-class v0, Lcxt;

    aput-object v0, p1, p2

    sget-object p2, Lcxu;->d:Lcxu;

    const-string v0, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0002\u0001\u1509\u0000\u0002\u041b"

    .line 4
    invoke-static {p2, v0, p1}, Lcxu;->C(Lder;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :pswitch_6
    iget-byte p1, p0, Lcxu;->e:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2
    :cond_2
    :goto_1
    iput-byte v0, p0, Lcxu;->e:B

    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcxu;->c:Lddr;

    invoke-interface {v0}, Lddr;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lddk;->z(Lddr;)Lddr;

    move-result-object v0

    iput-object v0, p0, Lcxu;->c:Lddr;

    :cond_0
    return-void
.end method

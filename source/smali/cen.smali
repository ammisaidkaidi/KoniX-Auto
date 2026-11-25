.class public final Lcen;
.super Lddk;
.source "PG"

# interfaces
.implements Ldes;


# static fields
.field public static final e:Lcen;

.field private static volatile f:Ldex;


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcen;

    invoke-direct {v0}, Lcen;-><init>()V

    sput-object v0, Lcen;->e:Lcen;

    const-class v1, Lcen;

    invoke-static {v1, v0}, Lddk;->D(Ljava/lang/Class;Lddk;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lddk;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcen;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcen;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 2
    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_1
    sget-object p1, Lcen;->f:Ldex;

    if-nez p1, :cond_1

    const-class p2, Lcen;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcen;->f:Ldex;

    if-nez p1, :cond_0

    new-instance p1, Lddg;

    sget-object v0, Lcen;->e:Lcen;

    invoke-direct {p1, v0}, Lddg;-><init>(Lddk;)V

    sput-object p1, Lcen;->f:Ldex;

    .line 3
    :cond_0
    monitor-exit p2

    goto :goto_0

    .line 5
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
    sget-object p1, Lcen;->e:Lcen;

    return-object p1

    :pswitch_3
    new-instance p1, Lddf;

    sget-object p2, Lcen;->e:Lcen;

    .line 5
    invoke-direct {p1, p2}, Lddf;-><init>(Lddk;)V

    return-object p1

    :pswitch_4
    new-instance p1, Lcen;

    invoke-direct {p1}, Lcen;-><init>()V

    return-object p1

    .line 1
    :pswitch_5
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "c"

    aput-object v1, p1, v0

    const-string v0, "b"

    aput-object v0, p1, p2

    const/4 p2, 0x2

    const-string v0, "a"

    aput-object v0, p1, p2

    const/4 p2, 0x3

    const-string v0, "d"

    aput-object v0, p1, p2

    sget-object p2, Lcen;->e:Lcen;

    const-string v0, "\u0001\u0006\u0001\u0001\u0001\n\u0006\u0000\u0000\u0000\u0001\u1038\u0000\u0002\u103a\u0000\u0003\u1033\u0000\u0004\u103b\u0000\u0005\u103d\u0000\n\u1008\u0000"

    .line 4
    invoke-static {p2, v0, p1}, Lcen;->C(Lder;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :pswitch_6
    nop

    .line 1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

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

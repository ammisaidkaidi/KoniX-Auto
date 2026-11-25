.class public final Lbhk;
.super Lddk;
.source "PG"

# interfaces
.implements Ldes;


# static fields
.field public static final b:Lbhk;

.field private static volatile d:Ldex;


# instance fields
.field public a:I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lbhk;

    invoke-direct {v0}, Lbhk;-><init>()V

    sput-object v0, Lbhk;->b:Lbhk;

    const-class v1, Lbhk;

    invoke-static {v1, v0}, Lddk;->D(Ljava/lang/Class;Lddk;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lddk;-><init>()V

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
    sget-object p1, Lbhk;->d:Ldex;

    if-nez p1, :cond_1

    const-class p2, Lbhk;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lbhk;->d:Ldex;

    if-nez p1, :cond_0

    new-instance p1, Lddg;

    sget-object v0, Lbhk;->b:Lbhk;

    invoke-direct {p1, v0}, Lddg;-><init>(Lddk;)V

    sput-object p1, Lbhk;->d:Ldex;

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

    .line 5
    :pswitch_2
    sget-object p1, Lbhk;->b:Lbhk;

    return-object p1

    :pswitch_3
    new-instance p1, Lddf;

    sget-object p2, Lbhk;->b:Lbhk;

    .line 6
    invoke-direct {p1, p2}, Lddf;-><init>(Lddk;)V

    return-object p1

    :pswitch_4
    new-instance p1, Lbhk;

    invoke-direct {p1}, Lbhk;-><init>()V

    return-object p1

    .line 1
    :pswitch_5
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "c"

    aput-object v1, p1, v0

    const-string v0, "a"

    aput-object v0, p1, p2

    const/4 p2, 0x2

    .line 4
    invoke-static {}, Ldgq;->c()Lddo;

    move-result-object v0

    aput-object v0, p1, p2

    sget-object p2, Lbhk;->b:Lbhk;

    const-string v0, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u100c\u0000"

    .line 5
    invoke-static {p2, v0, p1}, Lbhk;->C(Lder;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :pswitch_6
    nop

    .line 1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

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

.class public final Ldot;
.super Lddi;
.source "PG"

# interfaces
.implements Ldes;


# static fields
.field public static final a:Ldot;

.field private static volatile c:Ldex;


# instance fields
.field private b:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ldot;

    invoke-direct {v0}, Ldot;-><init>()V

    sput-object v0, Ldot;->a:Ldot;

    const-class v1, Ldot;

    .line 2
    invoke-static {v1, v0}, Lddk;->D(Ljava/lang/Class;Lddk;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lddi;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Ldot;->b:B

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2
    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    if-nez p2, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :pswitch_1
    sget-object p1, Ldot;->c:Ldex;

    if-nez p1, :cond_1

    const-class p2, Ldot;

    monitor-enter p2

    :try_start_0
    sget-object p1, Ldot;->c:Ldex;

    if-nez p1, :cond_0

    new-instance p1, Lddg;

    sget-object v0, Ldot;->a:Ldot;

    invoke-direct {p1, v0}, Lddg;-><init>(Lddk;)V

    sput-object p1, Ldot;->c:Ldex;

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
    sget-object p1, Ldot;->a:Ldot;

    return-object p1

    .line 1
    :pswitch_3
    new-instance p1, Lddh;

    sget-object p2, Ldot;->a:Ldot;

    .line 5
    invoke-direct {p1, p2}, Lddh;-><init>(Lddi;)V

    return-object p1

    .line 4
    :pswitch_4
    new-instance p1, Ldot;

    .line 6
    invoke-direct {p1}, Ldot;-><init>()V

    return-object p1

    .line 5
    :pswitch_5
    sget-object p1, Ldot;->a:Ldot;

    const-string p2, "\u0001\u0000"

    .line 4
    invoke-static {p1, p2, v0}, Ldot;->C(Lder;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :pswitch_6
    iget-byte p1, p0, Ldot;->b:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2
    :cond_2
    const/4 p1, 0x1

    :goto_1
    iput-byte p1, p0, Ldot;->b:B

    return-object v0

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

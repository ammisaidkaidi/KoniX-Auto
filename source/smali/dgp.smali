.class public final Ldgp;
.super Lddk;
.source "PG"

# interfaces
.implements Ldes;


# static fields
.field public static final b:Ldgp;

.field private static volatile c:Ldex;


# instance fields
.field public a:Lddr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ldgp;

    invoke-direct {v0}, Ldgp;-><init>()V

    sput-object v0, Ldgp;->b:Ldgp;

    const-class v1, Ldgp;

    .line 2
    invoke-static {v1, v0}, Lddk;->D(Ljava/lang/Class;Lddk;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lddk;-><init>()V

    .line 2
    sget-object v0, Ldfa;->b:Ldfa;

    iput-object v0, p0, Ldgp;->a:Lddr;

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2
    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_1
    sget-object p1, Ldgp;->c:Ldex;

    if-nez p1, :cond_1

    const-class p2, Ldgp;

    monitor-enter p2

    :try_start_0
    sget-object p1, Ldgp;->c:Ldex;

    if-nez p1, :cond_0

    new-instance p1, Lddg;

    sget-object v0, Ldgp;->b:Ldgp;

    invoke-direct {p1, v0}, Lddg;-><init>(Lddk;)V

    sput-object p1, Ldgp;->c:Ldex;

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
    sget-object p1, Ldgp;->b:Ldgp;

    return-object p1

    :pswitch_3
    new-instance p1, Lddf;

    sget-object p2, Ldgp;->b:Ldgp;

    .line 5
    invoke-direct {p1, p2}, Lddf;-><init>(Lddk;)V

    return-object p1

    :pswitch_4
    new-instance p1, Ldgp;

    .line 6
    invoke-direct {p1}, Ldgp;-><init>()V

    return-object p1

    .line 1
    :pswitch_5
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "a"

    aput-object v0, p1, p2

    sget-object p2, Ldgp;->b:Ldgp;

    const-string v0, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a"

    .line 4
    invoke-static {p2, v0, p1}, Ldgp;->C(Lder;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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

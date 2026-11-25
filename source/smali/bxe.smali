.class public final Lbxe;
.super Lddk;
.source "PG"

# interfaces
.implements Ldes;


# static fields
.field public static final a:Lbxe;

.field private static volatile b:Ldex;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lbxe;

    invoke-direct {v0}, Lbxe;-><init>()V

    sput-object v0, Lbxe;->a:Lbxe;

    const-class v1, Lbxe;

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
    .locals 1

    .line 2
    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-object p2

    :pswitch_1
    sget-object p1, Lbxe;->b:Ldex;

    if-nez p1, :cond_1

    const-class p2, Lbxe;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lbxe;->b:Ldex;

    if-nez p1, :cond_0

    new-instance p1, Lddg;

    sget-object v0, Lbxe;->a:Lbxe;

    invoke-direct {p1, v0}, Lddg;-><init>(Lddk;)V

    sput-object p1, Lbxe;->b:Ldex;

    .line 3
    :cond_0
    monitor-exit p2

    goto :goto_0

    .line 4
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
    sget-object p1, Lbxe;->a:Lbxe;

    return-object p1

    .line 1
    :pswitch_3
    new-instance p1, Lddf;

    sget-object p2, Lbxe;->a:Lbxe;

    .line 5
    invoke-direct {p1, p2}, Lddf;-><init>(Lddk;)V

    return-object p1

    .line 4
    :pswitch_4
    new-instance p1, Lbxe;

    invoke-direct {p1}, Lbxe;-><init>()V

    return-object p1

    .line 5
    :pswitch_5
    sget-object p1, Lbxe;->a:Lbxe;

    const-string v0, "\u0001\u0000"

    .line 4
    invoke-static {p1, v0, p2}, Lbxe;->C(Lder;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :pswitch_6
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

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

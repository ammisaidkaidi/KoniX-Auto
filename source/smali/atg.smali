.class public final Latg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldny;


# instance fields
.field private final a:Ldny;

.field private final synthetic b:I


# direct methods
.method private constructor <init>(Ldny;I)V
    .locals 0

    .line 2
    iput p2, p0, Latg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Latg;->a:Ldny;

    return-void
.end method

.method private constructor <init>(Ldny;I[B)V
    .locals 0

    .line 1
    iput p2, p0, Latg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Latg;->a:Ldny;

    return-void
.end method

.method public static c(Ldny;)Ldny;
    .locals 2

    .line 1
    new-instance v0, Latg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Latg;-><init>(Ldny;I)V

    return-object v0
.end method

.method public static d(Ldny;)Ldny;
    .locals 3

    .line 1
    new-instance v0, Latg;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Latg;-><init>(Ldny;I[B)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 2
    iget v0, p0, Latg;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Latg;->b()Lcoc;

    move-result-object v0

    return-object v0

    .line 1
    :pswitch_0
    invoke-virtual {p0}, Latg;->b()Lcoc;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Lcoc;
    .locals 1

    .line 2
    iget v0, p0, Latg;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Latg;->a:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcoc;->e(Ljava/lang/Object;)Lcoc;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Latg;->a:Ldny;

    .line 1
    invoke-static {v0}, Lcoc;->e(Ljava/lang/Object;)Lcoc;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

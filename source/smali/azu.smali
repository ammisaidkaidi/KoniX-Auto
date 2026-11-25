.class public final synthetic Lazu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lj$/util/function/Consumer;


# static fields
.field public static final synthetic a:Lazu;

.field public static final synthetic b:Lazu;

.field public static final synthetic c:Lazu;


# instance fields
.field private final synthetic d:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lazu;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lazu;-><init>(I)V

    sput-object v0, Lazu;->c:Lazu;

    new-instance v0, Lazu;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lazu;-><init>(I)V

    sput-object v0, Lazu;->b:Lazu;

    new-instance v0, Lazu;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lazu;-><init>(I)V

    sput-object v0, Lazu;->a:Lazu;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lazu;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 3
    iget v0, p0, Lazu;->d:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lbhd;

    invoke-virtual {p1}, Lbhd;->d()V

    return-void

    .line 1
    :pswitch_0
    check-cast p1, Layc;

    invoke-interface {p1}, Layc;->a()V

    return-void

    .line 2
    :pswitch_1
    check-cast p1, Layc;

    invoke-interface {p1}, Layc;->a()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic andThen(Lj$/util/function/Consumer;)Lj$/util/function/Consumer;
    .locals 1

    .line 3
    iget v0, p0, Lazu;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Lj$/util/function/Consumer;Lj$/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    return-object p1

    .line 1
    :pswitch_0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Lj$/util/function/Consumer;Lj$/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    return-object p1

    .line 2
    :pswitch_1
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Lj$/util/function/Consumer;Lj$/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

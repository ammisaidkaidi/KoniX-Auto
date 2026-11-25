.class public final synthetic Laui;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lj$/util/function/BiConsumer;


# static fields
.field public static final synthetic a:Laui;

.field public static final synthetic b:Laui;

.field public static final synthetic c:Laui;

.field public static final synthetic d:Laui;

.field public static final synthetic e:Laui;


# instance fields
.field private final synthetic f:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Laui;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Laui;-><init>(I)V

    sput-object v0, Laui;->e:Laui;

    new-instance v0, Laui;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Laui;-><init>(I)V

    sput-object v0, Laui;->d:Laui;

    new-instance v0, Laui;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Laui;-><init>(I)V

    sput-object v0, Laui;->c:Laui;

    new-instance v0, Laui;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Laui;-><init>(I)V

    sput-object v0, Laui;->b:Laui;

    new-instance v0, Laui;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Laui;-><init>(I)V

    sput-object v0, Laui;->a:Laui;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Laui;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 7
    iget v0, p0, Laui;->f:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcqu;

    invoke-virtual {p1, p2}, Lcqu;->h(Ljava/lang/Object;)V

    return-void

    .line 1
    :pswitch_0
    check-cast p1, Lcqr;

    check-cast p2, Lcrv;

    invoke-virtual {p1, p2}, Lcqr;->a(Lcrv;)V

    return-void

    .line 2
    :pswitch_1
    check-cast p1, Lcqc;

    invoke-virtual {p1, p2}, Lcqc;->g(Ljava/lang/Object;)V

    return-void

    .line 3
    :pswitch_2
    check-cast p1, Lauc;

    check-cast p2, Latq;

    .line 4
    invoke-virtual {p2}, Latq;->i()V

    return-void

    .line 5
    :pswitch_3
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Latq;

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p2, p1}, Latq;->h(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic andThen(Lj$/util/function/BiConsumer;)Lj$/util/function/BiConsumer;
    .locals 1

    .line 5
    iget v0, p0, Laui;->f:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Lj$/util/function/BiConsumer;Lj$/util/function/BiConsumer;)Lj$/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    .line 1
    :pswitch_0
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Lj$/util/function/BiConsumer;Lj$/util/function/BiConsumer;)Lj$/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    .line 2
    :pswitch_1
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Lj$/util/function/BiConsumer;Lj$/util/function/BiConsumer;)Lj$/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    .line 3
    :pswitch_2
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Lj$/util/function/BiConsumer;Lj$/util/function/BiConsumer;)Lj$/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_3
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Lj$/util/function/BiConsumer;Lj$/util/function/BiConsumer;)Lj$/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

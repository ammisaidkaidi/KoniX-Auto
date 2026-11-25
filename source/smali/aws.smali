.class public final synthetic Laws;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lj$/util/function/IntFunction;


# static fields
.field public static final synthetic a:Laws;

.field public static final synthetic b:Laws;

.field public static final synthetic c:Laws;

.field public static final synthetic d:Laws;

.field public static final synthetic e:Laws;

.field public static final synthetic f:Laws;


# instance fields
.field private final synthetic g:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Laws;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Laws;-><init>(I)V

    sput-object v0, Laws;->f:Laws;

    new-instance v0, Laws;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Laws;-><init>(I)V

    sput-object v0, Laws;->e:Laws;

    new-instance v0, Laws;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Laws;-><init>(I)V

    sput-object v0, Laws;->d:Laws;

    new-instance v0, Laws;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Laws;-><init>(I)V

    sput-object v0, Laws;->c:Laws;

    new-instance v0, Laws;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Laws;-><init>(I)V

    sput-object v0, Laws;->b:Laws;

    new-instance v0, Laws;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Laws;-><init>(I)V

    sput-object v0, Laws;->a:Laws;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Laws;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 1

    .line 6
    iget v0, p0, Laws;->g:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object p1

    return-object p1

    .line 1
    :pswitch_0
    invoke-static {p1}, Lckd;->b(I)Lckd;

    move-result-object p1

    return-object p1

    .line 2
    :pswitch_1
    invoke-static {p1}, Lckc;->b(I)Lckc;

    move-result-object p1

    return-object p1

    .line 3
    :pswitch_2
    new-array p1, p1, [Lckd;

    return-object p1

    .line 4
    :pswitch_3
    new-array p1, p1, [Ljava/lang/Class;

    return-object p1

    .line 5
    :pswitch_4
    new-array p1, p1, [Lckc;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Laxk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lj$/util/function/ToIntFunction;


# static fields
.field public static final synthetic a:Laxk;

.field public static final synthetic b:Laxk;

.field public static final synthetic c:Laxk;

.field public static final synthetic d:Laxk;


# instance fields
.field private final synthetic e:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Laxk;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Laxk;-><init>(I)V

    sput-object v0, Laxk;->d:Laxk;

    new-instance v0, Laxk;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Laxk;-><init>(I)V

    sput-object v0, Laxk;->c:Laxk;

    new-instance v0, Laxk;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Laxk;-><init>(I)V

    sput-object v0, Laxk;->b:Laxk;

    new-instance v0, Laxk;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Laxk;-><init>(I)V

    sput-object v0, Laxk;->a:Laxk;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Laxk;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 1

    .line 4
    iget v0, p0, Laxk;->e:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 1
    :pswitch_0
    check-cast p1, Lckw;

    iget p1, p1, Lckw;->w:I

    return p1

    .line 2
    :pswitch_1
    check-cast p1, Lckf;

    iget p1, p1, Lckf;->es:I

    return p1

    .line 3
    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

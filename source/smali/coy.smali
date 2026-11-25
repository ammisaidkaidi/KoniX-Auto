.class public final synthetic Lcoy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lj$/util/function/Supplier;


# static fields
.field public static final synthetic a:Lcoy;

.field public static final synthetic b:Lcoy;

.field public static final synthetic c:Lcoy;

.field public static final synthetic d:Lcoy;


# instance fields
.field private final synthetic e:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoy;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcoy;-><init>(I)V

    sput-object v0, Lcoy;->d:Lcoy;

    new-instance v0, Lcoy;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcoy;-><init>(I)V

    sput-object v0, Lcoy;->c:Lcoy;

    new-instance v0, Lcoy;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcoy;-><init>(I)V

    sput-object v0, Lcoy;->b:Lcoy;

    new-instance v0, Lcoy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoy;-><init>(I)V

    sput-object v0, Lcoy;->a:Lcoy;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcoy;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 4
    iget v0, p0, Lcoy;->e:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcqw;->k()Lcqu;

    move-result-object v0

    return-object v0

    .line 1
    :pswitch_0
    invoke-static {}, Lcqt;->a()Lcqr;

    move-result-object v0

    return-object v0

    :pswitch_1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 3
    :pswitch_2
    invoke-static {}, Lcqh;->j()Lcqc;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

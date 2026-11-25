.class public final synthetic Lcgt;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcny;


# static fields
.field public static final synthetic a:Lcgt;

.field public static final synthetic b:Lcgt;


# instance fields
.field private final synthetic c:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcgt;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcgt;-><init>(I)V

    sput-object v0, Lcgt;->b:Lcgt;

    new-instance v0, Lcgt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcgt;-><init>(I)V

    sput-object v0, Lcgt;->a:Lcgt;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcgt;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2
    iget v0, p0, Lcgt;->c:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ldba;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 1
    :pswitch_0
    check-cast p1, Lcem;

    invoke-static {p1}, Lcgv;->a(Lcem;)Lcgw;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

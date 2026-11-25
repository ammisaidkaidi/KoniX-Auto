.class public final synthetic Lciu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczc;


# static fields
.field public static final synthetic a:Lciu;

.field public static final synthetic b:Lciu;


# instance fields
.field private final synthetic c:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lciu;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lciu;-><init>(I)V

    sput-object v0, Lciu;->b:Lciu;

    new-instance v0, Lciu;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lciu;-><init>(I)V

    sput-object v0, Lciu;->a:Lciu;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lciu;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ldag;
    .locals 3

    .line 3
    iget v0, p0, Lciu;->c:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lbjz;

    new-instance v0, Lcep;

    iget-object v1, p1, Lbjz;->a:Lcom/google/android/gms/common/api/Status;

    iget v1, v1, Lcom/google/android/gms/common/api/Status;->e:I

    .line 4
    invoke-virtual {p1}, Lbjz;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcep;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1
    :pswitch_0
    check-cast p1, Landroid/net/Uri;

    .line 2
    const-string p1, ""

    invoke-static {p1}, Lhh;->j(Ljava/lang/Object;)Ldag;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

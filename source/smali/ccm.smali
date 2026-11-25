.class public final synthetic Lccm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcco;


# static fields
.field public static final synthetic a:Lccm;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lccm;

    invoke-direct {v0}, Lccm;-><init>()V

    sput-object v0, Lccm;->a:Lccm;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ldag;
    .locals 1

    .line 1
    sget v0, Lccn;->a:I

    invoke-static {}, Lcqh;->p()Lcqh;

    move-result-object v0

    invoke-static {v0}, Lhh;->j(Ljava/lang/Object;)Ldag;

    move-result-object v0

    return-object v0
.end method

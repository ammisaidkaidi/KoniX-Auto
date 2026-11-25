.class final Ldpw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lddo;


# static fields
.field static final a:Lddo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldpw;

    invoke-direct {v0}, Ldpw;-><init>()V

    sput-object v0, Ldpw;->a:Lddo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 0

    invoke-static {p1}, Ldpx;->a(I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

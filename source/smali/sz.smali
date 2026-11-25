.class public final Lsz;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final d:Lge;


# instance fields
.field public a:I

.field public b:Lqu;

.field public c:Lqu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lge;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lge;-><init>(I)V

    sput-object v0, Lsz;->d:Lge;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lsz;
    .locals 1

    .line 1
    sget-object v0, Lsz;->d:Lge;

    invoke-virtual {v0}, Lge;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsz;

    if-nez v0, :cond_0

    new-instance v0, Lsz;

    invoke-direct {v0}, Lsz;-><init>()V

    :cond_0
    return-object v0
.end method

.method public static b(Lsz;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lsz;->a:I

    .line 2
    const/4 v0, 0x0

    iput-object v0, p0, Lsz;->b:Lqu;

    .line 3
    iput-object v0, p0, Lsz;->c:Lqu;

    sget-object v0, Lsz;->d:Lge;

    .line 4
    invoke-virtual {v0, p0}, Lge;->b(Ljava/lang/Object;)Z

    return-void
.end method

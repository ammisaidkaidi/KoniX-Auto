.class public final Lcaq;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcaq;


# instance fields
.field public final b:J

.field public c:J

.field d:Z

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcaq;

    invoke-direct {v0}, Lcaq;-><init>()V

    sput-object v0, Lcaq;->a:Lcaq;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcaq;->c:J

    const/4 v2, 0x1

    iput v2, p0, Lcaq;->e:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcaq;->d:Z

    iput-wide v0, p0, Lcaq;->b:J

    return-void
.end method

.method public static b(Lcaq;)Z
    .locals 1

    if-eqz p0, :cond_1

    sget-object v0, Lcaq;->a:Lcaq;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method final a()J
    .locals 4

    iget-wide v0, p0, Lcaq;->c:J

    iget-wide v2, p0, Lcaq;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

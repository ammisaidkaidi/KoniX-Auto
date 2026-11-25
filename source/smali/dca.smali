.class public final Ldca;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:I

.field public b:J

.field public c:Ljava/lang/Object;

.field public final d:Ldcz;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ldcz;->a()Ldcz;

    move-result-object v0

    iput-object v0, p0, Ldca;->d:Ldcz;

    return-void
.end method

.method public constructor <init>(Ldcz;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Ldca;->d:Ldcz;

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

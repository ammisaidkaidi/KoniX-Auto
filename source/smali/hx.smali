.class public final Lhx;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lia;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, Lhz;

    invoke-direct {v0}, Lhz;-><init>()V

    iput-object v0, p0, Lhx;->a:Lia;

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    new-instance v0, Lhz;

    .line 2
    invoke-direct {v0}, Lhz;-><init>()V

    iput-object v0, p0, Lhx;->a:Lia;

    return-void

    :cond_1
    new-instance v0, Lhy;

    .line 3
    invoke-direct {v0}, Lhy;-><init>()V

    iput-object v0, p0, Lhx;->a:Lia;

    return-void
.end method

.method public constructor <init>(Lih;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, Lhz;

    invoke-direct {v0, p1}, Lhz;-><init>(Lih;)V

    iput-object v0, p0, Lhx;->a:Lia;

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    new-instance v0, Lhz;

    .line 5
    invoke-direct {v0, p1}, Lhz;-><init>(Lih;)V

    iput-object v0, p0, Lhx;->a:Lia;

    return-void

    :cond_1
    new-instance v0, Lhy;

    .line 6
    invoke-direct {v0, p1}, Lhy;-><init>(Lih;)V

    iput-object v0, p0, Lhx;->a:Lia;

    return-void
.end method


# virtual methods
.method public final a()Lih;
    .locals 1

    .line 1
    iget-object v0, p0, Lhx;->a:Lia;

    invoke-virtual {v0}, Lia;->a()Lih;

    move-result-object v0

    return-object v0
.end method

.method public final b(Leh;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lhx;->a:Lia;

    invoke-virtual {v0, p1}, Lia;->c(Leh;)V

    return-void
.end method

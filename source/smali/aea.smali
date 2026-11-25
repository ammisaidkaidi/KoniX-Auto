.class final Laea;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field final a:[J

.field final b:[Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    new-array v1, v0, [J

    iput-object v1, p0, Laea;->a:[J

    new-array v0, v0, [Z

    iput-object v0, p0, Laea;->b:[Z

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 2
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    return-void
.end method

.class public final Laqd;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Z

.field public final b:Z


# direct methods
.method public constructor <init>(Laqc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Laqc;->a:Z

    iput-boolean v0, p0, Laqd;->a:Z

    iget-boolean p1, p1, Laqc;->b:Z

    iput-boolean p1, p0, Laqd;->b:Z

    return-void
.end method

.method public static a()Laqc;
    .locals 1

    new-instance v0, Laqc;

    invoke-direct {v0}, Laqc;-><init>()V

    return-object v0
.end method

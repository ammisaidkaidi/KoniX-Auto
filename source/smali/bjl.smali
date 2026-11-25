.class final Lbjl;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final a:[Lbnh;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    new-array v0, v0, [Lbnh;

    sget-object v1, Lbjm;->a:Lbjk;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lbjm;->b:Lbjk;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lbjl;->a:[Lbnh;

    return-void
.end method

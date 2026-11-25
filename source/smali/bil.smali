.class public final Lbil;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lbjb;

.field public static final b:[Lbjb;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lbjb;

    const-string v1, "log_error"

    const-wide/16 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lbjb;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lbil;->a:Lbjb;

    const/4 v1, 0x1

    new-array v1, v1, [Lbjb;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lbil;->b:[Lbjb;

    return-void
.end method

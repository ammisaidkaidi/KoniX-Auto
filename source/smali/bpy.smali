.class public final Lbpy;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lbpy;


# instance fields
.field public final b:[B

.field public final c:Ljava/lang/String;

.field public final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbpy;

    const/4 v1, 0x0

    const-string v2, ""

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbpy;-><init>([BLjava/lang/String;J)V

    sput-object v0, Lbpy;->a:Lbpy;

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbpy;->b:[B

    iput-object p2, p0, Lbpy;->c:Ljava/lang/String;

    iput-wide p3, p0, Lbpy;->d:J

    return-void
.end method

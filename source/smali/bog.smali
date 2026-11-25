.class public final Lbog;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static volatile a:Lqs;

.field private static final b:Lqs;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lqs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lqs;-><init>([B)V

    sput-object v0, Lbog;->b:Lqs;

    sput-object v0, Lbog;->a:Lqs;

    return-void
.end method

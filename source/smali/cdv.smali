.class public final Lcdv;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static volatile a:Lcoc;

.field public static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcns;->a:Lcns;

    sput-object v0, Lcdv;->a:Lcoc;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcdv;->b:Ljava/lang/Object;

    return-void
.end method

.class public final Ldlp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldlo;


# static fields
.field public static final a:Lcei;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lceg;

    invoke-direct {v0}, Lceg;-><init>()V

    invoke-virtual {v0}, Lceg;->b()Lceg;

    move-result-object v0

    .line 2
    const-string v1, "ApiService__thread_count"

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lceg;->e(Ljava/lang/String;J)Lcei;

    .line 3
    const-string v1, "ApiService__timeout_to_close_db_in_seconds"

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v1, v2, v3}, Lceg;->e(Ljava/lang/String;J)Lcei;

    move-result-object v0

    sput-object v0, Ldlp;->a:Lcei;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    sget-object v0, Ldlp;->a:Lcei;

    invoke-virtual {v0}, Lcei;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

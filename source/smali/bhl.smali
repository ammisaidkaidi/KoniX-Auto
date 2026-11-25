.class public final Lbhl;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lbjb;

.field public static final b:Lbjb;

.field public static final c:Lbjb;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lbjb;

    const-string v1, "account_capability_api"

    const-wide/16 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lbjb;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lbhl;->a:Lbjb;

    new-instance v0, Lbjb;

    const-string v1, "google_auth_service_token"

    const-wide/16 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lbjb;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lbhl;->b:Lbjb;

    new-instance v0, Lbjb;

    const-string v1, "google_auth_service_accounts"

    const-wide/16 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lbjb;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lbhl;->c:Lbjb;

    return-void
.end method

.class final Lahr;
.super Laen;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/16 v0, 0xb

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Laen;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final a(Lafh;)V
    .locals 1

    .line 1
    const-string v0, "ALTER TABLE workspec ADD COLUMN `out_of_quota_policy` INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Lafh;->g(Ljava/lang/String;)V

    return-void
.end method

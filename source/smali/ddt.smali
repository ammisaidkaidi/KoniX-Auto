.class public final Lddt;
.super Lddu;
.source "PG"


# static fields
.field private static final serialVersionUID:J = 0x2d92b8a3b8283743L


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "Protocol message tag had invalid wire type."

    invoke-direct {p0, v0}, Lddu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.class public final Lcvp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcvf;


# instance fields
.field private final a:Ljava/util/logging/Level;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    throw v0
.end method

.method public constructor <init>(Ljava/util/logging/Level;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcvp;->a:Ljava/util/logging/Level;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcuc;
    .locals 2

    .line 1
    new-instance v0, Lcvr;

    iget-object v1, p0, Lcvp;->a:Ljava/util/logging/Level;

    .line 2
    invoke-direct {v0, p1, v1}, Lcvr;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    return-object v0
.end method

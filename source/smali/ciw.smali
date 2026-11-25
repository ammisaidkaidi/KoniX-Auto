.class public final Lciw;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ljava/util/concurrent/Executor;

.field public b:Lchm;

.field public final c:Ljava/util/HashMap;

.field public final d:Lcjv;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcjv;->a:Lcjv;

    iput-object v0, p0, Lciw;->d:Lcjv;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lciw;->c:Ljava/util/HashMap;

    return-void
.end method

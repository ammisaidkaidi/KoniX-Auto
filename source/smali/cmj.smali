.class public final Lcmj;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final a:Lcmh;


# instance fields
.field public b:Z

.field public c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcmf;

    invoke-direct {v0}, Lcmf;-><init>()V

    sput-object v0, Lcmj;->a:Lcmh;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcmj;->b:Z

    return-void
.end method

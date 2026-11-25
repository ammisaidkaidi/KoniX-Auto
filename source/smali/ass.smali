.class public final Lass;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldhl;
.implements Ldhs;


# instance fields
.field public final a:Latj;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Latj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lass;->a:Latj;

    return-void
.end method


# virtual methods
.method public final a()Latf;
    .locals 1

    new-instance v0, Latf;

    invoke-direct {v0}, Latf;-><init>()V

    return-object v0
.end method

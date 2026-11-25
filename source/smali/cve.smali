.class public final Lcve;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcvf;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcve;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcve;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcve;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcuc;
    .locals 4

    new-instance v0, Lcvq;

    iget-object v1, p0, Lcve;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcve;->b:Z

    sget-object v3, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-direct {v0, v1, p1, v2, v3}, Lcvq;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/logging/Level;)V

    return-object v0
.end method

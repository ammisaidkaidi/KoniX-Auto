.class public final Lclm;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lbdt;

.field public final b:Lcom/google/android/projection/protocol/WifiProjectionEndpoint;

.field public final c:Lbhi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lbdt;Lbhi;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lclm;->a:Lbdt;

    iput-object p2, p0, Lclm;->c:Lbhi;

    iget-object p1, p1, Lbdt;->b:Ljava/lang/String;

    new-instance p2, Lcom/google/android/projection/protocol/WifiProjectionEndpoint;

    invoke-direct {p2, p1, p0}, Lcom/google/android/projection/protocol/WifiProjectionEndpoint;-><init>(Ljava/lang/String;Lclm;)V

    iput-object p2, p0, Lclm;->b:Lcom/google/android/projection/protocol/WifiProjectionEndpoint;

    return-void
.end method

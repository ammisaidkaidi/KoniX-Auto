.class public final Lavq;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ldny;

.field public final b:Ldny;


# direct methods
.method public constructor <init>(Ldny;Ldny;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lavq;->a:Ldny;

    iput-object p2, p0, Lavq;->b:Ldny;

    return-void
.end method

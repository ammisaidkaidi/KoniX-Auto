.class public final synthetic Lcmq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczb;


# instance fields
.field public final synthetic a:Lcmw;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcmw;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcmq;->a:Lcmw;

    iput p2, p0, Lcmq;->b:I

    return-void
.end method


# virtual methods
.method public final a()Ldag;
    .locals 2

    iget-object v0, p0, Lcmq;->a:Lcmw;

    iget v1, p0, Lcmq;->b:I

    invoke-virtual {v0, v1}, Lcmw;->d(I)Ldag;

    move-result-object v0

    return-object v0
.end method

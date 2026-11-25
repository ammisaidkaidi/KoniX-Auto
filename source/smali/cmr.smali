.class public final synthetic Lcmr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczc;


# instance fields
.field public final synthetic a:Lcmw;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcmw;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcmr;->a:Lcmw;

    iput p2, p0, Lcmr;->b:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ldag;
    .locals 2

    iget-object v0, p0, Lcmr;->a:Lcmw;

    iget v1, p0, Lcmr;->b:I

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lcmw;->d(I)Ldag;

    move-result-object p1

    return-object p1
.end method

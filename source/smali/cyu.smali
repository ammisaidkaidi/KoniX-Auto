.class public final synthetic Lcyu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcyw;

.field public final synthetic b:Lcqa;


# direct methods
.method public synthetic constructor <init>(Lcyw;Lcqa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcyu;->a:Lcyw;

    iput-object p2, p0, Lcyu;->b:Lcqa;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcyu;->a:Lcyw;

    iget-object v1, p0, Lcyu;->b:Lcqa;

    invoke-virtual {v0, v1}, Lcyw;->p(Lcqa;)V

    return-void
.end method

.class public final Lti;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/content/IntentSender$SendIntentException;

.field final synthetic c:Lty;


# direct methods
.method public constructor <init>(Lty;ILandroid/content/IntentSender$SendIntentException;)V
    .locals 0

    iput-object p1, p0, Lti;->c:Lty;

    iput p2, p0, Lti;->a:I

    iput-object p3, p0, Lti;->b:Landroid/content/IntentSender$SendIntentException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lti;->c:Lty;

    iget v1, p0, Lti;->a:I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2
    const-string v3, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lti;->b:Landroid/content/IntentSender$SendIntentException;

    .line 3
    const-string v4, "androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v2

    .line 1
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lty;->e(IILandroid/content/Intent;)Z

    return-void
.end method

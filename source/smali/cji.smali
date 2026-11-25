.class public final synthetic Lcji;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczc;


# instance fields
.field public final synthetic a:Lcjp;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcjp;I)V
    .locals 0

    iput p2, p0, Lcji;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcji;->a:Lcjp;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ldag;
    .locals 1

    .line 2
    iget v0, p0, Lcji;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcji;->a:Lcjp;

    check-cast p1, Lcjo;

    iget-object p1, v0, Lcjp;->c:Lcmw;

    .line 3
    invoke-virtual {p1}, Lcmw;->c()Ldag;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object p1, p0, Lcji;->a:Lcjp;

    iget-object p1, p1, Lcjp;->b:Lcjq;

    check-cast p1, Lcjf;

    .line 1
    invoke-virtual {p1}, Lcjf;->a()Ldag;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

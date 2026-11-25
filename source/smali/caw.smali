.class public final synthetic Lcaw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldny;


# instance fields
.field public final synthetic a:Ldny;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ldny;I)V
    .locals 0

    iput p2, p0, Lcaw;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcaw;->a:Ldny;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    .line 2
    iget v0, p0, Lcaw;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcaw;->a:Ldny;

    check-cast v0, Lbtp;

    invoke-virtual {v0}, Lbtp;->b()Lcoc;

    move-result-object v1

    invoke-virtual {v1}, Lcoc;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lbtp;->b()Lcoc;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcoc;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbwh;

    invoke-virtual {v1}, Lbwh;->b()Ldny;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Lbtp;->b()Lcoc;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcoc;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbwh;

    invoke-virtual {v0}, Lbwh;->b()Ldny;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldot;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcaw;->a:Ldny;

    .line 1
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcbc;

    return-object v0

    .line 6
    :cond_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

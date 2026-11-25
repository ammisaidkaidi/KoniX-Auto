.class final Ldgg;
.super Ldcz;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldcz;-><init>([B)V

    return-void
.end method


# virtual methods
.method public final c(Lder;I)Ldcx;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    goto :goto_0

    .line 2
    :pswitch_0
    nop

    .line 1
    const-string v0, "ccs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :goto_0
    const/4 p1, -0x1

    :goto_1
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_1

    .line 2
    return-object v0

    .line 1
    :pswitch_1
    packed-switch p2, :pswitch_data_2

    return-object v0

    .line 2
    :pswitch_2
    sget-object p1, Lcda;->i:Ldcx;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x18013
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x13f38d82
        :pswitch_2
    .end packed-switch
.end method

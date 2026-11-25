.class public final synthetic Lcgl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcgn;


# instance fields
.field public final synthetic a:Lcgn;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcgn;I)V
    .locals 0

    iput p2, p0, Lcgl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcgl;->a:Lcgn;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 3
    iget v0, p0, Lcgl;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcgl;->a:Lcgn;

    check-cast p1, [B

    invoke-interface {v0, p1}, Lcgn;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object v0, p0, Lcgl;->a:Lcgn;

    .line 1
    check-cast p1, Ljava/lang/String;

    const/4 v1, 0x3

    .line 2
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-interface {v0, p1}, Lcgn;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

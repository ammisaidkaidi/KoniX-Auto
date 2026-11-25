.class public final synthetic Lcgs;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcny;


# instance fields
.field public final synthetic a:Lcgw;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcgw;I)V
    .locals 0

    iput p2, p0, Lcgs;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcgs;->a:Lcgw;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2
    iget v0, p0, Lcgs;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcgs;->a:Lcgw;

    check-cast p1, Lcgw;

    sget p1, Lcgv;->a:I

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcgs;->a:Lcgw;

    .line 1
    check-cast p1, Lcgw;

    sget p1, Lcgv;->a:I

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

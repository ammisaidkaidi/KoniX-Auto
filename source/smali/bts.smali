.class public final synthetic Lbts;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lbtt;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lbtt;I)V
    .locals 0

    iput p2, p0, Lbts;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbts;->a:Lbtt;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 2
    iget v0, p0, Lbts;->b:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lbts;->a:Lbtt;

    invoke-virtual {v0}, Lbtt;->a()V

    return-object v1

    :pswitch_0
    iget-object v0, p0, Lbts;->a:Lbtt;

    .line 1
    invoke-virtual {v0}, Lbtt;->a()V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Laup;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lauq;

.field public final synthetic b:I

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lauq;II)V
    .locals 0

    iput p3, p0, Laup;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laup;->a:Lauq;

    iput p2, p0, Laup;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 3
    iget v0, p0, Laup;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Laup;->a:Lauq;

    iget v1, p0, Laup;->b:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lauq;->g(II)V

    return-void

    :pswitch_0
    iget-object v0, p0, Laup;->a:Lauq;

    iget v1, p0, Laup;->b:I

    const/16 v2, 0x10

    .line 1
    invoke-virtual {v0, v1, v2}, Lauq;->g(II)V

    return-void

    :pswitch_1
    iget-object v0, p0, Laup;->a:Lauq;

    iget v1, p0, Laup;->b:I

    const/16 v2, 0xc

    .line 2
    invoke-virtual {v0, v1, v2}, Lauq;->g(II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

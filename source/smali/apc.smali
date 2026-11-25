.class public final synthetic Lapc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/car/ui/recyclerview/DefaultScrollBar;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/ui/recyclerview/DefaultScrollBar;I)V
    .locals 0

    iput p2, p0, Lapc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapc;->a:Lcom/android/car/ui/recyclerview/DefaultScrollBar;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 2
    iget v0, p0, Lapc;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lapc;->a:Lcom/android/car/ui/recyclerview/DefaultScrollBar;

    invoke-virtual {v0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->lambda$updatePaginationButtons$3$com-android-car-ui-recyclerview-DefaultScrollBar()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lapc;->a:Lcom/android/car/ui/recyclerview/DefaultScrollBar;

    .line 1
    invoke-static {v0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->$r8$lambda$Ukrr5HKF67JZyc19OTW0irZqniM(Lcom/android/car/ui/recyclerview/DefaultScrollBar;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

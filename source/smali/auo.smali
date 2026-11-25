.class public final synthetic Lauo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field public final synthetic a:Lauq;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lauq;I)V
    .locals 0

    iput p2, p0, Lauo;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lauo;->a:Lauq;

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 1

    .line 3
    iget v0, p0, Lauo;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lauo;->a:Lauq;

    invoke-virtual {v0, p1}, Lauq;->f(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lauo;->a:Lauq;

    .line 1
    invoke-virtual {v0, p1}, Lauq;->e(I)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lauo;->a:Lauq;

    .line 2
    invoke-virtual {v0, p1}, Lauq;->d(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class final Ljv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmb;


# instance fields
.field final synthetic a:Ljw;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ljw;I)V
    .locals 0

    iput p2, p0, Ljv;->b:I

    iput-object p1, p0, Ljv;->a:Ljw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Llo;Z)V
    .locals 3

    .line 1
    iget v0, p0, Ljv;->b:I

    packed-switch v0, :pswitch_data_0

    .line 5
    iget-object p2, p0, Ljv;->a:Ljw;

    .line 6
    invoke-virtual {p2, p1}, Ljw;->w(Llo;)V

    return-void

    .line 1
    :pswitch_0
    invoke-virtual {p1}, Llo;->a()Llo;

    move-result-object v0

    iget-object v1, p0, Ljv;->a:Ljw;

    if-eq v0, p1, :cond_0

    move-object v2, v0

    goto :goto_0

    .line 5
    :cond_0
    move-object v2, p1

    .line 2
    :goto_0
    invoke-virtual {v1, v2}, Ljw;->s(Landroid/view/Menu;)Lju;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eq v0, p1, :cond_1

    iget-object p1, p0, Ljv;->a:Ljw;

    iget p2, v1, Lju;->a:I

    .line 3
    invoke-virtual {p1, p2, v1, v0}, Ljw;->v(ILju;Landroid/view/Menu;)V

    iget-object p1, p0, Ljv;->a:Ljw;

    const/4 p2, 0x1

    .line 4
    invoke-virtual {p1, v1, p2}, Ljw;->x(Lju;Z)V

    return-void

    :cond_1
    iget-object p1, p0, Ljv;->a:Ljw;

    .line 5
    invoke-virtual {p1, v1, p2}, Ljw;->x(Lju;Z)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Llo;)Z
    .locals 4

    .line 4
    iget v0, p0, Ljv;->b:I

    const/16 v1, 0x6c

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ljv;->a:Ljw;

    invoke-virtual {v0}, Ljw;->u()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-virtual {p1}, Llo;->a()Llo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Ljv;->a:Ljw;

    iget-boolean v3, v0, Ljw;->s:Z

    if-eqz v3, :cond_0

    .line 2
    invoke-virtual {v0}, Ljw;->u()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Ljv;->a:Ljw;

    iget-boolean v3, v3, Ljw;->A:Z

    if-nez v3, :cond_0

    .line 3
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_0
    return v2

    .line 5
    :cond_1
    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

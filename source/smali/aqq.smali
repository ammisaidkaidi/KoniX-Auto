.class public final synthetic Laqq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lj$/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Laqs;


# direct methods
.method public synthetic constructor <init>(Laqs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laqq;->a:Laqs;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Laqq;->a:Laqs;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/os/Bundle;

    const-string v1, "automotive_wide_screen_clear_data"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Laqs;->d:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 2
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    nop

    .line 3
    const-string v1, "automotive_wide_screen_post_load_search_results"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v0, Laqs;->b:Landroid/content/Context;

    .line 4
    invoke-static {v1}, Lcom/android/car/ui/core/SearchResultsProvider;->a(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, v0, Laqs;->b:Landroid/content/Context;

    .line 5
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    nop

    .line 6
    const-string v1, "automotive_wide_screen_back_clicked"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    if-nez p2, :cond_2

    goto/16 :goto_2

    .line 7
    :cond_2
    const-string p1, "search_result_item_id_list"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, v0, Laqs;->k:Laqf;

    iget-object v1, v1, Laqf;->c:Ljava/util/List;

    if-nez v1, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Laoe;

    .line 8
    :goto_0
    if-eqz v2, :cond_4

    iget-object p1, v2, Laoe;->i:Larh;

    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {p1}, Larh;->a()V

    :cond_4
    nop

    .line 11
    const-string p1, "search_result_supplemental_icon_id_list"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 12
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, v0, Laqs;->k:Laqf;

    iget-object v1, v1, Laqf;->c:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoe;

    :cond_5
    nop

    .line 14
    const-string p1, "content_area_surface_display_id"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 15
    const-string v1, "content_area_surface_height"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 16
    const-string v2, "content_area_surface_width"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 17
    const-string v3, "content_area_surface_host_token"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    const-string v3, "Views in the widescreen ime aren\'t supported pre R"

    const/16 v4, 0x1e

    if-eqz p2, :cond_8

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v4, :cond_7

    .line 18
    iget-object v3, v0, Laqs;->b:Landroid/content/Context;

    const-class v4, Landroid/hardware/display/DisplayManager;

    .line 19
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    .line 20
    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    .line 21
    new-instance v3, Landroid/view/SurfaceControlViewHost;

    iget-object v4, v0, Laqs;->b:Landroid/content/Context;

    invoke-direct {v3, v4, p1, p2}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/os/IBinder;)V

    iput-object v3, v0, Laqs;->e:Landroid/view/SurfaceControlViewHost;

    iput v1, v0, Laqs;->f:I

    iput v2, v0, Laqs;->g:I

    new-instance p1, Landroid/os/Bundle;

    .line 22
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object p2, v0, Laqs;->k:Laqf;

    iget-object p2, p2, Laqf;->b:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_6

    .line 23
    invoke-static {p2}, Laro;->e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 24
    invoke-static {p2}, Laqs;->f(Landroid/graphics/Bitmap;)[B

    move-result-object p2

    .line 25
    const-string v1, "extracted_text_icon"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_6
    iget-object p2, v0, Laqs;->e:Landroid/view/SurfaceControlViewHost;

    .line 26
    invoke-virtual {p2}, Landroid/view/SurfaceControlViewHost;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object p2

    .line 27
    const-string v1, "content_area_surface_package"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p2, v0, Laqs;->c:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Laqs;->d:Landroid/widget/TextView;

    .line 28
    const-string v1, "automotive_wide_screen"

    invoke-virtual {p2, v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 17
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_8
    if-nez v1, :cond_9

    if-eqz v2, :cond_a

    const/4 v1, 0x0

    goto :goto_1

    .line 30
    :cond_9
    nop

    .line 28
    :goto_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v4, :cond_b

    .line 29
    iput v1, v0, Laqs;->f:I

    iput v2, v0, Laqs;->g:I

    iget-object p1, v0, Laqs;->e:Landroid/view/SurfaceControlViewHost;

    if-eqz p1, :cond_a

    .line 30
    invoke-virtual {p1, v2, v1}, Landroid/view/SurfaceControlViewHost;->relayout(II)V

    return-void

    .line 6
    :cond_a
    :goto_2
    return-void

    .line 28
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 29
    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic andThen(Lj$/util/function/BiConsumer;)Lj$/util/function/BiConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Lj$/util/function/BiConsumer;Lj$/util/function/BiConsumer;)Lj$/util/function/BiConsumer;

    move-result-object p1

    return-object p1
.end method

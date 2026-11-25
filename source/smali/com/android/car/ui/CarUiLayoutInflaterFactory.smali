.class public Lcom/android/car/ui/CarUiLayoutInflaterFactory;
.super Landroid/support/v7/app/AppCompatViewInflater;
.source "PG"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatViewInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected createView(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    const-class v0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lani;->a(Landroid/content/Context;)Lanh;

    move-result-object p2

    .line 3
    invoke-interface {p2, p1, p3}, Lanh;->createRecyclerView(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->getView()Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    nop

    .line 4
    const-string v0, "CarUiTextView"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p1}, Lani;->a(Landroid/content/Context;)Lanh;

    move-result-object p2

    invoke-interface {p2, p1, p3}, Lanh;->createTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Lasl;

    move-result-object p1

    goto :goto_0

    :cond_1
    nop

    .line 6
    const-string v0, "androidx.recyclerview.widget.RecyclerView"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p1, 0x0

    .line 3
    :goto_0
    return-object p1

    .line 7
    :cond_2
    new-instance p2, Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p2, p1, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p2
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p3, p2, p4}, Landroid/support/v7/app/AppCompatViewInflater;->createView(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

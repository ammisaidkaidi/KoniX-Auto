.class public Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;
.super Lbfu;
.source "PG"


# instance fields
.field public b:Landroid/widget/LinearLayout;

.field public final c:Ljava/util/Map;

.field public d:Lbah;

.field public e:Lbcj;

.field private l:Landroid/content/Intent;

.field private final m:Lbag;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lbfu;-><init>()V

    sget-object v0, Lcaa;->a:Lcaa;

    .line 2
    invoke-virtual {v0}, Lcaa;->a()V

    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->c:Ljava/util/Map;

    new-instance v0, Lbfz;

    invoke-direct {v0, p0}, Lbfz;-><init>(Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->m:Lbag;

    return-void
.end method

.method private final d(Lawo;)Lawp;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->d:Lbah;

    iget-object v0, v0, Lbah;->h:Lbbl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->d:Lbah;

    iget-object v0, v0, Lbah;->h:Lbbl;

    iget-object v0, v0, Lbbl;->h:Lawo;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->d:Lbah;

    iget-object p1, p1, Lbah;->h:Lbbl;

    iget-object p1, p1, Lbbl;->g:Lawp;

    return-object p1

    .line 1
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->d:Lbah;

    .line 2
    sget-object v1, Lawp;->b:Lawp;

    invoke-virtual {v0, p1, v1}, Lbah;->v(Lawo;Lawp;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lawp;->b:Lawp;

    goto :goto_1

    :cond_2
    sget-object p1, Lawp;->a:Lawp;

    :goto_1
    return-object p1
.end method


# virtual methods
.method public final a(Lawo;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-nez p1, :cond_0

    .line 2
    const-string p1, "com.google.android.embedded.projection.GAIN_FOCUS"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-class p1, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;

    .line 3
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->d:Lbah;

    .line 4
    invoke-virtual {v0, p1}, Lbah;->b(Lawo;)Lawo;

    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->d(Lawo;)Lawp;

    move-result-object v0

    sget-object v1, Lcla;->a:Lcla;

    .line 6
    invoke-static {p0, p1, v0, v1}, Lhh;->d(Landroid/content/Context;Lawo;Lawp;Lcla;)Landroid/content/Intent;

    move-result-object v0

    .line 3
    :goto_0
    iget-object p1, p0, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->l:Landroid/content/Intent;

    .line 7
    const-string v1, "android.car.intent.extra.MEDIA_COMPONENT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 9
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    return-object v0
.end method

.method public final b(Lawo;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->b:Landroid/widget/LinearLayout;

    .line 2
    const v2, 0x7f0c004e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 3
    const v1, 0x7f090016

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 4
    invoke-interface {p1}, Lawo;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->d(Lawo;)Lawp;

    move-result-object v1

    .line 6
    sget-object v2, Lawp;->b:Lawp;

    invoke-virtual {v2, v1}, Lawp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f090017

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f100090

    .line 8
    invoke-virtual {p0, v2}, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    new-instance v1, Lbfy;

    invoke-direct {v1, p0, p1}, Lbfy;-><init>(Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;Lawo;)V

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->b:Landroid/widget/LinearLayout;

    .line 10
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->c:Ljava/util/Map;

    .line 11
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lbfu;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->l:Landroid/content/Intent;

    iget-object p1, p0, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->d:Lbah;

    iget-object p1, p1, Lbah;->h:Lbbl;

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->d:Lbah;

    .line 3
    invoke-virtual {v0}, Lbah;->i()Lcqh;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->l:Landroid/content/Intent;

    .line 4
    invoke-virtual {v3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    const-string v4, "android.intent.category.LAUNCHER"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcqh;->size()I

    move-result v3

    if-eq v3, v2, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->finish()V

    .line 21
    invoke-virtual {p0, v1}, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->a(Lawo;)Landroid/content/Intent;

    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 4
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->finish()V

    .line 6
    invoke-virtual {p0, v1}, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->a(Lawo;)Landroid/content/Intent;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 8
    :cond_2
    invoke-virtual {v0}, Lcqh;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 9
    invoke-static {p0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->onDisambiguationEmpty(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->finish()V

    iget-object p1, p0, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->e:Lbcj;

    .line 10
    invoke-interface {p1}, Lbcj;->e()Z

    move-result p1

    if-eq v2, p1, :cond_4

    const p1, 0x7f10005c

    goto :goto_1

    .line 13
    :cond_4
    const p1, 0x7f10005b

    .line 11
    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 14
    :cond_5
    invoke-virtual {v0}, Lcqh;->size()I

    move-result p1

    if-ne p1, v2, :cond_6

    .line 15
    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->finish()V

    const/4 p1, 0x0

    .line 16
    invoke-virtual {v0, p1}, Lcqh;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lawo;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->a(Lawo;)Landroid/content/Intent;

    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_6
    const p1, 0x7f0c004f

    .line 18
    invoke-virtual {p0, p1}, Ltk;->setContentView(I)V

    const p1, 0x7f090014

    .line 19
    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->b:Landroid/widget/LinearLayout;

    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lbfu;->onPause()V

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->d:Lbah;

    iget-object v1, p0, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->m:Lbag;

    .line 2
    invoke-virtual {v0, v1}, Lbah;->r(Lbag;)V

    return-void
.end method

.method public final onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Lbfu;->onResume()V

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->b:Landroid/widget/LinearLayout;

    .line 2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->d:Lbah;

    .line 3
    invoke-virtual {v0}, Lbah;->i()Lcqh;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 3
    check-cast v3, Lawo;

    .line 5
    invoke-virtual {p0, v3}, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->b(Lawo;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->d:Lbah;

    iget-object v1, p0, Lcom/google/android/apps/auto/aareceiver/ui/ProjectionDeviceDisambiguationActivity;->m:Lbag;

    .line 6
    invoke-virtual {v0, v1}, Lbah;->n(Lbag;)V

    return-void
.end method

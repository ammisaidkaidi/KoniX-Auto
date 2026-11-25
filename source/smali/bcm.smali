.class public final Lbcm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbcj;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:Ljava/lang/String;

.field final f:Ljava/lang/String;

.field public final g:Landroid/content/Context;

.field private final h:Landroid/content/SharedPreferences;

.field private final i:Landroid/util/ArraySet;

.field private final j:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final k:Lbcf;

.field private final l:Lbhi;

.field private final m:Lbcl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbcf;Lbhi;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lbcm;->i:Landroid/util/ArraySet;

    new-instance v0, Lbck;

    invoke-direct {v0, p0}, Lbck;-><init>(Lbcm;)V

    iput-object v0, p0, Lbcm;->j:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    new-instance v0, Lbcl;

    invoke-direct {v0, p0}, Lbcl;-><init>(Lbcm;)V

    iput-object v0, p0, Lbcm;->m:Lbcl;

    .line 2
    invoke-static {p1}, Ladl;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lbcm;->h:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lbcm;->k:Lbcf;

    iput-object p3, p0, Lbcm;->l:Lbhi;

    iput-object p1, p0, Lbcm;->g:Landroid/content/Context;

    .line 3
    const p2, 0x7f100054

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lbcm;->a:Ljava/lang/String;

    .line 4
    const p2, 0x7f10004e

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lbcm;->b:Ljava/lang/String;

    .line 5
    const p3, 0x7f10004d

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lbcm;->c:Ljava/lang/String;

    .line 6
    const p3, 0x7f100076

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lbcm;->d:Ljava/lang/String;

    .line 7
    const p3, 0x7f10007b

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lbcm;->e:Ljava/lang/String;

    .line 8
    const p3, 0x7f10008f

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbcm;->f:Ljava/lang/String;

    .line 9
    invoke-interface {v0, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 10
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 p3, 0x1

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    .line 1
    iget-object v0, p0, Lbcm;->h:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lbcm;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbcm;->g:Landroid/content/Context;

    .line 2
    const v2, 0x7f100075

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Lbcm;->g:Landroid/content/Context;

    const v3, 0x7f100073

    .line 3
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lbcm;->g:Landroid/content/Context;

    const v3, 0x7f10007a

    .line 4
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    .line 2
    :goto_0
    if-ne v0, v2, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lbcm;->h:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lbcm;->e:Ljava/lang/String;

    .line 5
    sget-object v3, Lcsf;->a:Lcsf;

    .line 6
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lbcm;->g:Landroid/content/Context;

    const v3, 0x7f100078

    .line 7
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    or-int/lit16 v0, v0, 0x100

    :cond_4
    iget-object v2, p0, Lbcm;->g:Landroid/content/Context;

    const v3, 0x7f100077

    .line 8
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    or-int/lit16 v0, v0, 0x400

    :cond_5
    iget-object v2, p0, Lbcm;->g:Landroid/content/Context;

    const v3, 0x7f100079

    .line 9
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    or-int/lit16 v0, v0, 0x200

    :cond_6
    return v0
.end method

.method public final b()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lbcm;->h:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lbcm;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final c(Landroid/hardware/usb/UsbDevice;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lbcm;->k:Lbcf;

    invoke-interface {v0, p1}, Lbcf;->a(Landroid/hardware/usb/UsbDevice;)Z

    move-result p1

    return p1
.end method

.method public final d()Z
    .locals 4

    .line 1
    invoke-static {}, Ldlb;->c()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lbcm;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbcm;->h:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lbcm;->f:Ljava/lang/String;

    .line 3
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public final e()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbcm;->f(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final f(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lbcm;->h:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lbcm;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lbcm;->k:Lbcf;

    .line 2
    invoke-interface {v0, p1}, Lbcf;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    iget-object p1, p0, Lbcm;->l:Lbhi;

    .line 3
    invoke-virtual {p1}, Lbhi;->d()Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final g()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lbcm;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbcm;->a:Ljava/lang/String;

    iget-object v2, p0, Lbcm;->g:Landroid/content/Context;

    const v3, 0x7f100055

    .line 2
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbcm;->h:Landroid/content/SharedPreferences;

    .line 3
    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lbcm;->g:Landroid/content/Context;

    const v3, 0x7f100056

    .line 4
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v1, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    return v0

    :cond_1
    return v1
.end method

.method public final h(Lbap;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lbcm;->i:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbcm;->h:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lbcm;->j:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 2
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object v0, p0, Lbcm;->k:Lbcf;

    iget-object v1, p0, Lbcm;->m:Lbcl;

    .line 3
    invoke-interface {v0, v1}, Lbcf;->c(Lbcl;)V

    :cond_0
    iget-object v0, p0, Lbcm;->i:Landroid/util/ArraySet;

    .line 4
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final i(Lbap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbcm;->i:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lbcm;->i:Landroid/util/ArraySet;

    .line 2
    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lbcm;->h:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lbcm;->j:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 3
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object p1, p0, Lbcm;->k:Lbcf;

    iget-object v0, p0, Lbcm;->m:Lbcl;

    .line 4
    invoke-interface {p1, v0}, Lbcf;->d(Lbcl;)V

    :cond_0
    return-void
.end method

.method public final j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lbcm;->i:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbap;

    iget-object v1, v1, Lbap;->a:Lcom/google/android/apps/auto/aareceiver/service/PersistentService;

    iget-object v2, v1, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->d:Lbcj;

    .line 2
    invoke-interface {v2}, Lbcj;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->b:Lawh;

    .line 5
    invoke-virtual {v2}, Lawh;->i()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->b:Lawh;

    .line 6
    invoke-virtual {v1}, Lawh;->d()V

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->b:Lawh;

    .line 3
    invoke-virtual {v2}, Lawh;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/google/android/apps/auto/aareceiver/service/PersistentService;->b()V

    goto :goto_0

    :cond_2
    return-void
.end method

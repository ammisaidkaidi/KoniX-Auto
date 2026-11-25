.class public final Lbcb;
.super Lbcc;
.source "PG"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final ae:Lcsz;

.field private static final af:Z


# instance fields
.field public ad:Landroid/widget/Toast;

.field private final ag:Lacq;

.field private ah:Landroidx/preference/Preference;

.field public f:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "com/google/android/apps/auto/aareceiver/settings/EmbeddedPreferenceFragment"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lbcb;->ae:Lcsz;

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "userdebug"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :cond_1
    :goto_0
    sput-boolean v1, Lbcb;->af:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lbcc;-><init>()V

    new-instance v0, Lbca;

    invoke-direct {v0, p0}, Lbca;-><init>(Lbcb;)V

    iput-object v0, p0, Lbcb;->ag:Lacq;

    return-void
.end method


# virtual methods
.method public final K()V
    .locals 1

    .line 1
    invoke-super {p0}, Lbcc;->K()V

    sget-boolean v0, Lbcb;->af:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbcb;->f:Landroid/content/SharedPreferences;

    .line 2
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method public final L()V
    .locals 1

    .line 1
    invoke-super {p0}, Lbcc;->L()V

    sget-boolean v0, Lbcb;->af:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbcb;->f:Landroid/content/SharedPreferences;

    .line 2
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method public final al(Ljava/lang/String;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lada;->a:Ladl;

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lbr;->r()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ladl;->f(Z)V

    .line 2
    sget v3, Ladh;->a:I

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/String;

    const-class v5, Landroidx/preference/Preference;

    .line 3
    invoke-virtual {v5}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const-class v5, Landroidx/preference/SwitchPreference;

    .line 4
    invoke-virtual {v5}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "."

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f130008

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 6
    :try_start_0
    invoke-static {v5, v1, v4, v0, v3}, Ladh;->a(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;[Ljava/lang/Object;Ladl;[Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    .line 9
    check-cast v1, Landroidx/preference/PreferenceScreen;

    .line 10
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->onAttachedToHierarchy(Ladl;)V

    .line 1
    invoke-virtual {v0, v6}, Ladl;->f(Z)V

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {v1, p1}, Landroidx/preference/PreferenceGroup;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 12
    instance-of v0, v1, Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 78
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preference object with key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a PreferenceScreen"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    nop

    .line 13
    :goto_0
    check-cast v1, Landroidx/preference/PreferenceScreen;

    new-instance p1, Ljava/util/HashMap;

    .line 14
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayDeque;

    .line 16
    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    .line 17
    invoke-interface {v3, v1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 18
    :cond_2
    invoke-interface {v3}, Ljava/util/Deque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 19
    invoke-interface {v3}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/preference/Preference;

    .line 20
    instance-of v5, v4, Landroidx/preference/PreferenceGroup;

    if-eqz v5, :cond_2

    .line 21
    check-cast v4, Landroidx/preference/PreferenceGroup;

    .line 22
    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v5, 0x0

    .line 23
    :goto_1
    invoke-virtual {v4}, Landroidx/preference/PreferenceGroup;->a()I

    move-result v7

    if-ge v5, v7, :cond_3

    .line 24
    invoke-virtual {v4, v5}, Landroidx/preference/PreferenceGroup;->c(I)Landroidx/preference/Preference;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 25
    :cond_3
    monitor-enter v4

    :try_start_1
    iget-object v5, v4, Landroidx/preference/PreferenceGroup;->b:Ljava/util/List;

    .line 26
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    :goto_2
    if-ltz v7, :cond_4

    .line 27
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/preference/Preference;

    invoke-virtual {v4, v8}, Landroidx/preference/PreferenceGroup;->h(Landroidx/preference/Preference;)V

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 28
    :cond_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    invoke-virtual {v4}, Landroidx/preference/Preference;->notifyHierarchyChanged()V

    .line 30
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v5, :cond_2

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 31
    check-cast v8, Landroidx/preference/Preference;

    .line 32
    invoke-static {v8}, Lany;->ao(Landroidx/preference/Preference;)Landroidx/preference/Preference;

    move-result-object v9

    .line 33
    invoke-virtual {v8}, Landroidx/preference/Preference;->getDependency()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {v4, v9}, Landroidx/preference/PreferenceGroup;->f(Landroidx/preference/Preference;)V

    .line 35
    invoke-interface {v3, v9}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 78
    :catchall_0
    move-exception p1

    .line 28
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 35
    :cond_5
    iget-object v0, p0, Lada;->a:Ladl;

    iget-object v3, v0, Ladl;->b:Landroidx/preference/PreferenceScreen;

    if-eq v1, v3, :cond_7

    if-eqz v3, :cond_6

    .line 36
    invoke-virtual {v3}, Landroidx/preference/Preference;->onDetached()V

    :cond_6
    iput-object v1, v0, Ladl;->b:Landroidx/preference/PreferenceScreen;

    if-eqz v1, :cond_7

    iput-boolean v2, p0, Lada;->c:Z

    iget-boolean v0, p0, Lada;->d:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lada;->e:Landroid/os/Handler;

    .line 37
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lada;->e:Landroid/os/Handler;

    .line 38
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 39
    :cond_7
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 40
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    iget-object p1, p0, Lada;->a:Ladl;

    .line 41
    invoke-virtual {p1}, Ladl;->d()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lbcb;->f:Landroid/content/SharedPreferences;

    const p1, 0x7f10005f

    .line 42
    invoke-virtual {p0, p1}, Lbr;->F(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lada;->aO(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lbbz;

    invoke-direct {v0, p0, v2}, Lbbz;-><init>(Lbcb;I)V

    .line 43
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lacq;)V

    const p1, 0x7f10008e

    .line 44
    invoke-virtual {p0, p1}, Lbr;->F(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lada;->aO(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lbcb;->ah:Landroidx/preference/Preference;

    .line 45
    :try_start_3
    invoke-virtual {p0}, Lbr;->r()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 46
    invoke-virtual {p0}, Lbr;->r()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 47
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v0}, Lhn;->e(Ljava/lang/Object;)Lbic;

    move-result-object v0

    .line 48
    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbic;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lbcb;->ah:Landroidx/preference/Preference;

    .line 49
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    .line 28
    :catch_0
    move-exception p1

    sget-object v0, Lbcb;->ae:Lcsz;

    invoke-virtual {v0}, Lcsv;->b()Lctq;

    move-result-object v0

    .line 50
    invoke-interface {v0, p1}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string v0, "com/google/android/apps/auto/aareceiver/settings/EmbeddedPreferenceFragment"

    const-string v1, "setupVersionPreferenceSummary"

    const/16 v3, 0x87

    const-string v4, "EmbeddedPreferenceFragment.java"

    invoke-interface {p1, v0, v1, v3, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string v0, "Error fetching package info."

    invoke-interface {p1, v0}, Lcsx;->n(Ljava/lang/String;)V

    .line 49
    :goto_5
    sget-boolean p1, Lbcb;->af:Z

    if-nez p1, :cond_9

    return-void

    :cond_9
    iget-object p1, p0, Lbcb;->ah:Landroidx/preference/Preference;

    iget-object v0, p0, Lbcb;->ag:Lacq;

    .line 51
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lacq;)V

    const p1, 0x7f10004b

    .line 52
    invoke-virtual {p0, p1}, Lbr;->F(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lada;->aO(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    invoke-static {}, Ldih;->c()Z

    move-result v0

    if-nez v0, :cond_a

    const v0, 0x7f100054

    .line 54
    invoke-virtual {p0, v0}, Lbr;->F(I)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {p0, v0}, Lada;->aO(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->g(Landroidx/preference/Preference;)V

    .line 57
    :cond_a
    invoke-virtual {p0}, Lbcb;->as()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lbcb;->f:Landroid/content/SharedPreferences;

    .line 58
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 59
    invoke-virtual {p0}, Lbr;->r()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lbcb;->ad:Landroid/widget/Toast;

    .line 60
    const v0, 0x7f10008f

    invoke-virtual {p0, v0}, Lbr;->F(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lada;->aO(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    invoke-static {}, Ldlb;->c()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 62
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_6

    .line 77
    :cond_b
    nop

    .line 63
    invoke-virtual {v1, v6}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lbcb;->f:Landroid/content/SharedPreferences;

    .line 64
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 65
    invoke-virtual {p0, v0}, Lbr;->F(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 66
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 62
    :goto_6
    const v0, 0x7f100071

    .line 67
    invoke-virtual {p0, v0}, Lbr;->F(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lada;->aO(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    invoke-static {}, Ldju;->c()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 69
    invoke-virtual {p0}, Lbr;->r()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_c

    goto :goto_7

    .line 70
    :cond_c
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 71
    invoke-static {v1}, Lxr;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v4, 0x50000

    .line 72
    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 73
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 75
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 76
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    new-instance p1, Lbbz;

    invoke-direct {p1, p0, v6}, Lbbz;-><init>(Lbcb;I)V

    .line 77
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lacq;)V

    return-void

    .line 74
    :cond_d
    :goto_7
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->g(Landroidx/preference/Preference;)V

    return-void

    .line 79
    :catchall_1
    move-exception p1

    .line 7
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    .line 8
    throw p1

    .line 66
    :cond_e
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "This should be called after super.onCreate."

    .line 79
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :goto_8
    throw p1

    :goto_9
    goto :goto_8
.end method

.method public final ar(I)V
    .locals 5

    .line 1
    rsub-int/lit8 p1, p1, 0xa

    if-nez p1, :cond_0

    iget-object p1, p0, Lbcb;->ad:Landroid/widget/Toast;

    const v0, 0x7f10004a

    invoke-virtual {p0, v0}, Lbr;->F(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lbcb;->ad:Landroid/widget/Toast;

    .line 2
    invoke-virtual {p0}, Lbr;->t()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/high16 v3, 0x7f0e0000

    .line 4
    invoke-virtual {v1, v3, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 1
    :goto_0
    iget-object p1, p0, Lbcb;->ad:Landroid/widget/Toast;

    .line 6
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final as()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lbcb;->f:Landroid/content/SharedPreferences;

    const v1, 0x7f10004d

    invoke-virtual {p0, v1}, Lbr;->F(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .line 1
    const p1, 0x7f10004d

    invoke-virtual {p0, p1}, Lbr;->F(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0}, Lbcb;->as()Z

    move-result p2

    const v0, 0x7f10004b

    .line 3
    invoke-virtual {p0, v0}, Lbr;->F(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lada;->aO(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 5
    invoke-virtual {p0, p1}, Lbr;->F(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lada;->aO(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroidx/preference/SwitchPreference;

    .line 6
    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

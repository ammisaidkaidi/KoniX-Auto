.class public Lj$/util/DesugarCollections;
.super Ljava/lang/Object;
.source "DesugarCollections.java"


# static fields
.field private static final COLLECTION_FIELD:Ljava/lang/reflect/Field;

.field private static final MUTEX_FIELD:Ljava/lang/reflect/Field;

.field public static final SYNCHRONIZED_COLLECTION:Ljava/lang/Class;

.field private static final SYNCHRONIZED_COLLECTION_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

.field static final SYNCHRONIZED_LIST:Ljava/lang/Class;

.field private static final SYNCHRONIZED_SET_CONSTRUCTOR:Ljava/lang/reflect/Constructor;


# direct methods
.method static bridge synthetic -$$Nest$sfgetSYNCHRONIZED_COLLECTION_CONSTRUCTOR()Ljava/lang/reflect/Constructor;
    .locals 1

    sget-object v0, Lj$/util/DesugarCollections;->SYNCHRONIZED_COLLECTION_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetSYNCHRONIZED_SET_CONSTRUCTOR()Ljava/lang/reflect/Constructor;
    .locals 1

    sget-object v0, Lj$/util/DesugarCollections;->SYNCHRONIZED_SET_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 8

    .line 100
    const-class v0, Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lj$/util/DesugarCollections;->SYNCHRONIZED_COLLECTION:Ljava/lang/Class;

    .line 101
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lj$/util/DesugarCollections;->SYNCHRONIZED_LIST:Ljava/lang/Class;

    const-string v2, "mutex"

    .line 102
    invoke-static {v1, v2}, Lj$/util/DesugarCollections;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lj$/util/DesugarCollections;->MUTEX_FIELD:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_0
    const-string v2, "c"

    .line 106
    invoke-static {v1, v2}, Lj$/util/DesugarCollections;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lj$/util/DesugarCollections;->COLLECTION_FIELD:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_1

    .line 108
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 110
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    .line 111
    const-class v6, Ljava/util/Set;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    aput-object v0, v5, v3

    invoke-static {v2, v5}, Lj$/util/DesugarCollections;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    sput-object v2, Lj$/util/DesugarCollections;->SYNCHRONIZED_SET_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    if-eqz v2, :cond_2

    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    :cond_2
    new-array v2, v4, [Ljava/lang/Class;

    .line 115
    const-class v4, Ljava/util/Collection;

    aput-object v4, v2, v7

    aput-object v0, v2, v3

    .line 116
    invoke-static {v1, v2}, Lj$/util/DesugarCollections;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lj$/util/DesugarCollections;->SYNCHRONIZED_COLLECTION_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_3

    .line 118
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    :cond_3
    return-void
.end method

.method private static varargs getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 0

    .line 134
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0

    .line 124
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synchronizedMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 1

    .line 259
    new-instance v0, Lj$/util/DesugarCollections$SynchronizedMap;

    invoke-direct {v0, p0}, Lj$/util/DesugarCollections$SynchronizedMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

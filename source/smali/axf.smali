.class public final Laxf;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcsz;


# instance fields
.field public b:Z

.field public c:Z

.field public final d:Landroid/car/CarAppFocusManager;

.field public final e:Landroid/car/CarAppFocusManager$OnAppFocusOwnershipCallback;

.field private final f:Landroid/car/CarAppFocusManager$OnAppFocusChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/auto/aareceiver/context/VoiceSessionAppFocusManager"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Laxf;->a:Lcsz;

    return-void
.end method

.method public constructor <init>(Landroid/car/CarAppFocusManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Laxf;->b:Z

    iput-boolean v0, p0, Laxf;->c:Z

    new-instance v0, Laxd;

    invoke-direct {v0, p0}, Laxd;-><init>(Laxf;)V

    iput-object v0, p0, Laxf;->f:Landroid/car/CarAppFocusManager$OnAppFocusChangedListener;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Laxf;->d:Landroid/car/CarAppFocusManager;

    .line 3
    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/car/CarAppFocusManager;->addFocusListener(Landroid/car/CarAppFocusManager$OnAppFocusChangedListener;I)V

    .line 4
    new-instance p1, Laxe;

    invoke-direct {p1}, Laxe;-><init>()V

    iput-object p1, p0, Laxf;->e:Landroid/car/CarAppFocusManager$OnAppFocusOwnershipCallback;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Laxf;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Laxf;->d:Landroid/car/CarAppFocusManager;

    iget-object v1, p0, Laxf;->e:Landroid/car/CarAppFocusManager$OnAppFocusOwnershipCallback;

    invoke-virtual {v0, v1}, Landroid/car/CarAppFocusManager;->abandonAppFocus(Landroid/car/CarAppFocusManager$OnAppFocusOwnershipCallback;)V

    iget-object v0, p0, Laxf;->d:Landroid/car/CarAppFocusManager;

    iget-object v1, p0, Laxf;->f:Landroid/car/CarAppFocusManager$OnAppFocusChangedListener;

    .line 2
    invoke-virtual {v0, v1}, Landroid/car/CarAppFocusManager;->removeFocusListener(Landroid/car/CarAppFocusManager$OnAppFocusChangedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

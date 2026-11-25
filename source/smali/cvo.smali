.class public final Lcvo;
.super Lcvs;
.source "PG"


# static fields
.field public static final a:Lcvo;


# instance fields
.field public final b:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcvo;

    sget-object v1, Lcvu;->a:Lcvs;

    .line 2
    invoke-direct {v0, v1}, Lcvo;-><init>(Lcvs;)V

    sput-object v0, Lcvo;->a:Lcvo;

    return-void
.end method

.method public constructor <init>(Lcvs;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcvs;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcvo;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final a()Lcug;
    .locals 1

    .line 1
    iget-object v0, p0, Lcvo;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcvs;

    invoke-virtual {v0}, Lcvs;->a()Lcug;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcwa;
    .locals 1

    .line 1
    iget-object v0, p0, Lcvo;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcvs;

    invoke-virtual {v0}, Lcvs;->b()Lcwa;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;Ljava/util/logging/Level;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcvo;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcvs;

    invoke-virtual {v0, p1, p2, p3}, Lcvs;->c(Ljava/lang/String;Ljava/util/logging/Level;Z)V

    return-void
.end method

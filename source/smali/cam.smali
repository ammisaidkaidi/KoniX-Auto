.class public final Lcam;
.super Lxt;
.source "PG"

# interfaces
.implements Lbvd;
.implements Lbwq;


# static fields
.field public static final a:J


# instance fields
.field public final b:Lbwn;

.field public final c:Landroid/app/Application;

.field public final d:Ldgz;

.field public final e:Lcbs;

.field private final f:Lbvh;

.field private final g:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcam;->a:J

    return-void
.end method

.method public constructor <init>(Lbwo;Landroid/content/Context;Lbvh;Ljava/util/concurrent/Executor;Ldgz;Lcbs;Ldny;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lxt;-><init>()V

    invoke-virtual {p1, p4, p5, p7}, Lbwo;->a(Ljava/util/concurrent/Executor;Ldgz;Ldny;)Lbwn;

    move-result-object p1

    iput-object p1, p0, Lcam;->b:Lbwn;

    iput-object p4, p0, Lcam;->g:Ljava/util/concurrent/Executor;

    check-cast p2, Landroid/app/Application;

    iput-object p2, p0, Lcam;->c:Landroid/app/Application;

    iput-object p5, p0, Lcam;->d:Ldgz;

    iput-object p6, p0, Lcam;->e:Lcbs;

    iput-object p3, p0, Lcam;->f:Lbvh;

    return-void
.end method


# virtual methods
.method public final c(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcam;->f:Lbvh;

    invoke-virtual {p1, p0}, Lbvh;->b(Lbvg;)V

    new-instance p1, Lcal;

    invoke-direct {p1, p0}, Lcal;-><init>(Lcam;)V

    iget-object v0, p0, Lcam;->g:Ljava/util/concurrent/Executor;

    .line 2
    invoke-static {p1, v0}, Lhh;->m(Lczb;Ljava/util/concurrent/Executor;)Ldag;

    return-void
.end method

.method public final u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcam;->f:Lbvh;

    invoke-virtual {v0, p0}, Lbvh;->a(Lbvg;)V

    return-void
.end method

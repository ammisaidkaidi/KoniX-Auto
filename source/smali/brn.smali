.class public final Lbrn;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field public static final b:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lbrm;

    invoke-direct {v0}, Lbrm;-><init>()V

    sput-object v0, Lbrn;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lbrl;

    invoke-direct {v0}, Lbrl;-><init>()V

    sput-object v0, Lbrn;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

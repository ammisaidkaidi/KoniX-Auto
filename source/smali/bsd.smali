.class public final Lbsd;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lbse;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lbsf;

    .line 2
    new-instance v1, Lbsz;

    invoke-direct {v1}, Lbsz;-><init>()V

    .line 1
    invoke-direct {v0, v1}, Lbsf;-><init>(Lbsz;)V

    sput-object v0, Lbsd;->a:Lbse;

    return-void
.end method

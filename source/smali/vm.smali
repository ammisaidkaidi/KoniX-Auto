.class public final Lvm;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field a:[Lvs;

.field final b:Lvo;

.field final c:Lvo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lvo;

    invoke-direct {v0}, Lvo;-><init>()V

    iput-object v0, p0, Lvm;->b:Lvo;

    new-instance v0, Lvo;

    invoke-direct {v0}, Lvo;-><init>()V

    iput-object v0, p0, Lvm;->c:Lvo;

    const/16 v0, 0x20

    new-array v0, v0, [Lvs;

    iput-object v0, p0, Lvm;->a:[Lvs;

    return-void
.end method

.class final Lade;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lacq;


# instance fields
.field final synthetic a:Landroidx/preference/PreferenceGroup;

.field final synthetic b:Ladg;


# direct methods
.method public constructor <init>(Ladg;Landroidx/preference/PreferenceGroup;)V
    .locals 0

    iput-object p1, p0, Lade;->b:Ladg;

    iput-object p2, p0, Lade;->a:Landroidx/preference/PreferenceGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lade;->a:Landroidx/preference/PreferenceGroup;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->d(I)V

    iget-object v0, p0, Lade;->b:Ladg;

    .line 2
    invoke-virtual {v0}, Ladg;->b()V

    return-void
.end method

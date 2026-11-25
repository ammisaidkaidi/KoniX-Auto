.class public Landroidx/core/app/RemoteActionCompatParcelizer;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lagb;)Landroid/support/v4/app/RemoteActionCompat;
    .locals 3

    .line 1
    new-instance v0, Landroid/support/v4/app/RemoteActionCompat;

    invoke-direct {v0}, Landroid/support/v4/app/RemoteActionCompat;-><init>()V

    iget-object v1, v0, Landroid/support/v4/app/RemoteActionCompat;->a:Landroid/support/v4/graphics/drawable/IconCompat;

    invoke-virtual {p0, v1}, Lagb;->t(Lagc;)Lagc;

    move-result-object v1

    check-cast v1, Landroid/support/v4/graphics/drawable/IconCompat;

    iput-object v1, v0, Landroid/support/v4/app/RemoteActionCompat;->a:Landroid/support/v4/graphics/drawable/IconCompat;

    iget-object v1, v0, Landroid/support/v4/app/RemoteActionCompat;->b:Ljava/lang/CharSequence;

    .line 2
    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lagb;->d(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/app/RemoteActionCompat;->b:Ljava/lang/CharSequence;

    iget-object v1, v0, Landroid/support/v4/app/RemoteActionCompat;->c:Ljava/lang/CharSequence;

    .line 3
    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lagb;->d(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/app/RemoteActionCompat;->c:Ljava/lang/CharSequence;

    iget-object v1, v0, Landroid/support/v4/app/RemoteActionCompat;->d:Landroid/app/PendingIntent;

    .line 4
    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lagb;->b(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/support/v4/app/RemoteActionCompat;->d:Landroid/app/PendingIntent;

    iget-boolean v1, v0, Landroid/support/v4/app/RemoteActionCompat;->e:Z

    .line 5
    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Lagb;->l(ZI)Z

    move-result v1

    iput-boolean v1, v0, Landroid/support/v4/app/RemoteActionCompat;->e:Z

    iget-boolean v1, v0, Landroid/support/v4/app/RemoteActionCompat;->f:Z

    .line 6
    const/4 v2, 0x6

    invoke-virtual {p0, v1, v2}, Lagb;->l(ZI)Z

    move-result p0

    iput-boolean p0, v0, Landroid/support/v4/app/RemoteActionCompat;->f:Z

    return-object v0
.end method

.method public static write(Landroid/support/v4/app/RemoteActionCompat;Lagb;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/app/RemoteActionCompat;->a:Landroid/support/v4/graphics/drawable/IconCompat;

    invoke-virtual {p1, v0}, Lagb;->u(Lagc;)V

    .line 2
    iget-object v0, p0, Landroid/support/v4/app/RemoteActionCompat;->b:Ljava/lang/CharSequence;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lagb;->g(Ljava/lang/CharSequence;I)V

    .line 3
    iget-object v0, p0, Landroid/support/v4/app/RemoteActionCompat;->c:Ljava/lang/CharSequence;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lagb;->g(Ljava/lang/CharSequence;I)V

    .line 4
    iget-object v0, p0, Landroid/support/v4/app/RemoteActionCompat;->d:Landroid/app/PendingIntent;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lagb;->i(Landroid/os/Parcelable;I)V

    .line 5
    iget-boolean v0, p0, Landroid/support/v4/app/RemoteActionCompat;->e:Z

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lagb;->f(ZI)V

    .line 6
    iget-boolean p0, p0, Landroid/support/v4/app/RemoteActionCompat;->f:Z

    const/4 v0, 0x6

    invoke-virtual {p1, p0, v0}, Lagb;->f(ZI)V

    return-void
.end method

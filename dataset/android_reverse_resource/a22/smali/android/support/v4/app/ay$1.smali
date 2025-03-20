.class final Landroid/support/v4/app/ay$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/app/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ay;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/cl;)Landroid/support/v4/app/ay;
    .locals 7

    new-instance v0, Landroid/support/v4/app/ay;

    check-cast p5, [Landroid/support/v4/app/ce;

    move-object v5, p5

    check-cast v5, [Landroid/support/v4/app/ce;

    const/4 v6, 0x0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/app/ay;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/ce;Landroid/support/v4/app/ax$1;)V

    return-object v0
.end method

.method public synthetic b(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/cl;)Landroid/support/v4/app/bu;
    .locals 1

    invoke-virtual/range {p0 .. p5}, Landroid/support/v4/app/ay$1;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/cl;)Landroid/support/v4/app/ay;

    move-result-object v0

    return-object v0
.end method

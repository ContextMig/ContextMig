.class public final Ldouzifly/list/a/c$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/a/c;->a(Landroid/app/Activity;)Ljava/util/List;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    nop

    check-cast p2, Ldouzifly/list/a/a;

    invoke-virtual {p2}, Ldouzifly/list/a/a;->a()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    check-cast p1, Ldouzifly/list/a/a;

    invoke-virtual {p1}, Ldouzifly/list/a/a;->a()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-static {v0, v1}, Lb/b/a;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    return v0
.end method

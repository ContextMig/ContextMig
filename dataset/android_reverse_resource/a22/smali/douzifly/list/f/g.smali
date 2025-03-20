.class public final Ldouzifly/list/f/g;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-object p0
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ldouzifly/list/f/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ldouzifly/list/f/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

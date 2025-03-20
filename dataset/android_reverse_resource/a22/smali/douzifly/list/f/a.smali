.class public final Ldouzifly/list/f/a;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 1

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/app/ProgressDialog;

    check-cast p0, Landroid/content/Context;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-object v0
.end method

.method public static final a(Landroid/app/Activity;Ljava/lang/String;J)V
    .locals 2

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/app/ProgressDialog;

    check-cast p0, Landroid/content/Context;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    new-instance v0, Ldouzifly/list/f/a$a;

    invoke-direct {v0, v1}, Ldouzifly/list/f/a$a;-><init>(Landroid/app/ProgressDialog;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {p2, p3, v0}, Ldouzifly/list/f/h;->a(JLb/d/a/a;)V

    return-void
.end method

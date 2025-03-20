.class public final Ldouzifly/list/f/f;
.super Ljava/lang/Object;


# direct methods
.method public static final a(ILandroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.resources.getString(this)"

    invoke-static {v0, v1}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.class public final Ldouzifly/list/f/e;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Lcom/mikepenz/iconics/typeface/a;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/mikepenz/iconics/a;

    sget-object v1, Ldouzifly/list/ListApplication;->a:Ldouzifly/list/a;

    invoke-virtual {v1}, Ldouzifly/list/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/mikepenz/iconics/a;-><init>(Landroid/content/Context;Lcom/mikepenz/iconics/typeface/a;)V

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/a;->c(I)Lcom/mikepenz/iconics/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mikepenz/iconics/a;->a(I)Lcom/mikepenz/iconics/a;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    const-string v1, "IconicsDrawable(ListAppl\u2026).sizeDp(18).color(color)"

    invoke-static {v0, v1}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final b(Lcom/mikepenz/iconics/typeface/a;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/mikepenz/iconics/a;

    sget-object v1, Ldouzifly/list/ListApplication;->a:Ldouzifly/list/a;

    invoke-virtual {v1}, Ldouzifly/list/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/mikepenz/iconics/a;-><init>(Landroid/content/Context;Lcom/mikepenz/iconics/typeface/a;)V

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/a;->c(I)Lcom/mikepenz/iconics/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mikepenz/iconics/a;->b(I)Lcom/mikepenz/iconics/a;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    const-string v1, "IconicsDrawable(ListAppl\u2026izeDp(18).colorRes(color)"

    invoke-static {v0, v1}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

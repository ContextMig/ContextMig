.class public abstract Landroid/support/v4/view/j;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionProvider(support)"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSubUiVisibilityListener:Landroid/support/v4/view/k;

.field private mVisibilityListener:Landroid/support/v4/view/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/view/j;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/j;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract onCreateActionView()Landroid/view/View;
.end method

.method public onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/view/j;->onCreateActionView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPerformDefaultAction()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareSubMenu(Landroid/view/SubMenu;)V
    .locals 0

    return-void
.end method

.method public overridesItemVisibility()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public refreshVisibility()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/j;->mVisibilityListener:Landroid/support/v4/view/l;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/view/j;->overridesItemVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/j;->mVisibilityListener:Landroid/support/v4/view/l;

    invoke-virtual {p0}, Landroid/support/v4/view/j;->isVisible()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/support/v4/view/l;->onActionProviderVisibilityChanged(Z)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/j;->mVisibilityListener:Landroid/support/v4/view/l;

    iput-object v0, p0, Landroid/support/v4/view/j;->mSubUiVisibilityListener:Landroid/support/v4/view/k;

    return-void
.end method

.method public setSubUiVisibilityListener(Landroid/support/v4/view/k;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/view/j;->mSubUiVisibilityListener:Landroid/support/v4/view/k;

    return-void
.end method

.method public setVisibilityListener(Landroid/support/v4/view/l;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/view/j;->mVisibilityListener:Landroid/support/v4/view/l;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "ActionProvider(support)"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instance while it is still in use somewhere else?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Landroid/support/v4/view/j;->mVisibilityListener:Landroid/support/v4/view/l;

    return-void
.end method

.method public subUiVisibilityChanged(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/j;->mSubUiVisibilityListener:Landroid/support/v4/view/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/j;->mSubUiVisibilityListener:Landroid/support/v4/view/k;

    invoke-interface {v0, p1}, Landroid/support/v4/view/k;->onSubUiVisibilityChanged(Z)V

    :cond_0
    return-void
.end method

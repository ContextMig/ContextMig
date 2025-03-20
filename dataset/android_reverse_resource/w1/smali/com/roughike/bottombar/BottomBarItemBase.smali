.class Lcom/roughike/bottombar/BottomBarItemBase;
.super Ljava/lang/Object;
.source "BottomBarItemBase.java"


# instance fields
.field protected color:I

.field protected icon:Landroid/graphics/drawable/Drawable;

.field protected iconResource:I

.field protected title:Ljava/lang/String;

.field protected titleResource:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    iget v0, p0, Lcom/roughike/bottombar/BottomBarItemBase;->iconResource:I

    if-eqz v0, :cond_0

    .line 50
    invoke-static {}, Landroid/support/v7/widget/AppCompatDrawableManager;->get()Landroid/support/v7/widget/AppCompatDrawableManager;

    move-result-object v0

    iget v1, p0, Lcom/roughike/bottombar/BottomBarItemBase;->iconResource:I

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarItemBase;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method protected getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    iget v0, p0, Lcom/roughike/bottombar/BottomBarItemBase;->titleResource:I

    if-eqz v0, :cond_0

    .line 58
    iget v0, p0, Lcom/roughike/bottombar/BottomBarItemBase;->titleResource:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarItemBase;->title:Ljava/lang/String;

    goto :goto_0
.end method

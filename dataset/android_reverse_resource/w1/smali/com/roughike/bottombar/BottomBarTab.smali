.class public Lcom/roughike/bottombar/BottomBarTab;
.super Lcom/roughike/bottombar/BottomBarItemBase;
.source "BottomBarTab.java"


# instance fields
.field protected id:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "iconResource"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "titleResource"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBarItemBase;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/roughike/bottombar/BottomBarTab;->id:I

    .line 66
    iput p1, p0, Lcom/roughike/bottombar/BottomBarTab;->iconResource:I

    .line 67
    iput p2, p0, Lcom/roughike/bottombar/BottomBarTab;->titleResource:I

    .line 68
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "iconResource"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "title"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBarItemBase;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/roughike/bottombar/BottomBarTab;->id:I

    .line 33
    iput p1, p0, Lcom/roughike/bottombar/BottomBarTab;->iconResource:I

    .line 34
    iput-object p2, p0, Lcom/roughike/bottombar/BottomBarTab;->title:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "titleResource"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBarItemBase;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/roughike/bottombar/BottomBarTab;->id:I

    .line 55
    iput-object p1, p0, Lcom/roughike/bottombar/BottomBarTab;->icon:Landroid/graphics/drawable/Drawable;

    .line 56
    iput p2, p0, Lcom/roughike/bottombar/BottomBarTab;->titleResource:I

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "title"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBarItemBase;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/roughike/bottombar/BottomBarTab;->id:I

    .line 44
    iput-object p1, p0, Lcom/roughike/bottombar/BottomBarTab;->icon:Landroid/graphics/drawable/Drawable;

    .line 45
    iput-object p2, p0, Lcom/roughike/bottombar/BottomBarTab;->title:Ljava/lang/String;

    .line 46
    return-void
.end method

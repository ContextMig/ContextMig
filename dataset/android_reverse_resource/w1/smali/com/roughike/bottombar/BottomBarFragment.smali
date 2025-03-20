.class public Lcom/roughike/bottombar/BottomBarFragment;
.super Lcom/roughike/bottombar/BottomBarItemBase;
.source "BottomBarFragment.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private fragment:Landroid/app/Fragment;

.field private supportFragment:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;II)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "iconResource"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3, "titleResource"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBarItemBase;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/roughike/bottombar/BottomBarFragment;->fragment:Landroid/app/Fragment;

    .line 74
    iput p2, p0, Lcom/roughike/bottombar/BottomBarFragment;->iconResource:I

    .line 75
    iput p3, p0, Lcom/roughike/bottombar/BottomBarFragment;->titleResource:I

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;ILjava/lang/String;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "iconResource"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3, "title"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBarItemBase;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/roughike/bottombar/BottomBarFragment;->fragment:Landroid/app/Fragment;

    .line 38
    iput p2, p0, Lcom/roughike/bottombar/BottomBarFragment;->iconResource:I

    .line 39
    iput-object p3, p0, Lcom/roughike/bottombar/BottomBarFragment;->title:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;Landroid/graphics/drawable/Drawable;I)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "titleResource"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBarItemBase;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/roughike/bottombar/BottomBarFragment;->fragment:Landroid/app/Fragment;

    .line 62
    iput-object p2, p0, Lcom/roughike/bottombar/BottomBarFragment;->icon:Landroid/graphics/drawable/Drawable;

    .line 63
    iput p3, p0, Lcom/roughike/bottombar/BottomBarFragment;->titleResource:I

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "title"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBarItemBase;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/roughike/bottombar/BottomBarFragment;->fragment:Landroid/app/Fragment;

    .line 50
    iput-object p2, p0, Lcom/roughike/bottombar/BottomBarFragment;->icon:Landroid/graphics/drawable/Drawable;

    .line 51
    iput-object p3, p0, Lcom/roughike/bottombar/BottomBarFragment;->title:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;II)V
    .locals 0
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "iconResource"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3, "titleResource"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBarItemBase;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/roughike/bottombar/BottomBarFragment;->supportFragment:Landroid/support/v4/app/Fragment;

    .line 123
    iput p2, p0, Lcom/roughike/bottombar/BottomBarFragment;->iconResource:I

    .line 124
    iput p3, p0, Lcom/roughike/bottombar/BottomBarFragment;->titleResource:I

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V
    .locals 0
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "iconResource"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3, "title"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBarItemBase;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/roughike/bottombar/BottomBarFragment;->supportFragment:Landroid/support/v4/app/Fragment;

    .line 87
    iput p2, p0, Lcom/roughike/bottombar/BottomBarFragment;->iconResource:I

    .line 88
    iput-object p3, p0, Lcom/roughike/bottombar/BottomBarFragment;->title:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;Landroid/graphics/drawable/Drawable;I)V
    .locals 0
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "titleResource"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBarItemBase;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/roughike/bottombar/BottomBarFragment;->supportFragment:Landroid/support/v4/app/Fragment;

    .line 111
    iput-object p2, p0, Lcom/roughike/bottombar/BottomBarFragment;->icon:Landroid/graphics/drawable/Drawable;

    .line 112
    iput p3, p0, Lcom/roughike/bottombar/BottomBarFragment;->titleResource:I

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "title"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBarItemBase;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/roughike/bottombar/BottomBarFragment;->supportFragment:Landroid/support/v4/app/Fragment;

    .line 99
    iput-object p2, p0, Lcom/roughike/bottombar/BottomBarFragment;->icon:Landroid/graphics/drawable/Drawable;

    .line 100
    iput-object p3, p0, Lcom/roughike/bottombar/BottomBarFragment;->title:Ljava/lang/String;

    .line 101
    return-void
.end method


# virtual methods
.method protected getFragment()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarFragment;->fragment:Landroid/app/Fragment;

    return-object v0
.end method

.method protected getSupportFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarFragment;->supportFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

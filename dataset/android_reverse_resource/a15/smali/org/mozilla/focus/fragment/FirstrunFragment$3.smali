.class Lorg/mozilla/focus/fragment/FirstrunFragment$3;
.super Ljava/lang/Object;
.source "FirstrunFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/fragment/FirstrunFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/fragment/FirstrunFragment;

.field final synthetic val$adapter:Lorg/mozilla/focus/firstrun/FirstrunPagerAdapter;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/fragment/FirstrunFragment;Lorg/mozilla/focus/firstrun/FirstrunPagerAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mozilla/focus/fragment/FirstrunFragment;

    .prologue
    .line 88
    iput-object p1, p0, Lorg/mozilla/focus/fragment/FirstrunFragment$3;->this$0:Lorg/mozilla/focus/fragment/FirstrunFragment;

    iput-object p2, p0, Lorg/mozilla/focus/fragment/FirstrunFragment$3;->val$adapter:Lorg/mozilla/focus/firstrun/FirstrunPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 104
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 101
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 91
    iget-object v1, p0, Lorg/mozilla/focus/fragment/FirstrunFragment$3;->this$0:Lorg/mozilla/focus/fragment/FirstrunFragment;

    invoke-static {v1}, Lorg/mozilla/focus/fragment/FirstrunFragment;->access$000(Lorg/mozilla/focus/fragment/FirstrunFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 93
    .local v0, "drawable":Landroid/graphics/drawable/TransitionDrawable;
    iget-object v1, p0, Lorg/mozilla/focus/fragment/FirstrunFragment$3;->val$adapter:Lorg/mozilla/focus/firstrun/FirstrunPagerAdapter;

    invoke-virtual {v1}, Lorg/mozilla/focus/firstrun/FirstrunPagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_0

    .line 94
    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_0
.end method

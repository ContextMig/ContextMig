.class Lorg/mozilla/focus/fragment/FirstrunFragment$2;
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


# direct methods
.method constructor <init>(Lorg/mozilla/focus/fragment/FirstrunFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mozilla/focus/fragment/FirstrunFragment;

    .prologue
    .line 73
    iput-object p1, p0, Lorg/mozilla/focus/fragment/FirstrunFragment$2;->this$0:Lorg/mozilla/focus/fragment/FirstrunFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 83
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 80
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 76
    invoke-static {p1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->showFirstRunPageEvent(I)V

    .line 77
    return-void
.end method

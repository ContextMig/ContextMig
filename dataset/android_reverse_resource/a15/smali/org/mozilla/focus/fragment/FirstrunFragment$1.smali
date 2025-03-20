.class Lorg/mozilla/focus/fragment/FirstrunFragment$1;
.super Ljava/lang/Object;
.source "FirstrunFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$PageTransformer;


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
    .line 67
    iput-object p1, p0, Lorg/mozilla/focus/fragment/FirstrunFragment$1;->this$0:Lorg/mozilla/focus/fragment/FirstrunFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 3
    .param p1, "page"    # Landroid/view/View;
    .param p2, "position"    # F

    .prologue
    .line 70
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 71
    return-void
.end method

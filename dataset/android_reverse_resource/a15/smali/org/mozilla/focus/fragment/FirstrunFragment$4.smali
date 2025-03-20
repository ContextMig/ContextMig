.class Lorg/mozilla/focus/fragment/FirstrunFragment$4;
.super Ljava/lang/Object;
.source "FirstrunFragment.java"

# interfaces
.implements Lorg/mozilla/focus/utils/StatusBarUtils$StatusBarHeightListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/fragment/FirstrunFragment;->onResume()V
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
    .line 164
    iput-object p1, p0, Lorg/mozilla/focus/fragment/FirstrunFragment$4;->this$0:Lorg/mozilla/focus/fragment/FirstrunFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusBarHeightFetched(I)V
    .locals 2
    .param p1, "statusBarHeight"    # I

    .prologue
    const/4 v1, 0x0

    .line 167
    iget-object v0, p0, Lorg/mozilla/focus/fragment/FirstrunFragment$4;->this$0:Lorg/mozilla/focus/fragment/FirstrunFragment;

    invoke-static {v0}, Lorg/mozilla/focus/fragment/FirstrunFragment;->access$000(Lorg/mozilla/focus/fragment/FirstrunFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 168
    return-void
.end method

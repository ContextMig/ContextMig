.class final Lorg/mozilla/focus/utils/StatusBarUtils$1;
.super Ljava/lang/Object;
.source "StatusBarUtils.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/utils/StatusBarUtils;->getStatusBarHeight(Landroid/view/View;Lorg/mozilla/focus/utils/StatusBarUtils$StatusBarHeightListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lorg/mozilla/focus/utils/StatusBarUtils$StatusBarHeightListener;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/utils/StatusBarUtils$StatusBarHeightListener;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lorg/mozilla/focus/utils/StatusBarUtils$1;->val$listener:Lorg/mozilla/focus/utils/StatusBarUtils$StatusBarHeightListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 25
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    invoke-static {v0}, Lorg/mozilla/focus/utils/StatusBarUtils;->access$002(I)I

    .line 26
    iget-object v0, p0, Lorg/mozilla/focus/utils/StatusBarUtils$1;->val$listener:Lorg/mozilla/focus/utils/StatusBarUtils$StatusBarHeightListener;

    invoke-static {}, Lorg/mozilla/focus/utils/StatusBarUtils;->access$000()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/mozilla/focus/utils/StatusBarUtils$StatusBarHeightListener;->onStatusBarHeightFetched(I)V

    .line 27
    return-object p2
.end method

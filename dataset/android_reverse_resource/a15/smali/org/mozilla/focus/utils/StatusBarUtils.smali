.class public Lorg/mozilla/focus/utils/StatusBarUtils;
.super Ljava/lang/Object;
.source "StatusBarUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/focus/utils/StatusBarUtils$StatusBarHeightListener;
    }
.end annotation


# static fields
.field private static STATUS_BAR_HEIGHT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, -0x1

    sput v0, Lorg/mozilla/focus/utils/StatusBarUtils;->STATUS_BAR_HEIGHT:I

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 10
    sget v0, Lorg/mozilla/focus/utils/StatusBarUtils;->STATUS_BAR_HEIGHT:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 10
    sput p0, Lorg/mozilla/focus/utils/StatusBarUtils;->STATUS_BAR_HEIGHT:I

    return p0
.end method

.method public static getStatusBarHeight(Landroid/view/View;Lorg/mozilla/focus/utils/StatusBarUtils$StatusBarHeightListener;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "listener"    # Lorg/mozilla/focus/utils/StatusBarUtils$StatusBarHeightListener;

    .prologue
    .line 18
    sget v0, Lorg/mozilla/focus/utils/StatusBarUtils;->STATUS_BAR_HEIGHT:I

    if-lez v0, :cond_0

    .line 19
    sget v0, Lorg/mozilla/focus/utils/StatusBarUtils;->STATUS_BAR_HEIGHT:I

    invoke-interface {p1, v0}, Lorg/mozilla/focus/utils/StatusBarUtils$StatusBarHeightListener;->onStatusBarHeightFetched(I)V

    .line 22
    :cond_0
    new-instance v0, Lorg/mozilla/focus/utils/StatusBarUtils$1;

    invoke-direct {v0, p1}, Lorg/mozilla/focus/utils/StatusBarUtils$1;-><init>(Lorg/mozilla/focus/utils/StatusBarUtils$StatusBarHeightListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 30
    return-void
.end method

.class public abstract Lorg/mozilla/focus/utils/OneShotOnPreDrawListener;
.super Ljava/lang/Object;
.source "OneShotOnPreDrawListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/mozilla/focus/utils/OneShotOnPreDrawListener;->view:Landroid/view/View;

    .line 19
    return-void
.end method


# virtual methods
.method protected abstract onPreDraw(Landroid/view/View;)V
.end method

.method public final onPreDraw()Z
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lorg/mozilla/focus/utils/OneShotOnPreDrawListener;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 27
    iget-object v0, p0, Lorg/mozilla/focus/utils/OneShotOnPreDrawListener;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/utils/OneShotOnPreDrawListener;->onPreDraw(Landroid/view/View;)V

    .line 29
    const/4 v0, 0x1

    return v0
.end method

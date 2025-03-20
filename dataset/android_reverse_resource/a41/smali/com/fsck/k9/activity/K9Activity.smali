.class public abstract Lcom/fsck/k9/activity/K9Activity;
.super Landroid/app/Activity;
.source "K9Activity.java"

# interfaces
.implements Lcom/fsck/k9/activity/K9ActivityCommon$K9ActivityMagic;


# instance fields
.field private mBase:Lcom/fsck/k9/activity/K9ActivityCommon;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fsck/k9/activity/K9Activity;->mBase:Lcom/fsck/k9/activity/K9ActivityCommon;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/activity/K9ActivityCommon;->preDispatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-static {p0}, Lcom/fsck/k9/activity/K9ActivityCommon;->newInstance(Landroid/app/Activity;)Lcom/fsck/k9/activity/K9ActivityCommon;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/K9Activity;->mBase:Lcom/fsck/k9/activity/K9ActivityCommon;

    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    return-void
.end method

.method public setupGestureDetector(Lcom/fsck/k9/activity/misc/SwipeGestureDetector$OnSwipeGestureListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fsck/k9/activity/misc/SwipeGestureDetector$OnSwipeGestureListener;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fsck/k9/activity/K9Activity;->mBase:Lcom/fsck/k9/activity/K9ActivityCommon;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/activity/K9ActivityCommon;->setupGestureDetector(Lcom/fsck/k9/activity/misc/SwipeGestureDetector$OnSwipeGestureListener;)V

    .line 31
    return-void
.end method

.class public abstract Lcom/fsck/k9/activity/K9ListActivity;
.super Landroid/app/ListActivity;
.source "K9ListActivity.java"

# interfaces
.implements Lcom/fsck/k9/activity/K9ActivityCommon$K9ActivityMagic;


# instance fields
.field private mBase:Lcom/fsck/k9/activity/K9ActivityCommon;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/fsck/k9/activity/K9ListActivity;->mBase:Lcom/fsck/k9/activity/K9ActivityCommon;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/activity/K9ActivityCommon;->preDispatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 28
    invoke-super {p0, p1}, Landroid/app/ListActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-static {p0}, Lcom/fsck/k9/activity/K9ActivityCommon;->newInstance(Landroid/app/Activity;)Lcom/fsck/k9/activity/K9ActivityCommon;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/K9ListActivity;->mBase:Lcom/fsck/k9/activity/K9ActivityCommon;

    .line 22
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v4, 0x19

    const/16 v3, 0x18

    .line 44
    invoke-static {}, Lcom/fsck/k9/K9;->useVolumeKeysForListNavigationEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eq p1, v3, :cond_0

    if-ne p1, v4, :cond_5

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/activity/K9ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 50
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    .line 51
    .local v0, "currentPosition":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    invoke-virtual {v1}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 52
    :cond_1
    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 55
    :cond_2
    if-ne p1, v3, :cond_4

    if-lez v0, :cond_4

    .line 56
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 62
    :cond_3
    :goto_0
    const/4 v2, 0x1

    .line 65
    .end local v0    # "currentPosition":I
    .end local v1    # "listView":Landroid/widget/ListView;
    :goto_1
    return v2

    .line 57
    .restart local v0    # "currentPosition":I
    .restart local v1    # "listView":Landroid/widget/ListView;
    :cond_4
    if-ne p1, v4, :cond_3

    .line 58
    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 59
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 65
    .end local v0    # "currentPosition":I
    .end local v1    # "listView":Landroid/widget/ListView;
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 71
    invoke-static {}, Lcom/fsck/k9/K9;->useVolumeKeysForListNavigationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-ne p1, v0, :cond_1

    .line 74
    :cond_0
    const/4 v0, 0x1

    .line 77
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 34
    return-void
.end method

.method public setupGestureDetector(Lcom/fsck/k9/activity/misc/SwipeGestureDetector$OnSwipeGestureListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fsck/k9/activity/misc/SwipeGestureDetector$OnSwipeGestureListener;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fsck/k9/activity/K9ListActivity;->mBase:Lcom/fsck/k9/activity/K9ActivityCommon;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/activity/K9ActivityCommon;->setupGestureDetector(Lcom/fsck/k9/activity/misc/SwipeGestureDetector$OnSwipeGestureListener;)V

    .line 39
    return-void
.end method

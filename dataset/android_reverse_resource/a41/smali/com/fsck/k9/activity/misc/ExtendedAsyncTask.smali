.class public abstract Lcom/fsck/k9/activity/misc/ExtendedAsyncTask;
.super Landroid/os/AsyncTask;
.source "ExtendedAsyncTask.java"

# interfaces
.implements Lcom/fsck/k9/activity/misc/NonConfigurationInstance;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TParams;TProgress;TResult;>;",
        "Lcom/fsck/k9/activity/misc/NonConfigurationInstance;"
    }
.end annotation


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mContext:Landroid/content/Context;

.field protected mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 36
    .local p0, "this":Lcom/fsck/k9/activity/misc/ExtendedAsyncTask;, "Lcom/fsck/k9/activity/misc/ExtendedAsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/fsck/k9/activity/misc/ExtendedAsyncTask;->mActivity:Landroid/app/Activity;

    .line 38
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/misc/ExtendedAsyncTask;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method


# virtual methods
.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 109
    .local p0, "this":Lcom/fsck/k9/activity/misc/ExtendedAsyncTask;, "Lcom/fsck/k9/activity/misc/ExtendedAsyncTask<TParams;TProgress;TResult;>;"
    invoke-virtual {p0}, Lcom/fsck/k9/activity/misc/ExtendedAsyncTask;->showProgressDialog()V

    .line 110
    return-void
.end method

.method protected removeProgressDialog()V
    .locals 1

    .prologue
    .line 95
    .local p0, "this":Lcom/fsck/k9/activity/misc/ExtendedAsyncTask;, "Lcom/fsck/k9/activity/misc/ExtendedAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/fsck/k9/activity/misc/ExtendedAsyncTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/activity/misc/ExtendedAsyncTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 97
    return-void
.end method

.method public restore(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 54
    .local p0, "this":Lcom/fsck/k9/activity/misc/ExtendedAsyncTask;, "Lcom/fsck/k9/activity/misc/ExtendedAsyncTask<TParams;TProgress;TResult;>;"
    iput-object p1, p0, Lcom/fsck/k9/activity/misc/ExtendedAsyncTask;->mActivity:Landroid/app/Activity;

    .line 55
    invoke-virtual {p0}, Lcom/fsck/k9/activity/misc/ExtendedAsyncTask;->showProgressDialog()V

    .line 56
    return-void
.end method

.method public retain()Z
    .locals 2

    .prologue
    .line 74
    .local p0, "this":Lcom/fsck/k9/activity/misc/ExtendedAsyncTask;, "Lcom/fsck/k9/activity/misc/ExtendedAsyncTask<TParams;TProgress;TResult;>;"
    const/4 v0, 0x0

    .line 75
    .local v0, "retain":Z
    iget-object v1, p0, Lcom/fsck/k9/activity/misc/ExtendedAsyncTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/fsck/k9/activity/misc/ExtendedAsyncTask;->removeProgressDialog()V

    .line 77
    const/4 v0, 0x1

    .line 79
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fsck/k9/activity/misc/ExtendedAsyncTask;->mActivity:Landroid/app/Activity;

    .line 81
    return v0
.end method

.method protected abstract showProgressDialog()V
.end method

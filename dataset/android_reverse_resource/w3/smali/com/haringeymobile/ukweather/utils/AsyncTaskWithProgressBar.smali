.class public abstract Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar;
.super Landroid/os/AsyncTask;
.source "AsyncTaskWithProgressBar.java"


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
        "<TParams;TProgress;TResult;>;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private context:Landroid/content/Context;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x39ee636ac3e7f231L    # 1.1986089799933574E-29

    const-string v2, "com/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar"

    const/16 v3, 0x18

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar;->$jacocoInit()[Z

    move-result-object v0

    .line 15
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar;)Landroid/app/ProgressDialog;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar;->$jacocoInit()[Z

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar;->progressDialog:Landroid/app/ProgressDialog;

    const/16 v2, 0x17

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method protected onCancelled()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar;->$jacocoInit()[Z

    move-result-object v0

    .line 51
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    const/16 v1, 0xc

    aput-boolean v2, v0, v1

    .line 52
    iget-object v1, p0, Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xd

    aput-boolean v2, v0, v1

    .line 55
    :goto_0
    const/16 v1, 0x10

    aput-boolean v2, v0, v1

    return-void

    .line 52
    :cond_0
    const/16 v1, 0xe

    aput-boolean v2, v0, v1

    .line 53
    iget-object v1, p0, Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    const/16 v1, 0xf

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar;->$jacocoInit()[Z

    move-result-object v0

    .line 59
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const/16 v1, 0x11

    aput-boolean v2, v0, v1

    .line 60
    iget-object v1, p0, Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    const/16 v1, 0x12

    aput-boolean v2, v0, v1

    .line 63
    :goto_0
    const/16 v1, 0x16

    aput-boolean v2, v0, v1

    return-void

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x13

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x14

    aput-boolean v2, v0, v1

    .line 61
    iget-object v1, p0, Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    const/16 v1, 0x15

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 30
    iget-object v1, p0, Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar;->context:Landroid/content/Context;

    if-nez v1, :cond_0

    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    .line 47
    :goto_0
    const/16 v1, 0xb

    aput-boolean v4, v0, v1

    return-void

    .line 30
    :cond_0
    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    .line 31
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    .line 32
    iget-object v1, p0, Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060072

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    .line 34
    iget-object v1, p0, Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v1, 0x6

    aput-boolean v4, v0, v1

    .line 35
    iget-object v1, p0, Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    const/4 v1, 0x7

    aput-boolean v4, v0, v1

    .line 36
    iget-object v1, p0, Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const/16 v1, 0x8

    aput-boolean v4, v0, v1

    .line 37
    iget-object v1, p0, Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar$1;

    invoke-direct {v2, p0}, Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar$1;-><init>(Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    const/16 v1, 0x9

    aput-boolean v4, v0, v1

    .line 45
    iget-object v1, p0, Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    const/16 v1, 0xa

    aput-boolean v4, v0, v1

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    iput-object p1, p0, Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar;->context:Landroid/content/Context;

    .line 24
    aput-boolean v1, v0, v1

    return-object p0
.end method

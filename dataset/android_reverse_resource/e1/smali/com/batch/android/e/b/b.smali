.class public Lcom/batch/android/e/b/b;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/e/b/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/batch/android/e/c/c;",
        ">",
        "Landroid/support/v4/app/DialogFragment;",
        "Lcom/batch/android/e/b/d;"
    }
.end annotation


# static fields
.field protected static final a:Ljava/lang/String; = "messageModel"


# instance fields
.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/batch/android/e/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/batch/android/e/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/batch/android/e/b/b;->b:Ljava/lang/ref/WeakReference;

    .line 27
    iput-object v1, p0, Lcom/batch/android/e/b/b;->c:Lcom/batch/android/e/c/c;

    return-void
.end method


# virtual methods
.method protected a(Lcom/batch/android/BatchMessage;Lcom/batch/android/e/c/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/BatchMessage;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 32
    const-string v1, "messageModel"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 33
    invoke-virtual {p1, v0}, Lcom/batch/android/BatchMessage;->writeToBundle(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0, v0}, Lcom/batch/android/e/b/b;->setArguments(Landroid/os/Bundle;)V

    .line 35
    return-void
.end method

.method public a(Lcom/batch/android/e/b/c;)V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/batch/android/e/b/b;->b:Ljava/lang/ref/WeakReference;

    .line 68
    return-void
.end method

.method protected b()Lcom/batch/android/BatchMessage;
    .locals 2

    .prologue
    .line 41
    :try_start_0
    invoke-virtual {p0}, Lcom/batch/android/e/b/b;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/BatchMessage;->getMessageForBundle(Landroid/os/Bundle;)Lcom/batch/android/BatchMessage;
    :try_end_0
    .catch Lcom/batch/android/BatchPushPayload$ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    .line 43
    :catch_0
    move-exception v0

    .line 45
    const-string v1, "Error while reading payload message from fragment arguments"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c()Lcom/batch/android/e/c/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/batch/android/e/b/b;->c:Lcom/batch/android/e/c/c;

    if-nez v0, :cond_0

    .line 58
    :try_start_0
    invoke-virtual {p0}, Lcom/batch/android/e/b/b;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "messageModel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/batch/android/e/c/c;

    iput-object v0, p0, Lcom/batch/android/e/b/b;->c:Lcom/batch/android/e/c/c;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/batch/android/e/b/b;->c:Lcom/batch/android/e/c/c;

    return-object v0

    .line 59
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 102
    .local p0, "this":Lcom/batch/android/e/b/b;, "Lcom/batch/android/e/b/b<TT;>;"
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 103
    invoke-static {}, Lcom/batch/android/f/d;->a()Lcom/batch/android/f/d;

    move-result-object v0

    iget-object v1, p0, Lcom/batch/android/e/b/b;->c:Lcom/batch/android/e/c/c;

    invoke-virtual {v0, v1}, Lcom/batch/android/f/d;->c(Lcom/batch/android/e/c/c;)V

    .line 104
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 89
    .local p0, "this":Lcom/batch/android/e/b/b;, "Lcom/batch/android/e/b/b<TT;>;"
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 91
    iget-object v0, p0, Lcom/batch/android/e/b/b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/e/b/c;

    .line 92
    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v0, p0}, Lcom/batch/android/e/b/c;->onDialogDismiss(Landroid/support/v4/app/DialogFragment;)V

    .line 96
    :cond_0
    invoke-static {}, Lcom/batch/android/f/d;->a()Lcom/batch/android/f/d;

    move-result-object v0

    iget-object v1, p0, Lcom/batch/android/e/b/b;->c:Lcom/batch/android/e/c/c;

    invoke-virtual {v0, v1}, Lcom/batch/android/f/d;->b(Lcom/batch/android/e/c/c;)V

    .line 97
    return-void
.end method

.method public show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I
    .locals 2
    .param p1, "transaction"    # Landroid/support/v4/app/FragmentTransaction;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 75
    .local p0, "this":Lcom/batch/android/e/b/b;, "Lcom/batch/android/e/b/b<TT;>;"
    invoke-static {}, Lcom/batch/android/f/d;->a()Lcom/batch/android/f/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/batch/android/e/b/b;->c()Lcom/batch/android/e/c/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/batch/android/f/d;->a(Lcom/batch/android/e/c/c;)V

    .line 76
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "manager"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 82
    .local p0, "this":Lcom/batch/android/e/b/b;, "Lcom/batch/android/e/b/b<TT;>;"
    invoke-static {}, Lcom/batch/android/f/d;->a()Lcom/batch/android/f/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/batch/android/e/b/b;->c()Lcom/batch/android/e/c/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/batch/android/f/d;->a(Lcom/batch/android/e/c/c;)V

    .line 83
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 84
    return-void
.end method

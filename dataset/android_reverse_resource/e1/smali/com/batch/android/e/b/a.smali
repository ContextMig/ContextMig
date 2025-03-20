.class public Lcom/batch/android/e/b/a;
.super Lcom/batch/android/e/b/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/batch/android/e/b/b",
        "<",
        "Lcom/batch/android/e/c/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/batch/android/e/b/b;-><init>()V

    .line 32
    return-void
.end method

.method public static a(Lcom/batch/android/BatchMessage;Lcom/batch/android/e/c/a;)Lcom/batch/android/e/b/a;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/batch/android/e/b/a;

    invoke-direct {v0}, Lcom/batch/android/e/b/a;-><init>()V

    .line 25
    invoke-virtual {v0, p0, p1}, Lcom/batch/android/e/b/a;->a(Lcom/batch/android/BatchMessage;Lcom/batch/android/e/c/c;)V

    .line 26
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/batch/android/e/b/a;->c()Lcom/batch/android/e/c/c;

    move-result-object v0

    check-cast v0, Lcom/batch/android/e/c/a;

    .line 39
    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x0

    const-string v1, "Unknown error while creating alert fragment. Please report this to Batch\'s support. (code -3)"

    invoke-static {v0, v1}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    .line 42
    invoke-super {p0, p1}, Lcom/batch/android/e/b/b;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    .line 45
    :cond_0
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/batch/android/e/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 48
    iget-object v2, v0, Lcom/batch/android/e/c/a;->a:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 50
    iget-object v2, v0, Lcom/batch/android/e/c/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 52
    :cond_1
    iget-object v2, v0, Lcom/batch/android/e/c/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 54
    iget-object v2, v0, Lcom/batch/android/e/c/a;->b:Ljava/lang/String;

    new-instance v3, Lcom/batch/android/e/b/a$1;

    invoke-direct {v3, p0, v0}, Lcom/batch/android/e/b/a$1;-><init>(Lcom/batch/android/e/b/a;Lcom/batch/android/e/c/a;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 63
    iget-object v2, v0, Lcom/batch/android/e/c/a;->c:Lcom/batch/android/e/c/b;

    if-eqz v2, :cond_2

    .line 65
    iget-object v2, v0, Lcom/batch/android/e/c/a;->c:Lcom/batch/android/e/c/b;

    iget-object v2, v2, Lcom/batch/android/e/c/b;->a:Ljava/lang/String;

    new-instance v3, Lcom/batch/android/e/b/a$2;

    invoke-direct {v3, p0, v0}, Lcom/batch/android/e/b/a$2;-><init>(Lcom/batch/android/e/b/a;Lcom/batch/android/e/c/a;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 76
    :cond_2
    invoke-virtual {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 77
    invoke-virtual {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 79
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    goto :goto_0
.end method
